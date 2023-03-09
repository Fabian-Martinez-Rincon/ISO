<h1 align="center"> 📕 Practica 4</h1>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

<div align="center">

[Siguiente](/Documentos/Practica5.md)<br>
[Anterior](/Documentos/Practica3.md)

</div>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

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
![image](https://user-images.githubusercontent.com/55964635/200959403-ea68717d-d00d-48de-9d51-eec4709af340.png)