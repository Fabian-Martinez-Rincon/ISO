<h1 align="center"> 📘 Practica 5</h1>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

<div align="center">

[Siguiente](/Documentos/Practica6.md)<br>
[Anterior](/Documentos/Practica4.md)

</div>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

- [1.- Explique a que hacen referencia los siguientes término]()
- [2.- En la técnica de Particiones Múltiples, la memoria es divida en varias ]()
- [3.- Al trabajar con particiones fijas, los tamaños de las mismas]()
- [4.- Fragmentación]()
- [5.- Paginación]()
- [6.- Cite similitudes y diferencias entre la técnica de paginación]()
- [7.- Suponga  un  sistema  donde  la  memoria  es  administrada mediante  la  técnica  de paginación]()
- [8.- Considere  un espacio lógico de 8 paginas de 1024 bytes cada una]()
- [9.- Segmentación]()
- [10.- Cite similitudes y diferencias entre la técnica de segmentación]()
- [11.- Cite similitudes y diferencias entre la técnica de paginación y segmentación.]()
- [12.- Dado un S.O. que administra la memoria por medio de segmentación paginada]()
- [13.- Memoria Virtual ]()
- [14.- Fallos de Página (Page Faults)]()
- [15.- Direcciones]()
- [16.- Como se vio en el ejercicio anterior, la tabla de páginas de un proceso]()
- [17.- Suponga que la tabla de páginas para un proceso que se está ejecutand]()
- [18.- Tamaño de la Página]()
- [19.- Asignación de marcos a un proceso]()
- [20.- Reemplazo de páginas]()
- [21.- Alcance del reemplazo]()
- [22.- Considere la siguiente secuencia de referencias de páginas]()
- [23.- Sean los procesos A, B y C tales que necesitan para su ejecución]()
- [24.- Sean los procesos A, B y C tales que necesitan para su ejecución]()
- [25.- Hiperpaginación ]()
- [26.- Considere un sistema cuya memoria principal se administra]()
- [27.- Considere un sistema cuya memoria principal se administra]()
- [28.- La siguiente formula describe el tiempo de acceso efectivo a la memoria]()
- [29.- Anomalía de Belady]()
- [30.- Considere el siguiente programa]()
- [31.- Considere las siguientes secuencias de referencias a páginas de los procesos A ]()

### 1.- Explique a que hacen referencia los siguientes términos: 
- Dirección Lógica o Virtual 
- Dirección Física


### Ejercicio 2

En la técnica de Particiones Múltiples, la memoria es divida en varias particiones y 
los procesos son ubicados en estas, siempre que el tamaño del mismo sea menor o 
igual que el tamaño de la partición. 

Al trabajar con particiones se pueden considerar 2 métodos (independientes entre si):

- Particiones Fijas  
- Particiones Dinámicas 

***Preguntas***

- **`a)`** Explique  como  trabajan  estos  2  métodos.  Cite  diferencias,  ventajas  y  desventajas.  
- **`b)`** ¿Qué información debe disponer el SO para poder administrar la memoria con  estos métodos? 
- **`c)`** Realice un gráfico indicado como realiza el SO la transformación de direcciones  lógicas a direcciones físicas

### 3.- Al trabajar con particiones fijas, los tamaños de las mismas se pueden considerar: 

- Particiones de igual tamaño. 
- Particiones de diferente tamaño. 

Cite ventajas y desventajas de estos 2 métodos.

### 4.- Fragmentación 

Ambos métodos de particiones presentan el problema de la fragmentación: 
- Fragmentación Interna (Para el caso de Particiones Fijas) 
- Fragmentación Externa (Para el caso de Particiones Dinámicas) 

***Preguntas***

- **`a)`** Explique a que hacen referencia estos 2 problemas 
- **`b)`** El problema de la Fragmentación Externa es posible de subsanar. Explique una 
técnica que evite este problema.

### 5.- Paginación 

- **`a)`** Explique como trabaja este método de asignación de memoria. 
- **`b)`** ¿Qué  estructuras  adicionales  debe  poseer  el  SO  para  llevar  a  cabo  su  implementación?  
- **`c)`** Explique, utilizando gráficos, como son transformadas las direcciones lógicas en  físicas.  
- **`d)`** En este esquema: ¿Se puede producir fragmentación (interna y/o externa)?

### 6.- Cite similitudes y diferencias entre la técnica de paginación y la  de particiones fijas

### 7.- Suponga  un  sistema  donde  la  memoria  es  administrada mediante  la  técnica de paginación, y donde: 
- El tamaño de la página es de 512 bytes  
- Cada dirección de memoria referencia 1 byte.  
- Los marcos en memoria principal de encuentran desde la dirección física 0.  
Suponga además un proceso con un tamaño 2000 bytes y con la siguiente tabla de 
páginas

| Página |  Marco |
| --- | --- |
| 0 |  3 |
| 1 |  5 |
| 2 |  2 |
| 3 |  6 |

- **`a)`** Realice los gráficos necesarios (de la memoria, proceso y tabla de paginas) en  el que reflejen el estado descrito.  
- **`b)`** Indicar si las siguientes direcciones lógicas son correctas y en caso afirmativo  indicar  la    dirección  física  a  la  que  corresponden
    - **`i)`**  35 
    - **`ii)`**  512 
    - **`iii)`**  2051 
    - **`iv)`**  0 
    - **`v)`**  1325 
    - **`vi)`**  602
- **`c)`** Indicar,  en  caso  de  ser  posible,  las  direcciones  lógicas  del  proceso  que  se corresponden  si  las  siguientes  direcciones  físicas:
    - **`i)`**  509 
    - **`ii)`**  1500 
    - **`iii)`**  0 
    - **`iv)`**  3215                       
    - **`v)`**  1024 
    - **`vi)`**  2000
- **`d)`** ¿Indique, en caso que se produzca, la fragmentación (interna y/o externa)?

### 8.- Considere  un espacio lógico de 8 paginas de 1024 bytes cada una, mapeadas  en  una memoria física de 32 marcos.

- **`a)`** ¿Cuantos bits son necesarios para representar una dirección lógica? 
- **`b)`** ¿Cuantos bits son necesarios para representar una dirección física? 

### 9.- Segmentación

- **`a)`** Explique como trabaja este método de asignación de memoria. 
- **`b)`** ¿Qué  estructuras  adicionales  debe  poseer  el  SO  para  llevar  a  cabo  su  implementación?  
- **`c)`** Explique, utilizando gráficos, como son transformadas las direcciones lógicas en  físicas.  
- **`d)`** En este esquema: ¿Se puede producir fragmentación (interna y/o externa)?

### 10.- Cite similitudes y diferencias entre la técnica de segmentación y la de particiones dinámicas. 

### 11.- Cite similitudes y diferencias entre la técnica de paginación y segmentación.

### 12.- Dado un S.O. que administra la memoria por medio de segmentación paginada, y  teniéndose disponibles las  siguientes tablas:

Tabla de Segmentos  

| Núm. Seg. |  Dir. base |
| --- | --- |
| 1 | 500 |
| 2 | 1500 |
| 3 | 5000 |

Tabla de Paginas


