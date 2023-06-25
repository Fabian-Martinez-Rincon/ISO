<div align="center">

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Nomadiix/ISO)
[![GitHub stars](https://img.shields.io/github/stars/Nomadiix/ISO)](https://github.com/FabianMartinez1234567/ISO/stargazers/)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/Nomadiix/ISO)](https://github.com/Nomadiix/ISO)
 </div>

<h1 align="center"> 🐧 Introducción a Sistemas Operativos</h1>
<div align="center">
<img src="https://media.giphy.com/media/3oz8xNkfjM07d7dK0w/giphy.gif"/>
</div>

---
Antes de empezar la materia te recomiendo que mires mi blog sobre vim para que puedas instalar y configurar a tu gusto el editor para hacer las practicas. Tambien dejo links de los teoricos

- [Blog de Vim](https://mith-arg.github.io/EI-Materias/2022-10-04-vim/)
- [Teoria](/Documentos/Teoria.md)
- [Repaso Primer Parcial de Promoción](/Documentos/RepasoPrimerParcialPromocion.md)
- [Primer Parcial de Promoción](/Documentos/PrimerParcialPromocion.md)
- [Practica 1 Conceptos Generales](/Documentos/Practica1.md)
- [Practica 2 Introducción a GNU/Linux](/Documentos/Practica2.md)
- [Practica 3 Shell scripting](/Documentos/Practica3.md)
- [Practica 4 Administración de Procesos](/Documentos/Practica4.md)
- [Practica 5 Administración de Memoria Principal](/Documentos/Practica5.md)
- [Administración de E/S - Discos](/Documentos/Practica6.md)

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

## Voy a rezar para que no tomen AFINIDAD

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

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

# 💿 Resumen Practica 6 Administración de E/S - Discos