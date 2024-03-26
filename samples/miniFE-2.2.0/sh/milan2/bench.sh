#!/usr/bin/env bash
##set -o errexit
#set -o nounset
#set -o pipefail

# load modules
module purge
module load rocm
module list
amdclang++ --version

# set environmental variables for OpenMP
# OMP_OPT_ENV="env OMP_DISPLAY_ENV=verbose OMP_PLACES=cores OMP_PROC_BIND=close" # for GCC or LLVM

GPU_ID=2
NUMA_NODE=`LANG=C rocm-smi -d $GPU_ID --showtoponuma | sed -n 's/^GPU\['$GPU_ID'\]\t*//p' | sed -n 's/: (Topology) Numa Node: *//p'`

# job execution
NUM_ITERATE=100
for (( COUNTER = 0; COUNTER < ${NUM_ITERATE} ; COUNTER += 1 ))
do
	for NX in 128 192 256 384
	do
		ROCR_VISIBLE_DEVICES=$GPU_ID numactl --cpunodebind=$NUMA_NODE --localalloc ./miniFE.x nx=${NX}
	done
done

exit 0
