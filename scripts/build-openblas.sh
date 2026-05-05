#!/bin/bash
set -e
cd ~/riscv64-hpc-ports/OpenBLAS
make clean
make TARGET=RISCV64_GENERIC HOSTCC=gcc CC=riscv64-linux-gnu-gcc FC=riscv64-linux-gnu-gfortran NO_SHARED=1 USE_THREAD=0 -j$(nproc)
make PREFIX=$HOME/riscv64-hpc-ports/openblas-install NO_SHARED=1 install
echo "OpenBLAS install complete."
