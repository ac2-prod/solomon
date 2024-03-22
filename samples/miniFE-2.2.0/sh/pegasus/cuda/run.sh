#!/bin/bash
#PBS -q gpu
#PBS -l elapstim_req=0:30:00
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

for NX in 128 192 256 384 512
do
	numactl --localalloc ./miniFE.x nx=${NX} verify_solution=1
	if [ $? != 0 ] ; then \
		echo "test FAILED, verify_solution detected unacceptable error."; \
	fi
done

exit 0
