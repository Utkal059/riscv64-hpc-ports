#!/bin/bash
set -e
mkdir -p ~/riscv64-hpc-ports/superlu/build
cd ~/riscv64-hpc-ports/superlu/build
cmake .. \
  -DCMAKE_TOOLCHAIN_FILE=$HOME/riscv64-hpc-ports/riscv64-toolchain.cmake \
  -DBLAS_LIBRARY=$HOME/riscv64-hpc-ports/openblas-install/lib/libopenblas.a \
  -DCMAKE_INSTALL_PREFIX=$HOME/riscv64-hpc-ports/superlu-install \
  -DBUILD_SHARED_LIBS=OFF -Denable_tests=ON \
  -DCMAKE_C_FLAGS="-march=rv64imafdc -mabi=lp64d"
make -j$(nproc) && make install
echo "SuperLU install complete."
