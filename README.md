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

Algunas abreviaturas
- **`TR`** Tiempo de Retorno
- **`TE`** Tiempo de Espera
- **`TPR`** Tiempo Promedio de Retorno
- **`TPE`** Tiempo Promedio de Espera

Primero, para todos los ejercicios, hacemos lo siguiente:
- Primero marcamos todas las llegadas
- La cantidad de columnas es la suma total de los `Tcpu`
- `TR` = `Tfinal` - `Llegada`
- `TPR` = `Σ TRn` / `Cantidad de procesos`
- `TE` = `TR` - `Tcpu`
- `TPE` = `Σ TEn` / `Cantidad de procesos`
- Seleccionamos procesos a medida que van llegando, para esto tenemos varias formas
- *`No Apropiativos`*
  - **`FCFS`** Selecciona los procesos en orden de llegada (El mas viejo)
  - **`SJF`** Elige el que tiene la siguiente rafaga de CPU mas corta
  - Si no tiene E/S se ejecuta hasta el final


---

### 💾 Resumen Practica 5 Administración de Memoria Principal

---

### 💿 Administraci ́on de E/S - Discos