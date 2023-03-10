<h1 align="center"> 📕 Practica 4</h1>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

<div align="center">

[Siguiente](/Documentos/Practica5.md)<br>
[Anterior](/Documentos/Practica3.md)

</div>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

### **Objetivo**

El objetivo de esta práctica es que el alumno comprenda los aspectos base acerca de la planificación de procesos en un Sistema Operativo (tipos de planificadores, algoritmos y sus variantes, etc.). Además, para la autocorrección de los ejercicios, es deseable la utilización del simulador
que se encuentra en cátedras virtuales

---

- [Ejercicio 1 Responda en forma sintética sobre los siguientes conceptos]()
- [Ejercicio 2 Procesos]()
- [Ejercicio 3 Para los siguientes algoritmos de scheduling]()
- [Ejercicio 4 Para el algoritmo Round Robin, existen 2 variantes]()
- [Ejercicio 5 Se tiene el siguiente lote de procesos que arriban al sistema en el instante 0 (cero)]()
- [Ejercicio 6 Se tiene el siguiente lote de procesos]()
- [Ejercicio 7 Una variante al algoritmo SJF es el algoritmo SJF apropiativo o SRTF]()
- [Ejercicio 8 Suponga que se agregan las siguientes prioridades al lote de procesos del ejercicio 6]()
- [Ejercicio 9 Inanición (Starvation)]()
- [Ejercicio 10 ]()
- [Ejercicio 11 ]()
- [Ejercicio 12 ]()
- [Ejercicio 13 ]()
- [Ejercicio 14 ]()
- [Ejercicio 15 ]()
- [Ejercicio 1e ]()
- [Ejercicio 16 ]()
- [Ejercicio 17 ]()
- [Ejercicio 18 ]()
- [Ejercicio 19 ]()
- [Ejercicio 20 ]()
- [Ejercicio 21 ]()
- [Ejercicio 22 ]()
- [Ejercicio 23 ]()
- [Ejercicio 24 ]()

### 1. Responda en forma sintética sobre los siguientes conceptos:
- (a) Programa y Proceso
- (b) Defina Tiempo de retorno (TR) y Tiempo de espera (TE) para un Job.
- (c) Defina Tiempo Promedio de Retorno (TPR) y Tiempo promedio de espera (TPE)
- para un lote de JOBS.
- (d) ¿Qué es el Quantum?
- (e) ¿Qué significa que un algoritmo de scheduling sea apropiativo o no apropiativo (Preem-ptive o Non-Preemptive)?
- (f) ¿Qué tareas realizan?:
    - i. Short Term Scheduler
    - ii. Long Term Scheduler
    - iii. Medium Term Scheduler
- (g) ¿Qué tareas realiza el Dispatcher?

### 2.Procesos

- `a)` Investigue y detalle para que sirve cada uno de los siguientes comandos. (Puede que algún comando no venga por defecto en su distribución por lo que deberá instalarlo)
    - `i)` top
    - `ii)` htop
    - `iii)` ps
    - `iv)` pstree
    - `v)` kill
    - `vi)` pgreppkillkillall
    - `vii)` killall
    - `viii)` renice
    - `ix)` xkill
    - `x)` atop
- `b)` Observe detenidamente el siguiente código. Intente entender lo que hace sin necesidad de ejecutarlo. <br><br>
    ```c
    #include <stdio.h>
    #include <sys/types.h>
    #include <unistd.h>
    int main ( void ) {
        int c;
        pid_t pid;
        printf (" Comienzo . : \n " ) ;
        for ( c = 0; c < 3 ; c++ ){
            pid = fork ( ) ;
            }
        printf(" Proceso \n " ) ;
        return 0;
    }
    ```
    - i. ¿Cuántas líneas con la palabra “Proceso” aparecen al final de la ejecución de este programa?.
    - ii. ¿El número de líneas es el número de procesos que han estado en ejecución?.
Ejecute el programa y compruebe si su respuesta es correcta, Modifique el valor
del bucle for y compruebe los nuevos resultados
- `c)` Vamos a tomar una variante del programa anterior. Ahora, además de un mensaje, vamos a añadir una variable y, al final del programa vamos a mostrar su valor. El nuevo código del programa se muestra a continuación. <br><br>
    ```c
    #include <stdio.h>
    #include <sys/types.h>
    #include <unistd.h>
    int main ( void ) {
        int c ;
        int p=0;
        pid_t pid ;
        for ( c = 0; c < 3 ; c++ ){
            pid = fork ( ) ;
        }
        p++;
        printf (" Proceso %d \n " , p ) ;
        return 0;
    }
    ```
    - i. ¿Qué valores se muestran por consola?.
    - ii. ¿Todas las líneas tendrán el mismo valor o algunas líneas tendrán valores distin- tos?.
    - iii. ¿Cuál es el valor (o valores) que aparece?. Ejecute el programa y compruebe si su respuesta es correcta, Modifique el valor del bucle for y el lugar dónde se incrementa la variable p y compruebe los nuevos resultados.
- `(d)` Comunicación entre procesos
    - i. Investigue la forma de comunicación entre procesos a través de pipes.
    - ii. ¿Cómo se crea un pipe en C?.
    - iii. ¿Qué parametro es necesario para la creación de un pipe?. Explique para que se utiliza.
    - iv. ¿Qué tipo de comunicación es posible con pipes?
- `(e)` ¿Cuál es la información mínima que el SO debe tener sobre un proceso?¿En que es- tructura de datos asociada almacena dicha información?
- `(f)` ¿Qué significa que un proceso sea “CPU Bound” y “I/O Bound”?
- `(g)` ¿Cuáles son los estados posibles por los que puede atravesar un proceso?
- `(h)` Explique mediante un diagrama las posibles transiciones entre los estados.
- `(i)` ¿Que scheduler de los mencionados en 1 f se encarga de las transiciones?

### 3. Para los siguientes algoritmos de scheduling:

- FCFS (Fisrt Coome First Served)
- SJF (Shortest Job First)
- Round Robin
- Prioridades

***Realice***

- `(a)` Explique su funcionamiento mediante un ejemplo.
- `(b)` ¿Alguno de ellos requiere algún parámetro para su funcionamiento?
- `(c)` Cual es el mas adecuado según los tipos de procesos y/o SO.
- `(d)` Cite ventajas y desventajas de su uso

### 4. Para el algoritmo Round Robin, existen 2 variantes:

- Timer Fijo
- Timer Variable

***Realice***

- `(a)` ¿Qué significan estas 2 variantes?
- `(b)` Explique mediante un ejemplo sus diferencias.
- `(c)` En cada variante ¿Dónde debería residir la información del Quantum?

### 5. Se tiene el siguiente lote de procesos que arriban al sistema en el instante 0 (cero):

| Job | Unidades de CPU |
| --- | --- |
| 1 | 7 |
| 2 | 15 |
| 3 | 12 |
| 4 | 4 |
| 5 | 9 |

- `(a)` Realice los diagramas de Gantt según los siguientes algoritmos de scheduling:
    - i. FCFS (First Come, First Served)
    - ii. SJF (Shortest Job First)
    - iii. Round Robin con quantum = 4 y Timer Fijo
    - iv. Round Robin con quantum = 4 y Timer Variable
- `(b)` Para cada algoritmo calcule el TR y TE para cada job así como el TPR y el TPE.
- `(c)` En base a los tiempos calculados compare los diferentes algoritmos.

### 6. Se tiene el siguiente lote de procesos

- `(a)` Realice los diagramas de Gantt según los siguientes algoritmos de scheduling: <br><br>
    | Job | Llegada | Unidades de CPU |
    | --- | --- | --- |
    | 1 | 0 | 4 |
    | 2 | 2 | 6 |
    | 3 | 3 | 4 |
    | 4 | 6 | 5 |
    | 5 | 8 | 2 |
    - i. FCFS (First Come, First Served)
    - ii. SJF (Shortest Job First)
    - iii. Round Robin con quantum = 1 y Timer Variable
    - iv. Round Robin con quantum = 6 y Timer Variable


