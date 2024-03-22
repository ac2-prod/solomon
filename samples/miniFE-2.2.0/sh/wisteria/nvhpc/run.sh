#!/bin/bash
#PJM -L rscgrp=share-short
#PJM -L gpu=1
#PJM -L elapse=0:15:00
#PJM -g jh220036a
#PJM -s

# load modules
module purge
module load nvidia/23.11
module list

# set environmental variables for OpenMP
# OMP_OPT_ENV="env OMP_DISPLAY_ENV=verbose OMP_PLACES=cores OMP_PROC_BIND=close" # for GCC or LLVM

# job execution
cd $PJM_O_WORKDIR

for NX in 128 192 256 384 512
do
	numactl --localalloc ./miniFE.x nx=${NX} verify_solution=1
	if [ $? != 0 ] ; then \
		echo "test FAILED, verify_solution detected unacceptable error."; \
	fi
done

exit 0
