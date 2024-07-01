#!/usr/bin/env bash
# set -o errexit
# set -o nounset
# set -o pipefail

USE_NVHPC=1
USE_AMDCLANG=0
USE_ICPX=0
USE_ACPP=0
if [ $(($USE_NVHPC + $USE_AMDCLANG + $USE_ICPX + $USE_ACPP)) != 1 ]; then
	echo "Only one compiler can be activated: USE_NVHPC, USE_AMDCLANG, USE_ICPX, and USE_ACPP"
	exit 1
fi
NVIDIA_GPU=1
AMD_GPU=0
INTEL_GPU=0
if [ $(($NVIDIA_GPU + $AMD_GPU + $INTEL_GPU)) != 1 ]; then
	echo "Only one vendor can be activated: NVIDIA, AMD, and Intel"
	exit 1
fi

GPU_ID=0

# OpenMP target: loop/distribute, w/ or w/o dedicated options
MIN_MODEL_ID=0
MAX_MODEL_ID=3
MODEL_ID_LIST=(`seq $MIN_MODEL_ID $MAX_MODEL_ID`)

# clear modules
. /usr/share/Modules/init/bash
module purge
hostname

# recipe for NVIDIA GPU
if [ $NVIDIA_GPU == 1 ]; then
	module load cuda
	nvcc --version
	VENDER=nvidia
	# ARCH=80
	ARCH=90
fi

# recipe for AMD GPU
if [ $AMD_GPU == 1 ]; then
	module load rocm
	hipcc --version
	VENDER=amd
	# ARCH=gfx908
	GPU_ID=2
	ARCH=gfx90a
fi

# recipe for Intel GPU
if [ $INTEL_GPU == 1 ]; then
	VENDER=intel
	ARCH=pvc
fi

# recipe for NVIDIA HPC SDK
if [ $USE_NVHPC == 1 ]; then
	COMPILER=nvhpc
	module purge
	module load nvhpc
	nvc++ --version
	MODEL_ID_LIST+=(`seq $(($MAX_MODEL_ID + 1)) 7`) # OpenACC: kernels/parallel, w/ or w/o dedicated options
fi

# recipe for ROCm
if [ $USE_AMDCLANG == 1 ]; then
	COMPILER=amdclang
	module load rocm
	amdclang++ --version
fi

# recipe for Intel oneAPI
if [ $USE_ICPX == 1 ]; then
	COMPILER=icpx
	module load intel
	icpx --version
fi

module load boost

# NUMA configuration
if [ $VENDER == amd ]; then
	export ROCR_VISIBLE_DEVICES=$GPU_ID
	NUMA_NODE=`LANG=C rocm-smi -d $GPU_ID --showtoponuma | sed -n 's/^GPU\['$GPU_ID'\]\t*//p' | sed -n 's/: (Topology) Numa Node: *//p'`
fi
if [ $VENDER == nvidia ]; then
	export CUDA_VISIBLE_DEVICES=$GPU_ID
	BUS_ID=`nvidia-smi --format=csv,noheader --query-gpu=gpu_bus_id -i $GPU_ID | awk -F ":" '{print "0000:" $2 ":" $3}' | tr '[:upper:]' '[:lower:]'`
	NUMA_NODE=`cat /sys/bus/pci/devices/$BUS_ID/numa_node`
fi
if [ $VENDER == intel ]; then
        # tentative treatment for spr2
        NUMA_NODE=0
fi
if [ "${NUMA_NODE}" == "" ]; then
	AVAILABLE_NUMA_NODE=`LANG=C numactl --show | sed -n 's/^nodebind: *//p'`
	NUMA_NODE=${AVAILABLE_NUMA_NODE[0]}
fi

TARGET=${COMPILER}_${VENDER}
module list

DUMP=verify
mkdir -p "${DUMP}"

for MODEL_ID in ${MODEL_ID_LIST[@]}
do
	USE_OPENACC=0
	USE_ACC_PARALLEL=0
	USE_OMP_DISTRIBUTE=0
	USE_FAST_MATH=0
	if [ $(( $MODEL_ID % 2 )) -eq 1 ]; then
		USE_FAST_MATH=1
	fi
	if [ $MODEL_ID -ge 4 ]; then
		USE_OPENACC=1
	fi
	if [ $MODEL_ID -eq 2 ] || [ $MODEL_ID -eq 3 ] ; then
		USE_OMP_DISTRIBUTE=1
	fi
	if [ $MODEL_ID -eq 6 ] || [ $MODEL_ID -eq 7 ] ; then
		USE_ACC_PARALLEL=1
	fi

	if [ $USE_NVHPC == 1 ]; then
		if [ $MODEL_ID -eq 0 ] ; then
			THREADS=128
		fi
		if [ $MODEL_ID -eq 1 ] ; then
			THREADS=128
		fi
		if [ $MODEL_ID -eq 2 ] ; then
			THREADS=128
		fi
		if [ $MODEL_ID -eq 3 ] ; then
			THREADS=256
		fi
		if [ $MODEL_ID -eq 4 ] ; then
			THREADS=64
		fi
		if [ $MODEL_ID -eq 5 ] ; then
			THREADS=64
		fi
		if [ $MODEL_ID -eq 6 ] ; then
			THREADS=128
		fi
		if [ $MODEL_ID -eq 7 ] ; then
			THREADS=128
		fi
	fi

	if [ $USE_AMDCLANG == 1 ]; then
		if [ $MODEL_ID -eq 0 ] ; then
			THREADS=256
		fi
		if [ $MODEL_ID -eq 1 ] ; then
			THREADS=256
		fi
		if [ $MODEL_ID -eq 2 ] ; then
			THREADS=64
		fi
		if [ $MODEL_ID -eq 3 ] ; then
			THREADS=64
		fi
	fi

	if [ $USE_ICPX == 1 ]; then
		if [ $MODEL_ID -eq 0 ] ; then
			THREADS=256
		fi
		if [ $MODEL_ID -eq 1 ] ; then
			THREADS=32
		fi
		if [ $MODEL_ID -eq 2 ] ; then
			THREADS=512
		fi
		if [ $MODEL_ID -eq 3 ] ; then
			THREADS=32
		fi
	fi

	make dir
	make clean
	make all NVHPC=$USE_NVHPC AMDCLANG=$USE_AMDCLANG ICPX=$USE_ICPX ACPP=$USE_ACPP USE_OPENACC=$USE_OPENACC USE_ACC_PARALLEL=$USE_ACC_PARALLEL USE_OMP_DISTRIBUTE=$USE_OMP_DISTRIBUTE USE_FAST_MATH=$USE_FAST_MATH MODEL_ID=${MODEL_ID} NUM_THREADS=$THREADS GPU_ARCH=${ARCH} BENCHMARK=0
	APPEND=${COMPILER}_${ARCH}_model${MODEL_ID}_thrd${THREADS}
	for TAG in nbody acc omp
	do
		BIN=bin/${TAG}_pragma
		EXEC=${BIN}_${APPEND}
		mv ${BIN} $EXEC
		if [ -e $EXEC ]; then
			mkdir -p log dat fig
			COMMAND="numactl --cpunodebind=$NUMA_NODE --localalloc $EXEC"
			echo ${COMMAND}
			eval ${COMMAND}

			gnuplot plt/error.gp
			gnuplot plt/virial.gp
			gnuplot plt/map.gp
			mkdir -p ${DUMP}/model${MODEL_ID}/${TAG}
			mv --backup=numbered log dat fig ${DUMP}/model${MODEL_ID}/${TAG}
		fi
	done
	mv --backup=numbered bin ${DUMP}/model${MODEL_ID}
done

HOST=`hostname --short`
DEST=${HOST}_${TARGET}_${ARCH}
mkdir -p "${DEST}"
mv --backup=numbered ${DUMP} ${DEST}

exit 0
