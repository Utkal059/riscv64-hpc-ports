# riscv64-hpc-ports

Cross-compilation of HPC numerical libraries for RISC-V (riscv64) on x86_64 WSL2.

## Libraries Ported

| Library | Version | Status |
|---|---|---|
| SPOOLES | 2.2 | ELF64 RISC-V verified |
| OpenBLAS | latest | ELF64 RISC-V verified |
| ARPACK-ng | 3.9.1 | ELF64 RISC-V verified |
| SuperLU | latest | ELF64 RISC-V verified |

## Toolchain

- Host: x86_64 WSL2 (Ubuntu)
- Cross-compiler: riscv64-linux-gnu-gcc / gfortran
- Target: riscv64-linux-gnu, ELF64

## Verification

    riscv64-linux-gnu-objdump -f evidence/libarpack.a | grep architecture
    # architecture: riscv:rv64

## Why

Bare-metal cross-compilation for RISC-V HPC targets. Useful for embedded HPC,
RISC-V server deployments, and toolchain validation pipelines.
