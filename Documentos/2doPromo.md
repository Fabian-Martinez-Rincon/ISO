## Segundo Parcial de Promoción (Parciales viejos)

### Segundo Parcial 2020


#### Pregunta 1
Dadas las siguientes técnicas de administración de memoria principal indique que tipo de fragmentación pueden generar:
- **Particiones Fijas** Fragmentación Interna
- **Particiones Dinamicas** Fragmentación Externa
- **Segmentación** Fragmentación Externa
- **Paginación** Fragmentación Interna
- **Segmentación Paginada** Fragmentación Interna

#### Pregunta 2
Luego de cargar una pagina a memoria por un fallo de pagina el responsable de poner el bit de validez en 1 es:
- El Kernel

#### Pregunta 3
Dado un SO que se encuentra con hiperpaginación (trashing), aumentar el grado de multiprogramación ayudará a que el problema se resuelva
- Falso

#### Pregunta 4
Cuál de las siguientes técnicas de reemplazo de páginas favorece al control de tasa de fallo de páginas de un proceso
- Reemplazo Local

#### Pregunta 5
En la técnica de administración de páginas por el método de tabla invertida solo son cargadas en dicha tabla la información de las páginas que se encuentran cargadas en memoria principal.
- Verdadero

#### Pregunta 6
En la técnica de particiones fijas, la partición donde se cargara el espacio de direcciones de un proceso lo determina:
- El Kernel

#### Pregunta 7
En la técnica de administración de memoria con paginación donde se utiliza una Tabla de Páginas Invertida existe:

- Una tabla invertida para todas las paginas que se encuentran cargadas en memoria principal

#### Pregunta 8
Para una gestión eficiente del área de intercambio (Swap Area) indique cual/cuales de las siguiente opciones deberán ser guardadas en la misma:
- Páginas de datos (variables)
- Páginas de los stacks

#### Pregunta 9
¿Cuál/Cuáles de la siguientes opciones es correcta acerca de las tablas de páginas multinivel?
- Tiene como objetivo tener multiples tablas de páginas pero de menor tamaño
- La resolución de una dirección, podría causar varios accesos a la memoria

#### Pregunta 10

¿Cuál/Cuáles de las siguientes opciones es correcta acerca del Translation Lookaside Buffer (TLB)?
- Los cambios de contexto invalidan la TLB
- Si todas las entradas buscadas generan un TLB MISS, su uso perjudica al tiempo de resolución
- Es una memoria caché que contiene las entradas de la tabla de páginas usadas recientemente

#### Pregunta 11
La administración de memoria por particiones fijas puede causar
- Fragmentación interna

#### Pregunta 12
¿Cuál/Cuáles de las siguientes características de la técnica de Segmentación Paginada es correcta?
- Elimina el problema de la fragmentación externa introducido por la segmentación pura
- Las estructuras de datos necesarias en memoria para llevar adelante la técnica son mayores que en la segmentación o paginación pura
- La técnica garantiza la facilidad de implementar compartición

#### Pregunta 13
En el modelo del Working Set la elección de un Δ (delta) demasiado grande en un momento dado causara que los procesos no cuenten con todas las paginas necesarias.
- Falso

#### Pregunta 14
¿Cuál/Cuáles de las siguientes opciones es correcta acerca de la técnica PFF (Page Fault Frequency)?
- Ajusta sus parámetros en base al comportamiento de cada proceso
- Se utiliza para prevenir la hiperpaginación
- Su costo de implementación es sencillo y no requiere cálculos previos para determinar la necesidad de frames
de un proceso

#### Pregunta 15
En la técnica de administración de memoria principal por Segmentación Paginada la unidad de trabajo para subir o bajar de la RAM es **la pagina**

#### Pregunta 16
El tiempo de acceso real a memoria de un proceso es el mismo tanto en la técnica de paginación pura como en la técnica de paginación por demanda.
- Falso

#### Pregunta 17
El concepto de **Memora Compartida** es posible implementarlo con la técnica de Segmentación pero no con la técnica de Paginación.
- Falso

#### Pregunta 18
Ordene las siguientes actividades según se desarrollen en la resolución de una Fallo de Pagina de un proceso P1.

Tenga en cuenta que se indican actividades que pueden no están involucradas en la resolución así como pueden existir otras actividades que no se encuentran entre las opciones a ordenar.

Asuma la existencia de Frames Libres
- Búsqueda de un frame libre
- Operación de lectura de la página a memoria principal
- Actualización de la tabla de paginas (marco donde se cargo y bit v = 1)
- Volver el proceso a cola de Listos


***Estos dos no van***
- Espera del proceso P1 en CPU hasta que la operación de lectura termina
- Swap-in del proceso

#### Pregunta 19

En la técnica de tabla invertida para la administración de memoria por paginación, si la función de hash utilizada no provee una buena dispersión, entonces la resolución de una dirección podría requerir más de un acceso a la memoria
- Verdadero

#### Pregunta 20
Si un proceso quiere modificar datos en un área compartida con otro proceso, puede hacerlo directamente si el otro proceso sólo accede en modo lectura
- Falso

---

### Segundo Parcial 2021

#### Pregunta 1
Una alta tasa de fallos de páginas de un proceso indica que el mismo requiere de más marcos
- Verdadero

#### Pregunta 2
Dada una computadora con las siguientes características:
- Direcciones de 32 bits con tablas de paginas de 2 niveles.
- Formato de la dirección: 12 bits primer nivel + 10 bits segundo nivel + 10 bits de desplazamiento.
- Tamaño de entrada de tabla de página (PTE) de 4 bytes
- Tamaño de la palabra: 1 byte
- 2 Gb de RAM
Respuesta
- 2^32 bytes: Tamaño Espacio de Direcciones del proceso
- 2^12 + 2^10: Total de entradas de tabla de paginas
- 2^12 * 4 bytes Tamaño de la tabla de paginas del segundo nivel (Un poco raro pero bueno)
- 2^12 * 4 bytes Tamaño de la tabla del primer nivel

#### Pregunta 3
Para poder utilizar la técnica de Frecuencia de Fallo de Pagina (PFF) el SO delegará en el HW el cálculo de la Taza de Fallo de Pagina de cada proceso.
- Falso
#### Pregunta 4
En la técnica de administración de páginas por el método de tabla invertida solo son cargadas en dicha tabla la información de las páginas que se encuentran cargadas en memoria principal.
- Verdadero

#### Pregunta 5

En la técnica del Working Set si la suma del tamaño de todos los conjuntos de trabajo en un momento dado es mayor a la cantidad de frames [Disponibles] estoy ante un problema de hiperpaginación.

#### Pregunta 6
¿Cuál/Cuáles de las siguientes opciones es correcta acerca de la técnica PFF (Page Fault Frequency)?
- Ajusta sus parámetros en base al comportamiento de cada proceso
- Se utiliza para prevenir la hiperpaginación
- Su costo de implementación es sencillo y no requiere cálculos previos para determinar la necesidad de frames de un proceso
#### Pregunta 7

Suponiendo que:
- un proceso ejecuta una operación para modificar un valor situado posición de memoria, por ejemplo mov #UnaDir, 5) donde #UnaDir corresponde a la pagina X.
- Se utilizan tablas de paginas de 2 niveles
- La entrada de tabla de pagina (PTE) de la pagina X se encuentra en la TLB con el bit V=1

Indicar cuantos accesos a memoria principal (RAM) requerira en total la ejecución de dicha operación
- 1 accesos

#### Pregunta 8

La(s) página(s) que contiene(n) el código del Kernel que se encarga de gestionar los fallos de página puede ser seleccionada como víctima en el caso de requerirse un marco libre.
- Falso

#### Pregunta 9 (Es igual a una del parcial 2020)
#### Pregunta 10
Complete la siguiente oración relacionada a E/S:

En el diseño de la E/S en un SO se busca manejar los diferentes dispositivos de E/S de una manera [Uniforme]. Para ello se definen un conjunto de funciones [Comunes] para cada tipo de dispositivo que pueda administrarse.

#### Pregunta 11

En el diseño de Entrada/Salida el código de los Drivers correspondientes a cada tipo de dispositivo se ejecutan en modo Kernel
- Verdadero

#### Pregunta 12
Si mientras se encuentra ejecutando un proceso P1 se genera una interrupción causada por un dispositivo que avisa que termino una operación solicitada por un proceso P2, que se encuentra en estado bloqueado, el SO deberá realizar un cambio de contexto (P1 a P2) para poder atender dicha interrupción.
- Falso
#### Pregunta 13
El uso de Clusters de gran tamaño podrá producir:
- Mayor Fragmentación Interna

#### Pregunta 14
Dos archivos pueden tener el mismo nombre solo si desde cualquier punto del sistema de archivos:
- Su full path name es diferente

#### Pregunta 15
Todos los filesystems que hay en un disco deben tener el mismo tamaño de cluster
- Falso

#### Pregunta 16
En Unix System V, cuando a un archivo se le modifican los permisos se modifica:
- El i-nodo del archivo

#### Pregunta 17
Las estructuras que mantienen la información de la ubicación de los sectores de datos de los archivos son creadas cada vez que el SO comienza su ejecución
- Falso

#### Pregunta 18
En la técnica de Buffer Cache vista, cuando un proceso reclama un bloque que no se encuentra en la hash queue y la free list esta vacía
- Se bloquea el proceso a la espera de un buffer libre

#### Pregunta 19
El siguiente gráfico representa la situación de buffer cache en Unix System V.
Seleccione la/las opciones que sucederá/n si un proceso P1 requiere el bloque 61

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/438a982b-54df-489a-9e8a-b41d7589835f)

El header que contiene el bloque 9 pasa a estar en estado writing, Se toma el header
que contiene el bloque 319 y se lo acomoda en la hash queue correspondiente al bloque 61 (la hash queue, 1, porque es el resto de calcular 61/5 (la función módulo es 5)

#### Pregunta 20
En la técnica de buffer cache vista, cada header se encuentra relacionado a una misma hash queue independientemente del bloque que aloje
- Falso

---

### Tercer Parcial 2020

#### Pregunta 1

En el diseño de la E/S no bloqueante , un proceso que realiza una operación [continuara] su ejecución [por lo que deberá consultar el estado de la operación de forma explicita]

#### Pregunta 2

En la I/O bloqueante el proceso se suspende hasta que el requerimiento de I/O se completa
- Verdadero

#### Pregunta 3
El siguiente gráfico representa la situación de buffer cache en Unix System V. 
Seleccione la/las opciones que sucederá/n si un proceso P1 requiere el bloque 237.

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/f08ff335-cba1-47e0-83f3-278f70cc06e7)

El proceso deberá esperar a que se libere el bloque

#### Pregunta 4

El siguiente gráfico representa la situación de buffer cache en Unix System V.

Seleccione la/las opciones que sucederá/n si un proceso P1 requiere el bloque 61

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/a8ca8db7-29eb-4d18-8fdb-074dba0638aa)

-  Se toma el header que contiene el bloque 319 y se lo acomoda en la hash queue correspondiente al bloque 61 (la hash queue, 1, porque es el resto de calcular 61/5 (la función módulo es 5)
- El header que contiene el bloque 9 pasa a estar en estado writing

#### Pregunta 5

El uso de Clusters de gran tamaño podrá producir:
- Mayor Fragmentación Interna

#### Pregunta 6
En el diseño de la E/S en un SO se busca manejar los diferentes dispositivos de E/S de una manera [Uniforme]. Para ello se definen un conjunto de funciones [Comunes] para cada tipo de dispositivo que pueda administrarse.

#### Pregunta 7
Entre los servicios que se brindan en el diseño de la E/S de un SO se encuentran la planificación de requerimientos y buffering de datos. En cambio, el manejo de errores de los dispositivos es delegado a los procesos de usuario que quieran utilizar dichos dispositivos

- Falso

#### Pregunta 8
En el diseño de Entrada/Salida el código de los Drivers correspondientes a cada tipo de dispositivo se ejecutan en modo Kernel
- Verdadero

#### Pregunta 9
Las estructuras que mantienen la información de la ubicación de los sectores de datos de los archivos son creadas cada vez que el SO comienza su ejecución.
- Falso

#### Pregunta 10
Para cada una de las siguientes técnicas de administración de espacio de los archivos indique que tipo de fragmentación pueden pueden causar:
- Continua: [Externa]
- Enlazada: [Ni externa ni interna]
- Indexada Simple: [Ni externa ni interna]
- Indexada con niveles de indirección: [Ni externa ni interna]

#### Pregunta 11
En la tecnica de administración de archivo indexada, el tamaño maximo de un archivo lo determina:
- La cantidad de índices definidos en la estructura de datos utilizada 

#### Pregunta 12
Los drivers de un dispositivo se ejecutan en modo kernel, aún cuando los mismos fueron diseñados por personas que no participan en el desarrollo del kernel de SO.
- Verdadero

#### Pregunta 13
En Unix System V, cuando a un archivo se le modifican los permisos se modifica:
- El i-nodo del archivo

#### Pregunta 14
Indique cual/cuales de las siguientes afirmaciones son correctas respecto al sistema de archivos de Unix System V visto en la teoría:
- La cantidad de indices de sectores/clusteres que se pueden utilizar por archivos es limitada

#### Pregunta 15
Para la gestión de espacio de disco, el uso de clusters de gran tamaño podrá causar fragmentación:
- Interna

#### Pregunta 16
Dados lo siguientes servicios a implementar en el diseño del sub-sistema de E/S en un SO , seleccione la finalidad de los siguientes:

La respuesta correcta es: 
- **Spooling** → Mantener una cola de requerimientos a dispositivos de acceso exclusivo,
- **Buffering→** Tratar con problemas de tamaños o formatos de los datos de los dispositivos
- **Caching** → Mantener copia de los datos en memoria

#### Pregunta 17
Para los medios de almacenamiento que son solo lectura, como un CD-ROM, la mejor técnica para manejar el espacio de datos de los archivos es:
- Continua

#### Pregunta 18
El siguiente gráfico representa la situación de buffer cache en Unix System V. 

Seleccione la/las opciones que sucederá/n si un proceso P1 requiere el bloque 9.

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/66aed488-9ecb-434b-97d2-6cb6ad10678d)

- El header correspondiente sale de la free list
- El bloque es otorgado al proceso sin necesidad de escribir el mismo al disco

#### Pregunta 19
En Unix System V, si se produce una modificación en el nombre de un archivo:

- **a)** Cambia el i-nodo del archivo
- **b)** Cambia el i-nodo del directorio en el que esta el archivo
- **c)** Cambia el contenido del archivo
- **d)** Cambia el contenido del directorio en el que esta el archivo

***Respuesta***
- b)y d)

#### Pregunta 20

Indique cual/cuales de las siguientes afirmaciones son validas si se modifica el nombre de un archivo en el sistema de archivos de Unix System V visto en la teoría:

- Se modifica el contenido del directorio donde se encuentra ubicado el archivo
- Se modifica el I-Nodo del directorio donde se encuentra ubicado el archivo

---

### Tercer Parcial Raro

#### Pregunta 1
En la técnica de Buffer Cache vista, todos los buffers que se encuentran en la free list están vacios (sin bloques de disco)
- Falso

#### Pregunta 2
En el diseño de la Entrada/Salida de un sistema operativo, se busca:
- Unificar la forma de hacer E/S de para todos los dispositivos

#### Pregunta 3
En Unix Systema V, para poder crear un archivo, por ejemplo "/var/log/milog", el SO necesita acceder a los I-NODOS de los directorios que participan del path (En el ejemplo los I-nodos de '/', 'var', 'log')
- Verdadero

#### Pregunta 4
La idea de pensar todo el subsitema de E/S en capas permite independencia entre los componentes involucrados, en este caso: el sistema de archivos y el responsable de manejar el dispositivo de almacenamiento

La respuesta correcta es:

La implementación de un sistema de archivos es un SO es [independiente] del tipo dispositivo donde el mismo residirá

#### Pregunta 5

Si mientras se encuentra ejecutando un proceso P1 se genera una interrupción caussada por un dispositivo que avisa que termino una operación solicitada por un proceso P2, que se encuentra en estado bloqueado, el SO deberá realizar un cambio de contexto (P1 a P2) para poder atender dicha interrupción.

- Falso

#### Pregunta 6

En UNIX System V, la cantidad de bloques de datos que puede contener un archivo es limitada
- Verdadero

#### Pregunta 7
En Unix System V puede modificarse el i-nodo del archivo sin modificarse el contenido del archivo en si

- Verdadero

#### Pregunta 8
Todos los filesystems que hay en el disco deben tener el mismo tamaño de cluster
- Falso

#### Pregunta 9
De las siguiente técnicas de administración de espacio de disco indique en cual(es) se puede producir fragmentación externa
- Continua

#### Pregunta 10

Un filesystem es un componente de hardware que define el formato de los archivos y brinda las operaciones necesarias para la manipulación de los mismos

- Falso

#### Pregunta 11
En Unix System V, al crear un nuevo directorio (mkdin my_dir), el I-NODO correspondiente al mismo no tendra bloques de datos asignados

- Verdadero (En el pdf dice falso)

#### Pregunta 12

En la técnica de Buffer Cache vista, cuando un proceso reclama un bloque que no se encuentra en la hash queue y la free list esta vacía
- Se bloquea el proceso a la espera de un buffer libre

#### Pregunta 13
En la técnica de Buffer Cache vista en la teoría, de Unix System V, cuando un header en estado ***ocupado*** es liberado y el proceso que lo tenia modificado el contendo del bloque es

- Colocado al final de la free list

#### Pregunta 14

En la administración de espacio de disco "Enlazada" estudiada, cada entrada de la FAT (para cada archivo) contiene una lista con las referencias a todos los bloques de cada archivo

- Falso

#### Pregunta 15

Suponiendo el manejo de espacio libre un disco por tabla de bits, indique si la siguiente afirmación es Verdadera o Falsa:

La utilización de clusters de 8 sectores de disco hará que la tabla de bits sea mas chica que si se utiliza clusters de 4 sectores de disco

- Verdadero

#### Pregunta 16

Un sistema de archivos (File System) es un componente de hardware que modela el uso de archivos

- Falso

#### Pregunta 17

Dos archivos pueden tener el mismo nombre solo si desde cualquier punto del sistema de archivos:
- Su full path name es diferente

#### Pregunta 18

Si un buffer delayed write está primero en la free list y un proceso solicita acceder al bloque que está "dentro" de este buffer. Cual(es) de las siguientes afirmaciones es/son válidas?

- No se escribe a disco y se asigna al proceso
- El buffer pasa a estar ocupado

#### Pregunta 19

En la técnica de Buffer Cache vista, cada header se encuentra relacionado a una misma hash queue independientemente del bloque que aloje

- Falso