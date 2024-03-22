#!/bin/bash
#PJM -L rscgrp=share-short
#PJM -L gpu=1
#PJM -L elapse=0:15:00
#PJM -g jh220036a

# load modules
module purge
module load nvidia
module list

# job execution
cd $PJM_O_WORKDIR
nsys profile --stats=true numactl --localalloc ./miniFE.x nx=256

exit 0
