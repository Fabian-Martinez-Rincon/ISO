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


<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">


### 📁 Resumen Practica 4 Administración de Procesos


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

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

### 💾 Resumen Practica 5 Administración de Memoria Principal

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

### 💿 Administraci ́on de E/S - Discos