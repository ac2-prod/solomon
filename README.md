# Solomon: Simple Off-LOading Macros Orchestrating multiple Notations

## Summary

* Preprocessor macros to switch OpenACC and OpenMP target directives
* Released under the MIT license, see LICENSE.txt
* Copyright (c) 2024 Yohei MIKI

## How to use

### How to insert directives

### How to add clauses and/or lists

## How to compile

## Samples

### nbody: sample of compute-intensive application

* Collisionless $N$-body simulation based on direct method

### [miniFE](https://github.com/Mantevo/miniFE): sample of memory-intensive application

* An proxy application for unstructured implicit finite element codes
* original implementation is available at https://github.com/Mantevo/miniFE
* differences between the original implementation
  * cuda/
    * `MINFE_MATRIX_TYPE` is set as `-DMINFE_CSR_MATRIX` instead of `-DMINFE_ELL_MATRIX` to adopt the same scheme with the OpenMP target implementations
  * kokkos: as is
  * openmp45: as is
  * openmp45-opt/
    * use `-Ofast` instead of `-O3`
  * solomon: forked example from openmp45-opt
    * `#pragma omp target` directives are replaced into corresponding directives in Solomon

## memo

* Unified Schemes for directive based offloading: Urry & Padovani (1995, PASP, 107, 803: Unified Schemes for Radio-Loud Active Galactic Nuclei)
