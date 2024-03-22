#!/bin/bash
#PBS -q gpu
#PBS -l elapstim_req=03:00:00
#PBS -b 1
#PBS -A CSPP

# load modules
module purge
module load cuda
module list

# set environmental variables for OpenMP
# OMP_OPT_ENV="env OMP_DISPLAY_ENV=verbose OMP_PLACES=cores OMP_PROC_BIND=close" # for GCC or LLVM

# job execution
cd $PBS_O_WORKDIR

NUM_ITERATE=10
for (( COUNTER = 0; COUNTER < ${NUM_ITERATE} ; COUNTER += 1 ))
do
	for NX in 128 192 256 384
	do
		numactl --localalloc ./miniFE.x nx=${NX}
	done
done

exit 0
