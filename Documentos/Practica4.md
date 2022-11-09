```c
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
int main( void ) {
    int c ;
    pid_t pid ;
    printf ( " Comienzo . : \n " ) ;
    for (c = 0; c < 3 ; c++ ){
        pid = fork( ) ;
    }
    printf ( " P r oce s o \n " ) ;
    return 0 ;
}
```