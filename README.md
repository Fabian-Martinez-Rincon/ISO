<div align="center"> 

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Fabian-Martinez-Rincon/ISO)
[![GitHub stars](https://img.shields.io/github/stars/Fabian-Martinez-Rincon/ISO)](https://github.com/Fabian-Martinez-Rincon/ISO/stargazers/)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/Fabian-Martinez-Rincon/ISO)](https://github.com/Fabian-Martinez-Rincon/ISO)


<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=34&duration=1700&pause=800&color=28CDF7&center=true&width=863&lines=Introducción a Sistemas Operativos"/>
 </div>

</div>

<a title="" href="https://cafecito.app/ei-materias"><img src="/Documentos/Cafecito.png" alt="" /></a>

Antes de empezar la materia te recomiendo que mires mi blog sobre vim para que puedas instalar y configurar a tu gusto el editor para hacer las practicas. Tambien dejo links de los teoricos

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

<p><img width="250" align='right' src="https://media.giphy.com/media/6baW5lF9UxI6lfpc0c/giphy.gif"></p>

- [Blog de Vim](https://mith-arg.github.io/EI-Materias/2022-10-04-vim/)
- [Teoria](/Documentos/Teoria.md)
- [Repaso Primer Parcial de Promoción](/Documentos/RepasoPrimerParcialPromocion.md)
- [Primer Parcial de Promoción](/Documentos/PrimerParcialPromocion.md)
- [Segundo Parcial de Promoción](/Documentos/resumenSegundoParcial.md)
- [Practica 1 Conceptos Generales](/Documentos/Practica1.md)
- [Practica 2 Introducción a GNU/Linux](/Documentos/Practica2.md)
- [Practica 3 Shell scripting](/Documentos/Practica3.md)
- [Practica 4 Administración de Procesos](/Documentos/Practica4.md)
- [Practica 5 Administración de Memoria Principal](/Documentos/Practica5.md)
- [Administración de E/S - Discos](/Documentos/Practica6.md)
- [Resumen para el segundo Parcial](/Documentos/resumenSegundoParcial.md)

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">


# 📁 Resumen Practica 4 Administración de Procesos


<table><tr><td>Abreviaturas</td><td>Forma de Pensarlo</td></tr><tr><td>

- **`FCFS`** First come first served
- **`SJF`** Shortest Job First
- **`RR`** Round Robin
  - **`TV`** Timer Variable
  - **`TF`** Timer Fijo
- **`Q`** Quantum
- **`TR`** Tiempo de Retorno
- **`TE`** Tiempo de Espera
- **`TPR`** Tiempo Promedio de Retorno
- **`TPE`** Tiempo Promedio de Espera

</td><td>

- Nos detenemos en cada Quantum (Que ocurre en cada Tiempo?) 
- Por ejemplo:
  - En el tiempo 0, lo unico que pasa es que se encola P1
  - Luego de agregar a la cola de listos el proceso que llego
  - Pasamos a la etapa de ejecución
    - Aca decidimos cual va a ser seleccionado para ejecutarse
    - fin

</td></tr></table>

---

### Ejemplos CPU BOUND

| Proceso | Llegada | Tcpu | Prioridad |
| :---: | :---: | :---: | :---: |
| P1 | 0 | 9 | 3 |
| P2 | 1 | 5 | 2 |
| P3 | 2 | 3 | 1 |
| P4 | 3 | 7 | 2 |


<details>
<summary> FCFS (First come first served) </summary>

![](/Ejemplos/2023-06-20-08-55-08.png)
</details>

<details>
<summary> SJF (Shortest Job First) </summary>

![](/Ejemplos/2023-06-20-08-54-00.png)
</details>

<details>
<summary> Round Robin (Timer Variable) </summary>

![](/Ejemplos/2023-06-20-08-52-26.png)

</details>

<details>
<summary> Round Robin (Timer Fijo)</summary>

![](/Ejemplos/2023-06-20-08-51-34.png)
</details>

<details>
<summary> Prioridades </summary>

![](/Ejemplos/2023-06-20-08-46-27.png)
</details>

<details>
<summary> SRTF (Shortest Remaining Time First perteneciente) </summary>

![](/Ejemplos/2023-06-20-08-57-11.png)
</details>

---

### Ejemplos I/O BOUND

Explicación

| job | Llegada | Tcpu | E/S (rec, inst, dur) |
| :---: | :---: | :---: | :---: |
| P1 | 0 | 5 | (R1, 3, 2) |
| P2 | 1 | 4 | (R2, 2, 2) |
| P3 | 2 | 3 | (R3, 2, 3) |

- **rec** Nombre del recurso
- **inst** el instante en donde va a tener que ejecutar la E/S
- **dur** duración de la E/S

Ejemplo en FCFS
- Primero llegaria el **P1**, ejecuta **3 rafagas** de CPU y su **4ta rafaga** es de E/S durante **2 tiempos**
- Tenemos una cola por cada recurso distinto
- En caso de tener recursos iguales en distintos procesos, tenemos que esperar a que termine el pricero que se ejecuto para poder ejecutarse.

---

Estos ejemplos fueron sacados de @agusrnf

<details>
<summary> FCFS (First come first served) </summary>

- No tengo que hacer una cola por cada Recurso?

![](/Ejemplos/2023-06-20-12-35-22.png)

- Tiene *R* de donde saca R????

![](/Ejemplos/2023-06-20-12-36-47.png)
</details>

<details>
<summary> SJF (Shortest Job First) </summary>


</details>

<details>
<summary> Round Robin (Timer Variable) </summary>


![](/Ejemplos/2023-06-20-12-39-35.png)
![](/Ejemplos/2023-06-20-12-40-06.png)
![](/Ejemplos/2023-06-20-12-54-39.png)

</details>

<details>
<summary> Round Robin (Timer Fijo)</summary>


</details>

<details>
<summary> Prioridades </summary>



| Job | Llegada | CPU | I/O (rec,ins,dur) | Prioridad |
|:---:|:-------:|:---:|:----------------:|:---------:|
|  1  |    0    |  9  | (R1, 4, 2) (R2, 6, 3) (R1, 8, 3) |     1     |
|  2  |    1    |  5  |     (R3, 3, 2) (R3, 4, 2)     |     2     |
|  3  |    2    |  5  |         (R1, 4, 1)          |     3     |
|  4  |    3    |  7  |     (R2, 1, 2) (R2, 5, 3)     |     2     |
|  5  |    5    |  5  |     (R1, 2, 3) (R3, 4, 3)     |     1     |


#### No Apropiativo

![](/Ejemplos/2023-06-20-12-55-51.png)

#### Apropiativo

![](/Ejemplos/2023-06-20-12-57-55.png)

</details>

<details>
<summary> SRTF (Shortest Remaining Time First perteneciente) </summary>


</details>

---
#### Primero, para todos los ejercicios, hacemos lo siguiente:
- Primero marcamos todas las llegadas
- La cantidad de columnas es la suma total de los `Tcpu`
- `TR` = `Tfinal` - `Llegada`
- `TPR` = `Σ TRn` / `Cantidad de procesos`
- `TE` = `TR` - `Tcpu`
- `TPE` = `Σ TEn` / `Cantidad de procesos`
- Seleccionamos procesos a medida que van llegando, para esto tenemos varias formas
- *`No Apropiativos`* Se ejecutan hasta el final (Si no hay E/S)
  - **`FCFS`** Selecciona los procesos en orden de llegada (El mas viejo)
  - **`SJF`** Elige el que tiene la siguiente rafaga de CPU mas corta
- *`Apropiativos`* Se puede cortar la ejecución del proceso
  - **`Round Robin`** (RR TV/TF Q=N) Se ejecuta en orden de llegada y si no termino, vuelve a la cola de listos
    - **`Timer Variable`** Siempre se ejecuta `Ntiempos` (sino termina antes)
    - **`Timer Fijo`** Cada `Nquantums` voy a cambiar de proceso (un context switch) Esto lo marcamos en el grafico
  - **`Prioridades`** Por cada prioridad distinta, tenemos una cola nueva
    - Siempre se descencola el de la cola 1 y 2, si no hay, se descencola el de la cola 3 y 4
    - En el instante 2 llega el P2, y como tiene mayor prioridad que el P1(con prioridad 3), se ejecuta primero
    - Como el P1 no termino, se vuelve a la cola 3
  - **`SRFT`** Es la versión apropiativa del SJF

>## Voy a rezar para que no tomen AFINIDAD

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

# 💾 Resumen Practica 5 Administración de Memoria Principal

### Ejemplo 1. Suponga un sistema donde la memoria es administrada mediante la técnica de paginación

#### De Logica a Fisica
- **Nro Pagina** = Dirección Logica / Tamaño de la Pagina
- **Desplazamiento** = Dirección Logica % Tamaño de la Pagina
- **Dirección Fisica** = Base del Frame + Desplazamiento

#### De Fisica a Logica
- **Nro Marco** = Dirección física / Tamaño del Marco 
- **Desplazamiento** = Dirección física % Tamaño del Marco
- **Dirección Logica** = (Nro página * Tamaño de página) + Desplazamiento

Ejemplo Si no nos dan los bits para saber si esta en memoria

- Enumeramos todos los marcos y asignamos la pagina con su respectiva direción logica
- El tamaño de pagina es de 512 bytes
- El proceso tiene 2000 bytes por eso llega hastas los 1999 la dirección logica

#### Fragmentación 

La fragmentación interna es un tipo de fragmentación que tiene lugar cuando se asigna una memoria más grande a un programa en lugar de la requerida. [Fuente](https://diferenciario.com/fragmentacion-interna-y-fragmentacion-externa/)

- **Fragmentación** = Suma de los tamaños de los 4 marcos - Tamaño del archivo
- **Fragmentación** = 2048 - 2000 = 48 bytes


<table><tr><td> 

| Pagina | Marco |
|--------|-------|
| 0      | 3     |
| 1      | 5     |
| 2      | 2     |
| 3      | 6     |
</td><td>

| HMarco | HPagina | Direccion Virtual | Direccion Fisica |
|--------|---------|------------------|------------------|
| o      | -       | -                | 0.511            |
| 1      | -       | -                | 512..1023        |
| 2      | 2       | 1024..1535       | 1024..1535       |
| 3      | 0       | 0.511            | 1536..2047       |
| 4      | -       | -                | 2048..2559       |
| 5      | 1       | 512..1023        | 2560..3071       |
| 6      | 3       | 1536..1999       | 3072..3583       |
</td></tr>
<tr><td>

- Dir Logica valida (35)
- **Nro Pagina** = 35 / 512 = 0
- **Desplazamiento** = 35 % 35 = 35
- Buscamos el nro de Pagina y sacamos la Base del Marco
- En la pagina 0, con el marco nro 3, la base es 1536
- **Dirección Fisica** = 1536 + 35 = 1571

</td><td>

- Dir Logica invalida (2051)
- **Nro Pagina** = 2051 / 512 = 4 (Esta pagina no existe)
- **Desplazamiento** = 2051 % 512 = 3
- La pagina no existe
</td></tr>

<tr><td>

- Dir Fisica valida (1500)
- **Nro Marco** = 1500 / 512 = 2
- **Desplazamiento** = 1500 % 512 = 476
- Buscamos el nro de Marco y sacamos la Base del Marco
- En el marco 2, con la pagina nro 2, la base es 1024
- **Dirección Logica** = (2 * 512) + 476 = 1500
</td><td>

- Dir Fisica invalida (509)
- **Nro Marco** = 509 / 512 = 0
- **Desplazamiento** = 509 % 512 = 509
- El marco 0, no existe
</td></tr>
</table>

---

### Ejemplo 2. Dado un S.O. que administra la memoria por medio de segmentación paginada

<table><td>

| NumSeg. | DirBase |
| ------- | ------- |
| 1       | 500     |
| 2       | 1500    |
| 3       | 5000    |




</td><td>

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/f029d964-3ccb-4a4f-b61e-a7b254ed726b)

</td></table>

Indicar las direcciones físicas correspondientes a las siguientes direcciones lógicas
- segmento, pagina, desplazamiento
- (2,1,1) = 1500 + 20 + 1 = 1521
- (1,3,15) = 500 + 60 + 15 = 575
- (3,1,10) = 500 + 120 + 10 = 5130
- (2,3,5) = 1500 + 0 + 5 = 1505

---

### Ejemplo 3. Direcciones

Si se dispone de una espacio de direcciones virtuales de 32 bits, donde cada dirección
referencia 1 byte:
- ¿Cuál es el tamaño máximo de un proceso (recordar “espacio virtual”)? 
  - 2^32 direcciones máximas * 1 byte = 2^ 32 bytes 
  - 4.294.967.296 bytes
- Si el tamaño de pagina es de 512KB. ¿Cuál es el número máximo de paginas que puede
tener un proceso?
  - 4.294.967.296 / 1024 = 4194304 KB
  - 4194304 / 512 = 8192
- Si el tamaño de pagina es de 512KB. y se disponen de 256 MB. De memoria real ¿Cuál es el número de marcos que puede haber?
  - 256 * 1024 = 262144 KB
  - 262144 / 512 = 512
- Si se utilizaran 2 KB. para cada entrada en la tabla de páginas de un proceso: ¿Cuál sería el tamaño máximo de la tabla de páginas de cada proceso?
  - 8192 * 2 KB = 16384 KB = 16 MB

---

### Ejemplo 4

<table><td>

| Pagina | Bit V | Bit R | Bit M | Marco |
|--------|-------|-------|-------|-------|
| 0      | 1     | 1     | 0     | 4     |
| 1      | 1     | 1     | 1     | 7     |
| 2      | 0     | 0     | 0     | -     |
| 3      | 1     | 0     | 0     | 2     |
| 4      | 0     | 0     | 0     | -     |
| 5      | 1     | 0     | 1     | 0     |

</td><td>

Asumiendo que:

➢ El tamaño de la página es de 512 bytes

➢ Cada dirección de memoria referencia 1 byte

➢ Los marcos se encuentras contiguos y en orden en memoria (0, 1, 2.. ) a partir de la dirección real 0.
</td></table>

¿Qué dirección física, si existe, correspondería a cada una de las siguientes
direcciones virtuales? (No gestione ningún fallo de página, si se produce)

> el bit de control V, que indica si la página se encuentra o no cargada en memoria principal

Usamos las formulas de arriba para la conversión

a) 1052 b) 2221  c) 5499 d) 3101

- **Nro Pagina** = Dirección Logica / Tamaño de la Pagina
- **Desplazamiento** = Dirección Logica % Tamaño de la Pagina
- **Dirección Fisica** = Base del Frame + Desplazamiento

#### a) 1052

- **Nro Pagina** = 1052 / 512 = 2
- **Desplazamiento** = 1052 % 512 = 28
- Page Fault ya que el bit V esta en 0

#### b) 2221

- **Nro Pagina** = 2221 / 512 = 4
- **Desplazamiento** = 2221 % 512 = 173
- Page Fault ya que el bit V esta en 0

#### c) 5499

- **Nro Pagina** = 5499 / 512 = 10
- Direccion invalida ya que el nro de pagina es mayor a la cantidad de paginas

#### d) 3101

- **Nro Pagina** = 3101 / 512 = 6
- Igual al de arriba

---

### Ejemplo 5 Reparto Equitativo y Reparto Proporcional

Dada la siguiente tabla de procesos y las páginas que ellos ocupan, y teniéndose 40
marcos en la memoria principal, cuantos marcos le corresponderían a cada proceso si se usa la técnica de Asignación Fija

<table><td> 

| Proceso | Total de Páginas Usadas |
|---------|-----------------------|
| 1       | 15                    |
| 2       | 20                    |
| 3       | 20                    |
| 4       | 8                     |

</td><td>

- **M** = 40 (marcos)
- **P** = 4 (procesos)
- **VP** = Paginas usadas por proceso
- **VT** = 15 + 20 + 20 + 8 = 63
- **MP** Marco por proceso

</td></table>
<table>

Tenemos dos formas de repartir los marcos

<tr><td>Reparto Equitativo</td><td>Reparto Proporcional</td></tr><tr><td>

- MP = M / P 
- MP = 40 / 4
- MP = 10

</td><td>

- VP * M / VT
- **Proceso 1** = 15 * 40 / 63 ≈ 10
- **Proceso 2** = 20 * 40 / 63 ≈ 13
- **Proceso 3** = 20 * 40 / 63 ≈ 13
- **Proceso 4** = 8 * 40 / 63 ≈ 5
</td></tr>
</table>

---

### Ejemplo 6 Algoritmos de Planificación

Considere la siguiente secuencia de referencias a páginas: 1, 2, 15, 4, 6, 2, 1, 5, 6, 10, 4, 6, 7, 9, 1, 6, 12, 11, 12, 2, 3, 1, 8, 1, 13, 14, 15, 3, 8

Si se dispone de 5 marcos. ¿Cuántos fallos de página se producirán si se utilizan las siguientes técnicas de selección de víctima? (Considere una política de Asignación Dinámica y Reemplazo Global)

#### Explicación

- Cada vez que hay que alocar una pagina en un marco, se produce un fallo de pagina (page fault) → hard page fault
- ¿Que sucede si es necesario alocar una pagina y ya no hay espacio disponible?
- Se debe seleccionar una pagina victima, para lo cual existen diversos algoritmos


<details><summary>Optimo</summary>

Busca que pagina que no se utiliza en el futuro (Una fumada)

> Por ejemplo, cuando entra el 4, al marco que es remplazado es el 2, ya que no se vuelve a hacer referencia en un futuro

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/9495fce2-7eb8-45a7-ae57-b888ab46cdf5)


</details>

<details ><summary>Segunda Chance (Cola circular con Bit R ó *)</summary>

Es igual al fifo (Agarramos el mas viejo) Si la pagina que elegimos tiene el bit R en 1, lo ponemos en 0, y elegimos la siguiente pagina mas vieja

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/d104ca61-9944-47d9-baff-c0bbda225aba)


</details>

<details><summary>FIFO (Cola circular)</summary>

Simplemente remplazo con el marco mas viejo

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/e29878b9-9676-40bb-83e7-f8f9a7f452e0)


</details>

<details><summary>LRU (Clock)</summary>

Elegimos la pagina que no fue referenciada por mas tiempo

Cuando entra el 4, el 2 tiene mas tiempo sin referencias ya que el 1, fue referenciado despues de que entro el 2 y el marco 3 entro despues del marco 2.

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/a7626026-4b57-44c1-b175-53116f3b088a)



</details>



---

### Ejemplo 7 Descarga Asincronica de Paginas

Aca tenemos 5 Frames y dejamos el 5to para descarga asincronica, este frame se adecua de acuerdo a las necesidades.

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/b69cbc72-5bc8-4511-b715-d9c14f2858ff)

En este ejemplo

- La m significa que cuando es referenciada, se modifica algun valor de esa pagina. Es la misma pagina, pero en ese momento se modifica. 
- Cuando la pagina victima es una pagina modificada, damos vuelta y asignamos el frame de la descarga sincronica, a la nueva pagina que se tiene que cargar
- Mientras tanto, esa pagina modificada es cargada al dispositivo de paginación
- Cuando aparece la pagina 5, la pagina victima es la 1
- Pero como la 1 fue modificada, la pagina 5 es cargada en el 5to frame que era el de descarga sincronica
- Y en un instante posterior, marcamos como frame de descarga sincronica al frame 1
- Cuando se tiene que cargar la pagina 7, vemos que la pagina victima, es la pagina 3, como esta fue modificada, por lo tanto el marco 7 va a parar al frame de descarga sincronica que es el 1

> Espero haberme explicado bien :D

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

# 💿 Resumen Practica 6 Administración de E/S - Discos

### Ejemplo 1 Extraer datos de un HDD (Disco Duro)

Supongamos un disco con 6 platos, 2 caras utiles, 1500 pistas por cara y 700 sectores por pista de 256 bytes cada uno. El disco gira a 12600 RPM , tiene un tiempo de posicionamiento (seek) de 2 milisegundos y una velocidad de transferencia de 15 Mib/s (Mebibits por segundo )

<details> <summary>Prefijos - Equivalencias</summary>

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/d615e624-d492-4935-86e6-c14104ae7f34)

</details>
<details> <summary>Capacidad</summary>

Si queremos calcular la capacidad total del disco, hacemos:

- **Tamaño del Disco** = #caras * #pistas cara * #sectores pista * tamaño sector
- **Tamaño del Disco** = 6 * 2 * 1500 * 700 * 256 bytes
- **Tamaño del Disco** = 3225600000 bytes
- **Tamaño del Disco** = 3,00407 GiB(Gibibytes)

</details>
<details> <summary>Ocupación</summary> 

Si queremos cuantas caras ocupará un archivo de 513 Mibytes almacenado de manera contigua a partir del primer sector de la primer pista de una cara determinada:

#### **Calculamos la capacidad de 1 cara**

1500 * 700 * 256 bytes = 268800000 bytes

#### **Dividimos el tamaño del archivo por la capacidad de una cara**

513 MiB= 537919488 bytes

537919488 / 268800000 = 2,00118 → 3 caras

</details>

<details> <summary>Tiempo de acceso</summary> 

Si queremos saber cuantos milisegundos se tardarían en transferir un archivo almacenado de manera contigua y aleatoria de 4500 sectores

Calculamos los datos que faltan:

**Latencia**
- 12600 vueltas → 1’ = 60 s = 60000 ms
- 0,5 vueltas → x = 2,3809 ms

**Transferencia**
- 15 Mibits → 1 s = 1000 ms
- 256 bytes → x

**Unificamos unidades**
- 15728640 bits → 1000 ms
- 2048 bits → x = 0,1302 ms

**Datos obtenidos**
- **Seek time** 2 ms
- **Latency time** 2,3809 ms
- **Tiempo transferencia bloque** 0,1302 ms
- #bloques: 4500 → eventualmente se tienen que calcular

**Resultados**

- **Almacenamiento secuencial** = seek + latency + tiempo transferencia bloque * #bloques
- **Almacenamiento secuencial** = 2 + 2,3809 + 0,1302 * 4500 = 590,2809 ms
- **Almacenamiento aleatorio** = (seek + latency + tiempo transferencia bloque) * #bloques
- **Almacenamiento aleatorio** = (2 + 2,3809 + 0,1302) * 4500 = 20299,95 ms

</details>

---

### Ejemplo 2 Algoritmos de planificación sin page faults

- Cantidad de pistas: 200 (0..199)
- Requerimientos en la cola: {98 , 183 , 37, 122, 14, 124, 65, 67}
- Viene de: pista 61
- Ubicación actual del cabezal: pista 53 → derecha-izquierda

<details> <summary>FCFS</summary>

Atiende los requerimientos por orden de llegada

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/47f96147-076e-4b13-965e-92dcec7369cc)

Movimientos: 640

</details>

<details> <summary>SSTF</summary>

Selecciona el requerimiento que requiere el menor movimiento del cabezal

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/e0f48098-307e-479b-8856-d7ca1f1e51c7)

Movimientos: 235

</details>

<details> <summary>SCAN</summary>

Barre el disco en una dirección atendiendo los requerimientos pendientes en esa ruta hasta llegar a la ultima pista del disco y cambia la dirección. Es importante saber en que pista se está y de que pista se viene para determinar el sentido del cabezal

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/975cdfcf-c3c2-43e0-b8cc-a6e26aec1a9c)

Movimientos: 236

</details>

<details> <summary>LOOK</summary>

Se comporta igual que el SCAN pero no llega hasta la ultima pista del disco sobre la dirección actual sino que llega hasta el ultimo requerimiento de la dirección actual. Es importante saber en que pista se está y de que pista se viene para determinar el sentido del cabezal

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/21698633-fbbf-49f3-a3c8-bbd3f129c686)

Movimientos: 208

</details>

<details> <summary>C-SCAN</summary>

Se comporta igual que el SCAN pero restringe la atención en un solo sentido. Al llegar a la última pista del disco en el sentido actual vuelve a la pista del otro extremo (salto → no se cuentan los movimientos) y sigue barriendo en el mismo sentido

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/d1277762-b66b-4a98-85de-87c8638e6c36)

Movimientos: 187

</details>

<details> <summary>C-LOOK</summary>

Se comporta igual que el LOOK pero restringe la atención en un solo sentido. Al llegar a la ultima pista de los requerimientos en el sentido actual vuelve a la primer pista más lejana del otro extremo (salto → no se cuentan los movimientos) y sigue barriendo en el mismo sentido

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/040daa58-afb8-47ca-be30-a8d65aa5968f)

Movimientos: 157

</details>

---

### Ejemplo 3 Algoritmos de planificación con page faults

- Cantidad de pistas: 100 (0..99)
- Requerimientos en la cola: {55 , 75 , **52PF** , 45, 10}. Luego de 30 movimientos {**25PF** , 60} y luego de 10 movimientos más (40 desde el comienzo de la planificación) entra {90, 10}
- Se se viene de la pista 15
- Se esta atendiendo la pista 20 → izquierda-derecha

<details> <summary>FCFS</summary>

![image](https://github.com/Fabian-Martinez-Rincon/ISO/assets/55964635/efbb2672-32dd-4640-8028-7902d3371c0a)

Movimientos: 334

</details>

<details> <summary>SSTF</summary>


![image](https://github.com/Fabian-Martinez-Rincon/ISO/assets/55964635/b9feed24-875a-457c-87e4-95b1179989a9)

Movimientos: 154


</details>

<details> <summary>SCAN</summary>

![image](https://github.com/Fabian-Martinez-Rincon/ISO/assets/55964635/c425f044-295a-4063-904f-b833750c77b7)


Movimientos: 174

</details>

<details> <summary>LOOK</summary>

![image](https://github.com/Fabian-Martinez-Rincon/ISO/assets/55964635/f8759396-7f49-4091-8681-dd88c4fe4c28)

Movimientos: 154

</details>

<details> <summary>C-SCAN</summary>

![image](https://github.com/Fabian-Martinez-Rincon/ISO/assets/55964635/5dc49ac0-624f-4fe3-8265-078ca034349b)


Movimientos: 143

</details>

<details> <summary>C-LOOK</summary>

![image](https://github.com/Fabian-Martinez-Rincon/ISO/assets/55964635/f02aaad2-2603-424e-8372-4f3e4fb82281)


Movimientos: 124

</details>
