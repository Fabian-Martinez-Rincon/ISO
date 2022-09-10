<h1 align="center"> Practica 2</h1>

El objetivo de esta práctica es que el alumno comprenda los aspectos principales acerca de la estructura del sistema Operativo GNU/Linux en lo que respecta a procesos, usuarios, filesystems,
permisos, etc


- [1) Editor de textos](#1-editor-de-textos)
- [2) Proceso de Arranque SystemV](#2-proceso-de-arranque-systemv)
- [3) Usuarios](#3-usuarios)
- [4) FileSystem](#4-filesystem)
- [5) Procesos](#5-procesos)
- [6) Otros comandos de Linux](#6-otros-comandos-de-linux-indique-funcionalidad-y-parámetros)
- [7) Indique qué acción realiza cada uno de los comandos...](#7-ejercicio)
- [8) Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones](#8-indique-qué-comando-sería-necesario-ejecutar-para-realizar-cada-una-de-las-siguientes-acciones)
- [9) Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones](#9-indique-qué-comando-sería-necesario-ejecutar-para-realizar-cada-una-de-las-siguientes-acciones)
- [10) Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones](#10-indique-qué-comando-sería-necesario-ejecutar-para-realizar-cada-una-de-las-siguientes-acciones)
- [11) Indique qué acción realiza cada uno de los comandos indicados a continuación....](#11-ejercicio)
- [12) Cree una estructura desde el directorio /home que incluya varios directorios....](#12-ejercicio)
- [13) Indique qué comando/s es necesario para realizar cada una de las acciones de la siguiente secuencia de paso](#13-indique-qué-comandos-es-necesario-para-realizar-cada-una-de-las-acciones-de-la-siguiente-secuencia-de-pasos-considerando-su-orden-de-aparición)

## `1)` Editor de textos:
`(a)` Nombre al menos 3 editores de texto que puede utilizar desde la línea de comandos.\

-  **Vim:** Es un editor de texto que rompe las bolas pero aprendes
- **GNU Emacs:** La misma basura que vim pero con calculadora y administrador de archivos
- **mcedit:** Te permite navegar entre los ficheros con una interfaz.

`(b)` ¿En qué se diferencia un editor de texto de los comandos cat, more o less? Enumere los modos de operación que posee el editor de textos vi.\
Estos comandos si bien son muy utiles y simples, carecen de algunas funcionalidades, como por ejemplo, abrir un archivo en modo lectura asi no nos tenemos que preocupar de modificarlo.

- [Fuente](https://victorhckinthefreeworld.com/2020/01/02/ni-cat-ni-more-ni-less-usa-vim-para-ver-el-contenido-de-un-archivo-de-texto-en-la-consola/)

`(c)` Nombre los comandos más comunes que se le pueden enviar al editor de textos vi\

<table width="100%" cellpadding="10" cellspacing="0" border="2">
<caption>
<b></b>
</caption>
<thead>
<tr>
<th scope="col" align="left" valign="bottom">
<p>Comando&nbsp;</p>
</th><th scope="col" align="left" valign="bottom">
<p>Significado&nbsp;</p>
</th>
</tr>

</thead>
<tbody>
<tr>
<td align="left" valign="top">
<p>
<b>Empezar</b> <kbd>vi</kbd>
</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>vi</kbd> <b>nombre_de_archivo</b>
</p>
</td><td align="left" valign="top">
<p>Abrir o crear el archivo&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<tt>v</tt><kbd>i</kbd>
</p>
</td><td align="left" valign="top">
<p>Abrir un archivo nuevo para nombrarlo
más tarde&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>vi</kbd> <kbd>-r</kbd> <b>nombre_de_archivo</b>
</p>
</td><td align="left" valign="top">
<p>Recuperar un archivo de una caída
del sistema&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>view</kbd> <b>nombre_de_archivo</b> <a name="editorvi-ix1350"></a>
</p>
</td><td align="left" valign="top">
<p>Abrir archivo sólo para leer&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Comandos del cursor&nbsp;</p>
</td><td align="left" valign="top">
<p> &nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<tt>h</tt>
</p>
</td><td align="left" valign="top">
<p>Moverse un carácter hacia la izquierda&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>j&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse una línea hacia abajo&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>k&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse una línea hacia arriba&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>l&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse un carácter a la derecha&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>w&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse una palabra a la derecha&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>W&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse una palabra a la derecha (pasados los signos de
puntuación)&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>b&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse una palabra
a la izquierda&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>B&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse una palabra
a la izquierda (pasados los signos de puntuación)&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>e&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse al final de la palabra actual&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Return&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse una línea hacia abajo&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Back Space&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse un carácter a la izquierda&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Space Bar&nbsp;</p>
</td><td align="left" valign="top">
<p>Moverse un carácter
a la derecha&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>H</kbd>
</p>
</td><td align="left" valign="top">
<p>Moverse a
la parte de arriba de la pantalla&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>M</kbd>
</p>
</td><td align="left" valign="top">
<p>Moverse al centro de la pantalla&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>L</kbd>
</p>
</td><td align="left" valign="top">
<p>Moverse a la parte inferior de la pantalla&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Ctrl-F&nbsp;</p>
</td><td align="left" valign="top">
<p>Paginar una pantalla hacia adelante&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Ctrl-D&nbsp;</p>
</td><td align="left" valign="top">
<p>Desplazarse media pantalla hacia adelante&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Ctrl-B&nbsp;</p>
</td><td align="left" valign="top">
<p>Paginar una pantalla hacia atrás&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Ctrl-U&nbsp;</p>
</td><td align="left" valign="top">
<p>Desplazarse
media pantalla hacia atrás&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Insertar
caracteres y líneas&nbsp;</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>a</kbd>
</p>
</td><td align="left" valign="top">
<p>Insertar caracteres a la derecha del
cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>A</kbd>
</p>
</td><td align="left" valign="top">
<p>Insertar
caracteres al final de la línea&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>i</kbd>
</p>
</td><td align="left" valign="top">
<p>Insertar
caracteres a la izquierda del cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>I</kbd>
</p>
</td><td align="left" valign="top">
<p>Insertar caracteres al principio de línea&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>o</kbd>
</p>
</td><td align="left" valign="top">
<p>Insertar una línea por debajo
el cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>O</kbd>
</p>
</td><td align="left" valign="top">
<p>Insertar
una línea por encima del cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Cambiar texto&nbsp;</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>cw</kbd>
</p>
</td><td align="left" valign="top">
<p>Cambiar una palabra (o parte de una
palabra) a la derecha del cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>c</kbd>
</p>
</td><td align="left" valign="top">
<p>Cambiar una línea&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>C</kbd>
</p>
</td><td align="left" valign="top">
<p>Cambiar desde
el cursor hasta el final de la línea&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>s</kbd>
</p>
</td><td align="left" valign="top">
<p>Sustituir cadena por carácter(es) desde
el cursor hacia adelante&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>r</kbd>
</p>
</td><td align="left" valign="top">
<p>Reemplazar
el carácter marcado por cursor por otro carácter&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>r</kbd> Return</p>
</td><td align="left" valign="top">
<p>Partir una línea&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>J</kbd>
</p>
</td><td align="left" valign="top">
<p>Unir la línea
actual con la línea inferior&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>xp</kbd>
</p>
</td><td align="left" valign="top">
<p>Transponer el carácter del cursor con el carácter
a la derecha&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>~</kbd>
</p>
</td><td align="left" valign="top">
<p>Cambiar el
tipo de letra (mayúscula o minúscula) <a name="editorvi-ix1351"></a> <a name="editorvi-ix1352"></a> <a name="editorvi-ix1353"></a> <a name="editorvi-ix1354"></a>
</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>u</kbd>
</p>
</td><td align="left" valign="top">
<p>Deshacer
el comando anterior&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>U</kbd>
</p>
</td><td align="left" valign="top">
<p>Deshacer
todos los cambios en la línea actual&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:u</kbd>
</p>
</td><td align="left" valign="top">
<p>Deshacer el comando anterior sobre la línea
última&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Eliminar texto&nbsp;</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>x</kbd>
</p>
</td><td align="left" valign="top">
<p>Eliminar el carácter del cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>X</kbd>
</p>
</td><td align="left" valign="top">
<p>Eliminar
el carácter a la izquierda del cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>dw</kbd>
</p>
</td><td align="left" valign="top">
<p>Eliminar la palabra (o la parte de la palabra
a la derecha del cursor)&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>dd</kbd>
</p>
</td><td align="left" valign="top">
<p>Eliminar
la línea que contiene al cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>D</kbd>
</p>
</td><td align="left" valign="top">
<p>Eliminar la parte de la línea a la derecha del cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>dG</kbd>
</p>
</td><td align="left" valign="top">
<p>Eliminar
hasta el final de línea&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>d1G</kbd>
</p>
</td><td align="left" valign="top">
<p>Eliminar
desde el principio del archivo hasta el cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:5,10 d</kbd>
</p>
</td><td align="left" valign="top">
<p>Eliminar las líneas de la 5
a la 10&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Copiar
y mover texto&nbsp;</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>yy</kbd>
</p>
</td><td align="left" valign="top">
<p>Tirar o copiar línea&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>Y</kbd>
</p>
</td><td align="left" valign="top">
<p>Tirar o copiar línea&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>p</kbd>
</p>
</td><td align="left" valign="top">
<p>Poner la línea tirada o eliminada
por debajo de la línea actual&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>P</kbd>
</p>
</td><td align="left" valign="top">
<p>Poner la línea tirada o eliminada por encima de
la línea actual&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:1,2 co 3</kbd>
</p>
</td><td align="left" valign="top">
<p>Copiar las líneas de la 1 a la 2 y ponerlas después de la línea
3&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:4,5 m 6</kbd>
</p>
</td><td align="left" valign="top">
<p>Mover
las líneas de la 4 a la 5 y ponerlas después de la línea
6&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Ajustar
la numeración de las líneas&nbsp;</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:set nu</kbd>
</p>
</td><td align="left" valign="top">
<p>Mostrar
los números de las líneas&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:set nonu</kbd>
</p>
</td><td align="left" valign="top">
<p>Esconder los números de las líneas&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>&nbsp;</p>
</td><td align="left" valign="top">
<p>Establecer la distinción entre
mayúsculas
y minúsculas&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:set ic</kbd>
</p>
</td><td align="left" valign="top">
<p>En
la búsqueda se ignora la distinción entre mayúsculas
y minúsculas&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:set noic</kbd>
</p>
</td><td align="left" valign="top">
<p>En la búsqueda se distingue entre mayúsculas y minúsculas&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Encontrar
una línea&nbsp;</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>G</kbd>
</p>
</td><td align="left" valign="top">
<p>Ir a la última línea
del archivo&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>1G</kbd>
</p>
</td><td align="left" valign="top">
<p>Ir a la
primera línea del archivo&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>21G</kbd>
</p>
</td><td align="left" valign="top">
<p>Ir a la línea 21&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Buscar y reemplazar&nbsp;</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>/</kbd><b>string</b>
</p>
</td><td align="left" valign="top">
<p>Búsqueda de <b>cadena de caracteres</b>
</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>?</kbd><b>string</b>
</p>
</td><td align="left" valign="top">
<p>Búsqueda
hacia atrás de <b>cadena de caracteres</b>
</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>n</kbd>
</p>
</td><td align="left" valign="top">
<p>Encontrar la siguiente aparición
de <b>string</b> en la dirección de búsqueda</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>N</kbd>
</p>
</td><td align="left" valign="top">
<p>Encontrar
la aparición previa de la <b>cadena de caracteres </b>en
la dirección de búsqueda</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>:g/<var>search</var>/s//<var>replace</var>/g</p>
</td><td align="left" valign="top">
<p>Buscar
y reemplazar&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<b>Limpiar la pantalla</b>
</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Ctrl-L&nbsp;</p>
</td><td align="left" valign="top">
<p>Limpiar (actualizar)
la pantalla&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>&nbsp;</p>
</td><td align="left" valign="top">
<p>Insertar un archivo en otro archivo&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:r</kbd> <b>nombre_de_archivo</b>
</p>
</td><td align="left" valign="top">
<p>Insertar (leer) el archivo a continuación
del cursor&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:34</kbd> <kbd>r</kbd> <b>nombre_de_archivo</b>
</p>
</td><td align="left" valign="top">
<p>Insertar
el archivo después de la línea 34&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>Guardar y salir&nbsp;</p>
</td><td align="left" valign="top">
<p>&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:w</kbd>
</p>
</td><td align="left" valign="top">
<p>Guardar los cambios (escribir el contenido de la memoria
intermedia)&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:w</kbd><var> </var><b>nombre_de_archivo</b>
</p>
</td><td align="left" valign="top">
<p>Escribir
el contenido de la memoria
intermedia a un archivo con nombre&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:wq</kbd>
</p>
</td><td align="left" valign="top">
<p>Guardar los cambios y salir de vi&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>ZZ</kbd>
</p>
</td><td align="left" valign="top">
<p>Guardar los cambios y salir de vi&nbsp;</p>
</td>
</tr>

<tr>
<td align="left" valign="top">
<p>
<kbd>:q!</kbd>
</p>
</td><td align="left" valign="top">
<p>Salir sin guardar los cambios <a name="editorvi-ix1355"></a> <a name="editorvi-ix1356"></a>
</p>
</td>
</tr>

</tbody>
</table>

## `2)` Proceso de Arranque SystemV:
`(a)` Enumere los pasos del proceso de inicio de un sistema GNU/Linux, desde que se prende la PC hasta que se logra obtener el login en el sistema.\
`(b)` Proceso INIT. ¿Quién lo ejecuta? ¿Cuál es su objetivo?\
`(c)` Ejecute el comando pstree. ¿Qué es lo que se puede observar a partir de la ejecución de este comando?\
`(d)` RunLevels. ¿Qué son? ¿Cuál es su objetivo?\
`(e)` ¿A qué hace referencia cada nivel de ejecución según el estándar? ¿Dónde se define qué Runlevel ejecutar al iniciar el sistema operativo? ¿Todas las distribuciones respetan estos estándares?\
`(f)` Archivo /etc/inittab. ¿Cuál es su finalidad? ¿Qué tipo de información se almacena en el? ¿Cuál es la estructura de la información que en él se almacena?\
`(g)` Suponga que se encuentra en el runlevel <X>. Indique qué comando(s) ejecutaría para cambiar al runlevel <Y>. ¿Este cambio es permanente? ¿Por qué?\
`(h)` Scripts RC. ¿Cuál es su finalidad? ¿Dónde se almacenan? Cuando un sistema GNU/Linux arranca o se detiene se ejecutan scripts, indique cómo determina qué script ejecutar ante cada acción. ¿Existe un orden para llamarlos? Justifique.\
`(i)` ¿Qué es insserv? ¿Para qué se utiliza? ¿Qué ventajas provee respecto de un arranque tradicional?\
`(j)` ¿Cómo maneja Upstart el proceso de arranque del sistema?\
`(k)` Cite las principales diferencias entre SystemV y Upstart.\
`(l)` Qué reemplaza a los scripts rc de SystemV en Upstart? ¿En que ubicación del filesystem se encuentran?\
`(m)` Dado el siguiente job de upstart perteneciente al servicio de base de datos del mysql indique a qué hace referencia cada línea del mismo:

```
# MySQL Servise
description "MySQL Server "
autor "info autor"
start on ( net − device − up
        and local −filesystems
        and runlevel [2345])
stop on runlevel [016]
[...]
exec / usr / sbin /mysqld
[...]
```

`(n)` ¿Qué es sytemd?\
`(ñ)` ¿A qué hace referencia el concepto de activación de socket en systemd?\
`(o)` ¿A qué hace referencia el concepto de cgroup?

## `3)` Usuarios
`(a)` ¿Qué archivos son utilizados en un sistema GNU/Linux para guardar la información de los usuarios?\
`(b)` ¿A qué hacen referencia las siglas UID y GID? ¿Pueden coexistir UIDs iguales en un sistema GNU/Linux? Justifique.\
`(c)` ¿Qué es el usuario root? ¿Puede existir más de un usuario con este perfil en GNU/Linux? ¿Cuál es la UID del root?.\
`(d)` Agregue un nuevo usuario llamado iso2017 a su instalación de GNU/Linux, especifique que su home sea creada en /home/iso_2017, y hágalo miembro del grupo catedra (si no existe, deberá crearlo). Luego, sin iniciar sesión como este usuario cree un archivo en su home personal que le pertenezca. Luego de todo esto, borre el usuario y verifique que no queden registros de él en los archivos de información de los usuarios y grupos.\
`(e)` Investigue la funcionalidad y parámetros de los siguientes comandos:
- **useradd ó adduser:**
- **usermod:**
- **userdel:**
- **su:**
- **groupadd:**
- **who:**
- **groupdel:**
- **passwd:**

## `4)` FileSystem:
`(a)` ¿Cómo son definidos los permisos sobre archivos en un sistema GNU/Linux?\
`(b)` Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con los permisos en GNU/Linux:
- **chmod:**
- **chown:**
- **chgrp:**

`(c)` Al utilizar el comando chmod generalmente se utiliza una notación octal asociada para definir permisos. ¿Qué significa esto? ¿A qué hace referencia cada valor?\
`(d)` ¿Existe la posibilidad de que algún usuario del sistema pueda acceder a determinado archivo para el cual no posee permisos? Nombrelo, y realice las pruebas correspondientes.\
`(e)` Explique los conceptos de “full path name” y “relative path name”. De ejemplos claros de cada uno de ellos.\
`(f)` ¿Con qué comando puede determinar en qué directorio se encuentra actualmente? ¿Existe alguna forma de ingresar a su directorio personal sin necesidad de escribir todo el path completo? ¿Podría utilizar la misma idea para acceder a otros directorios? ¿Cómo? Explique con un ejemplo.\
`(g)` Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con el uso del FileSystem:
- **cd:**
- **umount:**
- **mkdir:**
- **du:**
- **rmdir:**
- **df:**
- **mount:**
- **ln:**
- **ls:**
- **pwd:**
- **cp:**
- **mv:**

## `5)` Procesos

`(a)` ¿Qué es un proceso? ¿A que hacen referencia las siglas PID y PPID? ¿Todos los procesos tienen estos atributos en GNU/Linux? Justifique. Indique qué otros atributos tiene un proceso.\
`(b)` Indique qué comandos se podrían utilizar para ver qué procesos están en ejecución en un sistema GNU/Linux.\
`(c)` ¿Qué significa que un proceso se está ejecutando en Background? ¿Y en Foreground?\
`(d)` ¿Cómo puedo hacer para ejecutar un proceso en Background? ¿Como puedo hacer para pasar un proceso de background a foreground y viceversa?\
`(e)` Pipe ( | ). ¿Cuál es su finalidad? Cite ejemplos de su utilización.\
`(f)` Redirección. ¿Qué tipo de redirecciones existen? ¿Cuál es su finalidad? Cite ejemplos de utilización.\
`(g)` Comando kill. ¿Cuál es su funcionalidad? Cite ejemplos.\
`(h)` Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con el manejo de procesos en GNU/Linux. Además, compárelos entre ellos:
- **ps:**
- **kill:**
- **pstree:**
- **killall:**
- **top:**
- **nice:**

## `6)` Otros comandos de Linux (Indique funcionalidad y parámetros)

`(a)` ¿A qué hace referencia el concepto de empaquetar archivos en GNU/Linux?\
`(b)` Seleccione 4 archivos dentro de algún directorio al que tenga permiso y sume el tamaño de cada uno de estos archivos. Cree un archivo empaquetado conteniendo estos 4 archivos y compare los tamaños de los mismos. ¿Qué característica nota?\
`(c)` ¿Qué acciones debe llevar a cabo para comprimir 4 archivos en uno solo? Indique la secuencia de comandos ejecutados.\
`(d)` ¿Pueden comprimirse un conjunto de archivos utilizando un único comando?\
`(e)` Investigue la funcionalidad de los siguientes comandos:
- **tar:**
- **grep:**
- **gzip:**
- **zgrep:**
- **wc:**

## `7)` Ejercicio

Enunciado: Indique qué acción realiza cada uno de los comandos indicados a continuación considerando
su orden. Suponga que se ejecutan desde un usuario que no es root ni pertenece al grupo
de root. (Asuma que se encuentra posicionado en el directorio de trabajo del usuario con el
que se logueó). En caso de no poder ejecutarse el comando, indique la razón

```l s −l > prueba
ps > PRUEBA
chmod 710 prueba
chown root : root PRUEBA
chmod 777 PRUEBA
chmod 700 / etc / passwd
passwd root
rm PRUEBA
man / etc / shadow
find / −name ∗ .conf
usermod root −d /home/ newroot −L
cd / root
rm ∗
cd / etc
cp ∗ /home −R
shutdown
```

## `8)` Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones:
`(a)` Terminar el proceso con PID 23.\
`(b)` Terminar el proceso llamado init. ¿Qué resultados obtuvo?\
`(c)` Buscar todos los archivos de usuarios en los que su nombre contiene la cadena “.conf”\
`(d)` Guardar una lista de procesos en ejecución el archivo /home/<su nombre de usuario>/procesos\
`(e)` Cambiar los permisos del archivo /home/<su nombre de usuario>/xxxx a:
- **Usuario:** Lectura, escritura, ejecución
- **Grupo:** Lectura, ejecución
- **Otros:** ejecución

`(f)` Cambiar los permisos del archivo /home/<su nombre de usuario>/yyyy a:
- **Usuario:** Lectura, escritura.
- **Grupo:** Lectura, ejecución
- **Otros:** Ninguno

`(g)` Borrar todos los archivos del directorio /tmp\
`(h)` Cambiar el propietario del archivo /opt/isodata al usuario iso2010\
`(i)` Guardar en el archivo /home/<su nombre de usuario>/donde el directorio donde me encuentro en este momento, en caso de que el archivo exista no se debe eliminar su contenido anterior.

## `9)` Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones

`(a)` Ingrese al sistema como usuario “root”\
`(b)` Cree un usuario. Elija como nombre, por convención, la primer letra de su nombre seguida de su apellido. Asígnele una contraseña de acceso.\
`(c)` ¿Qué archivos fueron modificados luego de crear el usuario y qué directorios se crearon?\
`(d)` Crear un directorio en /tmp llamado cursada2017\
`(e)` Copiar todos los archivos de /var/log al directorio antes creado.\
`(f)` Para el directorio antes creado (y los archivos y subdirectorios contenidos en él) cambiar el propietario y grupo al usuario creado y grupo users.\
`(g)` Agregue permiso total al dueño, de escritura al grupo y escritura y ejecución a todos los demás usuarios para todos los archivos dentro de un directorio en forma recursiva.\
`(h)` Acceda a otra terminal virtual para loguearse con el usuario antes creado.\
`(i)` Una vez logueado con el usuario antes creado, averigüe cuál es el nombre de su terminal.\
`(j)` Verifique la cantidad de procesos activos que hay en el sistema.\
`(k)` Verifiqué la cantidad de usuarios conectados al sistema.\
`(l)` Vuelva a la terminal del usuario root, y envíele un mensaje al usuario anteriormente creado, avisándole que el sistema va a ser apagado.\
`(m)` Apague el sistema

## `10)` Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones

`(a)` Cree un directorio cuyo nombre sea su número de legajo e ingrese a él.\
`(b)` Cree un archivo utilizando el editor de textos vi, e introduzca su información personal:\
Nombre, Apellido, Número de alumno y dirección de correo electrónico. El archivo debe llamarse "LEAME".\
`(c)` Cambie los permisos del archivo LEAME, de manera que se puedan ver reflejados los siguientes permisos:
- **Dueño:** ningún permiso
- **Grupo:** permiso de ejecución
- **Otros:** todos los permisos

`(d)` Vaya al directorio /etc y verifique su contenido. Cree un archivo dentro de su directorio personal cuyo nombre sea leame donde el contenido del mismo sea el listado de todos los archivos y directorios contenidos en /etc. ¿Cuál es la razón por la cuál puede crear este archivo si ya existe un archivo llamado "LEAME.en este directorio?.\
`(e)` ¿Qué comando utilizaría y de qué manera si tuviera que localizar un archivo dentro del filesystem? ¿Y si tuviera que localizar varios archivos con características similares? Explique el concepto teórico y ejemplifique.\
`(f)` Utilizando los conceptos aprendidos en el punto e), busque todos los archivos cuya extensión sea .so y almacene el resultado de esta búsqueda en un archivo dentro del directorio creado en a). El archivo deberá llamarse .ejercicio_f".

## `11)` Ejercicio

Indique qué acción realiza cada uno de los comandos indicados a continuación considerando su orden. Suponga que se ejecutan desde un usuario que no es root ni pertenece al grupo de root. (Asuma que se encuentra posicionado en el directorio de trabajo del usuario con el que se logueó). En caso de no poder ejecutarse el comando indique la razón:

```
mkdir iso
cd . / iso; ps > f0
ls > f1
cd /
echo $HOME
ls −l $> $HOME/ iso / l s
cd $HOME; mkdir f2
ls −ld f2
chmod 341 f2
touch dir
cd f2
cd ~/ iso
pwd > f3
ps | grep ' ps ' | wc −l >> ../f2/f3
chmod 700 . . / f 2 ; cd . .
find . −name e t c / passwd
find / −name e t c / passwd
mkdir ejercicio5
...................................
.............................................
```

`(a)` Inicie 2 sesiones utilizando su nombre de usuario y contraseña. En una sesión vaya siguiendo paso a paso las órdenes que se encuentran escritas en el cuadro superior. En la otra sesión, cree utilizando algún editor de textos un archivo que se llame. ejercicio10_explicacion"dentro del directorio creado en el ejercicio 9.a) y, para cada una de las órdenes que ejecute en la otra sesión, realice una breve explicación de los resultados obtenidos.\
`(b)` Complete en el cuadro superior los comandos 19 y 20, de manera tal que realicen la siguiente acción:
- `19:` Copiar el directorio iso y todo su contenido al directorio creado en el inciso 9.a).
- `20:` Copiar el resto de los archivos y directorios que se crearon en este ejercicio al directorio creado en el ejercicio 9.a).

`(c)` Ejecute las órdenes 19 y 20 y comentelas en el archivo creado en el inciso a).

![image](https://user-images.githubusercontent.com/55964635/189272687-459c381d-b44c-4a8d-b3d0-aa3acc44e1ae.png)

## `12)` Ejercicio

**Enunciado:** Cree una estructura desde el directorio /home que incluya varios directorios, subdirectorios y archivos, según el esquema siguiente. Asuma que “usuario” indica cuál es su nombre de usuario. Además deberá tener en cuenta que dirX hace referencia a directorios y fX hace
referencia a archivos:

`(a)` Utilizando la estructura de directorios anteriormente creada, indique que comandos son necesarios para realizar las siguientes acciones:
- Mueva el archivo "f3.al directorio de trabajo /home/usuario.
- Copie el archivo "f4.en el directorio "dir11".
- Haga los mismo que en el inciso anterior pero el archivo de destino, se debe llamar "f7".
- Cree el directorio copia dentro del directorio usuario y copie en él, el contenido de "dir1".
- Renombre el archivo "f1"por el nombre archivo y vea los permisos del mismo.
- Cambie los permisos del archivo llamado archivo de manera de reflejar lo siguiente:
  - **Usuario:** Permisos de lectura y escritura
  - **Grupo:** Permisos de ejecución
  - **Otros:** Todos los permisos
- Renombre los archivos "f3 2 "f4"de manera que se llamen "f3.exe 2 "f4.exerespectivamente.
- Utilizando un único comando cambie los permisos de los dos archivos renombrados en el inciso anterior, de manera de reflejar lo siguiente:
  - **Usuario:** Ningún permiso
  - **Grupo:** Permisos de escritura
  - **Otros:** Permisos de escritura y ejecución


## `13)`. Indique qué comando/s es necesario para realizar cada una de las acciones de la siguiente secuencia de pasos (considerando su orden de aparición):
`(a)` Cree un directorio llamado logs en el directorio /tmp.\
`(b)` Copie todo el contenido del directorio /var/log en el directorio creado en el punto anterior.\
`(c)` Empaquete el directorio creado en 1, el archivo resultante se debe llamar "misLogs.tar".\
`(d)` Empaquete y comprima el directorio creado en 1, el archivo resultante se debe llamar "misLogs.tar.gz".\
`(e)` Copie los archivos creados en 3 y 4 al directorio de trabajo de su usuario.