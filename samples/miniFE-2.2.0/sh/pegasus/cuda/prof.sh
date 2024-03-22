#!/bin/bash
#PBS -q gpu
#PBS -l elapstim_req=0:30:00
#PBS -b 1
#PBS -A CSPP

# load modules
module purge
module load cuda
module list

# job execution
cd $PBS_O_WORKDIR
nsys profile --stats=true numactl --localalloc ./miniFE.x nx=256

exit 0
