#include "tivaware/hw_memmap.h"
#include "tivaware/rom.h"
#include <sys/stat.h>

// int _read(int file, char* ptr, int len) {
//     // TODO: read from UART
//     return 0;
// }

int _write(int file, char* ptr, int len) {
    for (int i = 0; i < len; ++ptr, ++i) {
        while (!ROM_UARTCharPutNonBlocking(UART0_BASE, *ptr)) {}
    }
    return len;
}
