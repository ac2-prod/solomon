#-----------------------------------------------------------------------
# This file compiles for OpenMP and MPI hybrid operations using the GNU
# compile chain.

MINIFE_TYPES =  \
        -DMINIFE_SCALAR=double   \
        -DMINIFE_LOCAL_ORDINAL=int      \
        -DMINIFE_GLOBAL_ORDINAL=int \
	-DMINIFE_RESTRICT=__restrict__

MINIFE_MATRIX_TYPE = -DMINIFE_CSR_MATRIX
# MINIFE_MATRIX_TYPE = -DMINIFE_ELL_MATRIX # default was CSR, but changed to ELL because CUDA uses ELL version (compilation of ELL version failed)

#-----------------------------------------------------------------------

CFLAGS = -O3 -mp=gpu -gpu=cc90 -Minfo=accel,opt,mp

# CFLAGS = -O3 -mp=gpu -gpu=cc80 -Minfo=accel,opt,mp
# CFLAGS = -fast -mp=gpu -gpu=cc80 -Minfo=accel,opt,mp # -fast = -O2 -Munroll=c:1 -Mlre -Mautoinline

# CFLAGS = -O3 -ffp-contract=fast
# CFLAGS += -target x86_64-pc-linux-gnu -fopenmp -fopenmp-targets=amdgcn-amd-amdhsa -Xopenmp-target=amdgcn-amd-amdhsa -march=gfx908
# # CFLAGS += -target x86_64-pc-linux-gnu -fopenmp -fopenmp-targets=amdgcn-amd-amdhsa -Xopenmp-target=amdgcn-amd-amdhsa -march=gfx90a


# CFLAGS = -v -O3 -fopenmp -fopenmp-targets=nvptx64-nvidia-cuda \
# 	--cuda-path=$(CUDA_ROOT) -ffp-contract=fast \
# 	-mcpu=power8 -mtune=power8 \
# 	-fslp-vectorize-aggressive \
# 	-Rpass=loop-vectorize -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize \
# 	-Xcuda-ptxas -maxrregcount=32 #\
#	-S -emit-llvm
#\
#	-S -emit-llvm
#-mllvm -regalloc=pbqp
#CFLAGS = -qreport -O3 -fopenmp -mcpu=power8 -mtune=power8

CXXFLAGS = $(CFLAGS)

CPPFLAGS = -I. -I../utils -I../fem $(MINIFE_TYPES) \
	$(MINIFE_MATRIX_TYPE) #\
#	-DHAVE_MPI -DMPICH_IGNORE_CXX_SEEK \
#	-DMINIFE_REPORT_RUSAGE

LDFLAGS=$(CFLAGS)
LIBS=

# The MPICH_IGNORE_CXX_SEEK macro is required for some mpich versions,
# such as the one on my cygwin machine.

#CXX=mpiicpc
#CC=mpiicc

#CXX=g++
#CC=g++

#CXX=icpc
#CC=icc

#CXX=clang++
#CC=clang

# CXX=amdclang++
# CC=amdclang

CXX=nvc++
CC=nvc

#CXX=xlC
#CC=xlc

include make_targets
