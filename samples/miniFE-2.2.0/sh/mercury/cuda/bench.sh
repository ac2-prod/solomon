#!/bin/bash
#SBATCH -J bench
#SBATCH -p share-batch
#SBATCH --gres=gpu:1
#SBATCH --time=24:00:00

# load modules
module purge
module load cuda
module list

# set environmental variables for OpenMP
# OMP_OPT_ENV="env OMP_DISPLAY_ENV=verbose OMP_PLACES=cores OMP_PROC_BIND=close" # for GCC or LLVM

# job execution
cd $SLURM_SUBMIT_DIR

NUM_ITERATE=100
for (( COUNTER = 0; COUNTER < ${NUM_ITERATE} ; COUNTER += 1 ))
do
	for NX in 128 192 256 384
	do
		numactl --localalloc ./miniFE.x nx=${NX}
	done
done

exit 0
