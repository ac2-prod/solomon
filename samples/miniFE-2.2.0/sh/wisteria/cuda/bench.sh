#!/bin/bash
#PJM -L rscgrp=share-short
#PJM -L gpu=1
#PJM -L elapse=01:30:00
#PJM -g jh220036a
#PJM -s

# load modules
module purge
module load cuda/12.2
module list

# set environmental variables for OpenMP
# OMP_OPT_ENV="env OMP_DISPLAY_ENV=verbose OMP_PLACES=cores OMP_PROC_BIND=close" # for GCC or LLVM

# job execution
cd $PJM_O_WORKDIR

NUM_ITERATE=100
for (( COUNTER = 0; COUNTER < ${NUM_ITERATE} ; COUNTER += 1 ))
do
	for NX in 128 192 256 384
	do
		numactl --localalloc ./miniFE.x nx=${NX}
	done
done

exit 0
