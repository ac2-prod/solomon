#!/bin/bash
#SBATCH -J prof
#SBATCH -p share-batch
#SBATCH --gres=gpu:1
#SBATCH --time=00:15:00

# load modules
module purge
module load nvidia
module load cuda
module list

# set environmental variables for OpenMP
# OMP_OPT_ENV="env OMP_DISPLAY_ENV=verbose OMP_PLACES=cores OMP_PROC_BIND=close" # for GCC or LLVM

# GPU_ID=0
# BUS_ID=`nvidia-smi --format=csv,noheader --query-gpu=gpu_bus_id -i $GPU_ID | awk -F ":" '{print "0000:" $2 ":" $3}' | tr '[:upper:]' '[:lower:]'`
# NUMA_NODE=`cat /sys/bus/pci/devices/$BUS_ID/numa_node`

# job execution
cd $SLURM_SUBMIT_DIR
nsys profile --stats=true numactl --localalloc ./miniFE.x nx=256

exit 0
