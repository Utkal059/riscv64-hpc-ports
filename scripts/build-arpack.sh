#!/bin/bash
set -e
mkdir -p ~/riscv64-hpc-ports/arpack-ng/build
cd ~/riscv64-hpc-ports/arpack-ng/build
cmake .. \
  -DCMAKE_TOOLCHAIN_FILE=$HOME/riscv64-hpc-ports/riscv64-toolchain.cmake \
  -DBLAS_LIBRARIES=$HOME/riscv64-hpc-ports/openblas-install/lib/libopenblas.a \
  -DLAPACK_LIBRARIES=$HOME/riscv64-hpc-ports/openblas-install/lib/libopenblas.a \
  -DCMAKE_INSTALL_PREFIX=$HOME/riscv64-hpc-ports/arpack-install \
  -DBUILD_SHARED_LIBS=OFF -DMPI=OFF
make -j$(nproc) && make install
echo "ARPACK install complete."
