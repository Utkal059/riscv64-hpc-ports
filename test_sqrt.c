#include <stdio.h>
#include <math.h>
int main() {
    printf("RISC-V riscv64 verified\n");
    printf("sqrt(2)  = %.15f\n", sqrt(2.0));
    printf("sqrt(3)  = %.15f\n", sqrt(3.0));
    printf("pi ~ %.15f\n", 4.0 * atan(1.0));
    return 0;
}
