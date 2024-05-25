#!/usr/bin/env bash
##set -o errexit
#set -o nounset
#set -o pipefail

# load modules
module purge
module load cuda
module list
nvcc --version

# set environmental variables for OpenMP
# OMP_OPT_ENV="env OMP_DISPLAY_ENV=verbose OMP_PLACES=cores OMP_PROC_BIND=close" # for GCC or LLVM

GPU_ID=0
BUS_ID=`nvidia-smi --format=csv,noheader --query-gpu=gpu_bus_id -i $GPU_ID | awk -F ":" '{print "0000:" $2 ":" $3}' | tr '[:upper:]' '[:lower:]'`
NUMA_NODE=`cat /sys/bus/pci/devices/$BUS_ID/numa_node`

# job execution
NUM_ITERATE=100
for (( COUNTER = 0; COUNTER < ${NUM_ITERATE} ; COUNTER += 1 ))
do
	for NX in 128 192 256 384
	do
		CUDA_VISIBLE_DEVICES=$GPU_ID numactl --cpunodebind=$NUMA_NODE --localalloc ./miniFE.x nx=${NX}
	done
done

exit 0
