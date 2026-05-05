# RISC-V HPC Ports

Cross-compiled HPC math libraries for RISC-V (riscv64) architecture on Ubuntu 24.04 (x86_64 host).

## Stack

| Library     | Version       | Status   | Verified via QEMU |
|-------------|---------------|----------|-------------------|
| OpenBLAS    | 0.3.33-dev    | ✅ Built | ✅ ELF RISC-V     |
| ARPACK-NG   | latest main   | ✅ Built | ✅ ELF RISC-V     |
| SuperLU     | latest main   | ✅ Built | ✅ 1154 tests pass|

## Toolchain

- Host: x86_64 Ubuntu 24.04
- Target: riscv64-linux-gnu
- C Compiler: riscv64-linux-gnu-gcc 13.3.0
- Fortran: riscv64-linux-gnu-gfortran 13.3.0
- ABI: lp64d (double-float)
- ISA: rv64imafdc

## Key Build Flags
