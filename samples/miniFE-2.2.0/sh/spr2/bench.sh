#!/usr/bin/env bash
##set -o errexit
#set -o nounset
#set -o pipefail

# load modules
module purge
module load intel
module list
icpx --version

# set environmental variables for OpenMP
# OMP_OPT_ENV="env OMP_DISPLAY_ENV=verbose OMP_PLACES=cores OMP_PROC_BIND=close" # for GCC or LLVM

NUMA_NODE=0

# job execution
NUM_ITERATE=100
for (( COUNTER = 0; COUNTER < ${NUM_ITERATE} ; COUNTER += 1 ))
do
	for NX in 128 192 256 384
	do
		numactl --cpunodebind=$NUMA_NODE --localalloc ./miniFE.x nx=${NX}
	done
done

exit 0
