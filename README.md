# riscv64-hpc-ports

Cross-compilation and QEMU validation environment for the LFX Mentorship project: 
"Broadening the RISC-V High Precision Code Base and Reach" (clusterchallenge / MIT, Kurt Keville).

## Toolchain
- `gcc-riscv64-linux-gnu` — cross-compiler  
- `qemu-riscv64-static` — user-mode emulation for runtime validation  
- Host: Ubuntu (WSL2)

## Status

| Code      | Cross-compile | qemu-riscv64 link+run | .deb |
|-----------|---------------|----------------------|------|
| baseline (libm sqrt) | ✅ | ✅ | — |
| SPOOLES 2.2 | ✅ | ✅ | 🔄 next |

## Build notes

### SPOOLES 2.2
- Modern GCC requires `-fcommon` for the legacy global-variable layout
- All warnings are pre-existing format-specifier issues in upstream code (1990s codebase); no functional impact
- Cross-compiled with `CC=riscv64-linux-gnu-gcc CFLAGS="-fcommon -O2"`
- Validated by linking `test_spooles.c` against `spooles.a` and executing under `qemu-riscv64-static`

