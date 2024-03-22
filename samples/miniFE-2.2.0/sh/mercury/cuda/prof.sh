#!/bin/bash
#SBATCH -J prof
#SBATCH -p share-batch
#SBATCH --gres=gpu:1
#SBATCH --time=00:15:00

# load modules
module purge
module load cuda
module list

# job execution
cd $SLURM_SUBMIT_DIR
nsys profile --stats=true numactl --localalloc ./miniFE.x nx=256

exit 0
