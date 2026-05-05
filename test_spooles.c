#include <stdio.h>
#include "DV/DV.h"

int main(void) {
    DV *dv = DV_new();
    DV_init(dv, 5, NULL);
    for (int i = 0; i < 5; i++) DV_setEntry(dv, i, (i + 1) * 1.5);
    
    printf("SPOOLES on RISC-V: DV size = %d\n", DV_size(dv));
    printf("Entries: ");
    for (int i = 0; i < 5; i++) printf("%.2f ", DV_entry(dv, i));
    printf("\n");
    
    DV_free(dv);
    return 0;
}
