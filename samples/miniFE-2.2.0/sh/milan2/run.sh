#!/usr/bin/env bash
##set -o errexit
#set -o nounset
#set -o pipefail

# load modules
module purge
module load rocm
module list

# set environmental variables for OpenMP
# OMP_OPT_ENV="env OMP_DISPLAY_ENV=verbose OMP_PLACES=cores OMP_PROC_BIND=close" # for GCC or LLVM

GPU_ID=2
NUMA_NODE=`LANG=C rocm-smi -d $GPU_ID --showtoponuma | sed -n 's/^GPU\['$GPU_ID'\]\t*//p' | sed -n 's/: (Topology) Numa Node: *//p'`

# job execution
for NX in 128 192 256 384 512
do
	ROCR_VISIBLE_DEVICES=$GPU_ID numactl --cpunodebind=$NUMA_NODE --localalloc ./miniFE.x nx=${NX} verify_solution=1
	if [ $? != 0 ] ; then \
		echo "test FAILED, verify_solution detected unacceptable error."; \
	fi
done

exit 0
