<h1 align="center"> 📚 Practica 3</h1>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

<div align="center">

[Siguiente](/Documentos/Practica4.md)<br>
[Anterior](/Documentos/Practica2.md)

</div>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

- [1) ¿Qué es el Shell Scripting? ¿A qué tipos de tareas están orientados los script?](#1-ejercicio)
- [2) Investigar la funcionalidad de los comandos echo y read](#2-ejercicio)
- [3) Crear dentro del directorio personal del usuario logueado un directorio](#3-ejercicio)
- [4) Parametrización](#4-ejercicio)
- [5) ¿Cual es la funcionalidad de comando exit?](#5-ejercicio)
- [6) El comando expr permite la evaluación de expresiones](#6-ejercicio)
- [7) El comando “test expresión” permite evaluar expresiones](#7-ejercicio)
- [8) Estructuras de control](#8-ejercicio)
- [9) ¿Qué acciones realizan las sentencias break y continue dentro de un bucle?](#9-ejercicio)
- [10) ¿Qué tipo de variables existen? ¿Es shell script fuertemente tipado?](#10-ejercicio)
- [11) ¿Pueden definirse funciones dentro de un script? ¿Cómo?](#11-ejercicio)
- [12) Evaluación de expresiones](#12-ejercicio)
- [13) Uso de las estructuras de control](#13-ejercicio)
- [14) Renombrando Archivos: haga un script que renombre solo archivos](#14-ejercicio)
- [15) Comando cut](#15-ejercicio)
- [16) Realizar un script que reciba como parámetro una extensión](#16-ejercicio)
- [17) Escribir un script que al ejecutarse imprima en pantalla los nombre](#17-ejercicio)
- [18) Crear un script que verifique cada 10 segundos si un usuario se ha](#18-ejercicio)
- [19) Escribir un Programa de “Menu de Comandos Amigable con el Usuario”](#19-ejercicio)
- [20) Realice un script que simule el comportamiento de una estructura de PILA](#20-ejercicio)
- [21) Dentro del mismo script y utilizando las funciones implementadas](#21-ejercicio)
- [22) Dada la siguiente declaración al comienzo de un script](#23-ejercicio)
- [23) Implemente un script que recorra un arreglo compuesto por números](#23-ejercicio)
- [24) Dada la definición de 2 vectores del mismo tamaño y cuyas](#24-ejercicio)
- [25) Realice un script que agregue en un arreglo todos los nombres](#25-ejercicio)
- [26) Escriba un script que reciba una cantidad desconocida de parámetros](#26-ejercicio)
- [27) Realice un script que implemente a través de la utilización](#27-ejercicio)
- [28) Realice un script que reciba como parámetro el nombre de un directorio](#28-ejercicio)
- [29) Implemente un script que agregue a un arreglo todos los archivos](#29-ejercicio)
- [30) Realice un script que mueva todos los programas del directorio actual](#30-ejercicio)

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 1) Ejercicio
¿Qué es el Shell Scripting? ¿A qué tipos de tareas están orientados los script?  ¿Los scripts deben compilarse? ¿Por qué?

La Shell provee estructuras de control que permiten programar shell scripts. 

El Shell Scripting es la técnica (habilidad / destreza) de diseñar y crear Script (archivo de automatización de tareas) mediante un Shell (preferiblemente) de un Sistema Operativo, o un

Editor de Texto (Gráfico o Terminal). Este es un tipo de lenguaje de programación que generalmente es interpretado.

Está orientado a diferentes tareas:
- Automatización de tareas
- Aplicaciones interactivas
- Aplicaciones con interfaz gráfica (con el comando zenity, por ejemplo). 

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 2) Ejercicio

Investigar la funcionalidad de los comandos echo y read

- `Echo:` Es un comando para la impresión de un texto en pantalla. El comando para imprimir el contenido de la variable es:
- `echo $nombreVar `
- `Read:` El comando read lee su entrada estándar y asigna las palabras leídas en la(s) variable(s) cuyo nombre se pasa como argumento. Se trata del input desde teclado. 

![](/Practicas/Practica3/Imagenes/1.png)

---

#### (a) ¿Como se indican los comentarios dentro de un script? 

Los comentarios tienen que comenzar con el símbolo \#

---

#### (b) ¿Cómo se declaran y se hace referencia a variables dentro de un script?

No necesita declarar una variable. Se creará sólo con asignarle un valor a su referencia. Luego se referencia con el símbolo $ Ejemplo



Para hacer un script:
- `Paso 1` en la consola usar el comando: `touch script.sh` para crear el directorio.
- `Paso 2` Ver si se creo el directorio con el comando `ls`
- `Paso 3` Ingresar al archivo `script.sh` con el editor de texto vi de la siguiente manera 
   - `vim script.sh `
   - DENTRO DEL EDITOR VIM:
   - Ingresar la letra i para estar en modo insertar y Escribir
   ```bash
   #!/bin/bash 
   CAD="¡Hola Mundo!"
   echo $CAD
   ```
   - `ESC` (para salir del modo editor)
   - `:wq` (para guardar los cambios)
   - Salimos del editor vi e ingresamos a la consola
- `Paso 4:` Damos permiso de ejecución con el comando:
   - `chmod u+x script.sh`
   - Si ponemos el comando ls vamos a ver que el directorio .sh cambio de color.
- `Paso 5:` Con el comando `./script.sh` vamos a ver el contenido de ese script en cosola.
- `Paso 6:` Si queremos borrar ese directorio con script solo es necesario poner en consola el comando `rm script.sh`

Tambien podes ejecutar el script con el comando `bash script.sh`



<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 3) Ejercicio

Crear dentro del directorio personal del usuario logueado un directorio llamado practicashell-script y dentro de él un archivo llamado mostrar.sh cuyo contenido sea el siguiente:


```bash
#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es:"
```

![image](https://user-images.githubusercontent.com/55964635/232369884-42f534c8-975e-4053-997a-ad86ffdada50.png)

#### **(a)** Asignar al archivo creado los permisos necesarios de manera que pueda ejecutarlo
#### **(b)** Ejecutar el archivo creado de la siguiente manera: ./mostrar
#### **(c)** ¿Qué resultado visualiza?
![image](https://user-images.githubusercontent.com/55964635/232370167-cc259f97-9771-4169-958f-31ce04e94529.png)

#### **(d)** Las backquotes (`) entre el comando whoami ilustran el uso de la sustitución de comandos. ¿Qué significa esto?
Son para poder ejecutar comando cuando se encuentran dentro de un string 

#### **(e)** Realizar modificaciones al script anteriormente creado de manera de poder mostrar distintos resultados (cuál es su directorio personal, el contenido de un directorio en particular, el espacio libre en disco, etc.). Pida que se introduzcan por teclado (entrada estándar) otros datos.

![](2023-04-17-00-45-05.png) 
![](2023-04-17-00-40-25.png) 

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 4) Ejercicio

Parametrización: ¿Cómo se acceden a los parámetros enviados al script al momento de su invocación? ¿Qué información contienen las variables `$#, $*, $?` y `$HOME` dentro de un script?

- Los scripts pueden recibir argumentos en su invocación. Para accederlos, se utilizan variables especiales:
- `$0` contiene la invocación al script. (nombre del script)
- `$1, $2, $3,...` contienen cada uno de los argumentos.
- `$#` contiene la cantidad de argumentos recibidos.
- `$*` contiene la lista de todos los argumentos separados por espacios.
- `$?` contiene en todo momento el valor de retorno del ultimo comando ejecutado.(si el valor es 0 se ejecuto correctamente, en caso de que haya habido algún error dará un valor entre 1 y 255).

| ![](2023-04-17-01-04-44.png) | ![](2023-04-17-01-05-38.png) |
| --- | --- |

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 5) Ejercicio

¿Cual es la funcionalidad de comando exit? ¿Qué valores recibe como parámetro y cual es su significado?

El comando exit finaliza un script. Incluso, puede arrojar un valor de terminación, el cual estará disponible para su proceso padre.

Todo comando posee un estado de terminación (exit status). Un comando que se ejecutó satisfactoriamente arrojará un valor de 0, mientras que un comando que no se procesó de manera correcta, finalizará con un número diferente de 0.

Al igual que un comando, un script posee su propio estado de terminación, el cual será determinado por la última instrucción ejecutada por el script.

Dentro de un script, el comando exit puede arrojar un número dentro de un rango de 0 a 255.

Se puede consultar el exit status imprimiendo la variable `$?` de la siguiente manera:
- Ingresamos al editor VIM con el archivo mostrar.sh
- Una vez hecho el bin bash, como última línea y dentro de insertar ingresamos el siguiente comando: echo $?
- ESC
- :exit

En la consola se mostrara un número de 0 a 255. 

![](2023-04-17-01-20-45.png)

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 6) Ejercicio

El comando **expr** permite la evaluación de expresiones. Su sintaxis es: **expr arg1 op arg2**, donde **arg1 y arg2** representan argumentos y op la operación de la expresión. Investigar que tipo de operaciones se pueden utilizar

- Se puede utilizar 
   - suma
   - resta
   - multiplicación (/*)
   - división (/). 
- Y devuelve solo la parte entera.:
- expr 10 + 10 -> 20, expr 14 % 9 -> 5.

También se puede utilizar para:

- Cálculo de la longitud de la cadena: 
   - expr length “esto es un test” > 
   - devuelve la cantidad de caracteres: 15
- Cadena de rastreo:
   - expr substr “esto es un test” 3 5 > 
   - te devuelve el texto desde la pos 3 y 5 lugares: to es
- La cadena numérica primera posición de rastreo personaje que aparece: 
   - expr index “esto es un test” s 
   - te devuelve el índice de la letra pasado por parámetro en la cadena (la primera aparición). 

| ![](2023-04-17-02-23-27.png) | ![](2023-04-17-02-25-09.png) |
| --- | --- |




<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 7) Ejercicio

El comando **“test expresión”** permite evaluar expresiones y generar un valor de retorno, true o false. Este comando puede ser reemplazado por el uso de corchetes de la siguiente manera **[ expresión ]**. Investigar que tipo de expresiones pueden ser usadas con el comando test. Tenga en cuenta operaciones para: evaluación de archivos, evaluación de cadenas de caracteres y evaluaciones numéricas.

Este comando tiene un código de retorno igual a 0 cuando el test es positivo, y diferente de cero en caso contrario

El comando test posee dos sintaxis: **test expresión** y **[ expresión ]**, donde **expresión** representa el test que se debe efectuar

![](2023-04-17-03-24-27.png)
![](2023-04-17-03-25-59.png)

### Valores a tener en cuenta

<table>

<td>

| Parametro | Valor |
| --- | --- |
| -r | Si es de Lectura |
| -w | Si es de escritura |
| -x | Si es de ejecución |
| -a | and |
| -o | or |
| -e | Si existe |
| -d | Si es un directorio |
| -f | Si es un archivo |
| -n | No es cadena vacia |

</td>

<td>

| Operador | Con Strings | Con números | Operaciones |
| --- | --- | --- | --- |
| Igualdad | [ $nombre = "Maria" ] | [ $edad -eq 20 ] | $(( 2 == 2 )) |
| Desigualdad | [ $nombre != "Maria" ] | [ $edad -ne 20 ] | $(( 3 != 4 )) |
| Mayor | [ A > Z ] | [ 5 -gt 20 ] | $(( 3 > 1 )) |
| Mayor o Igual | [ A >= Z ] | [ 5 -ge 20 ] | $( 2 >= 1 )) |
| Menor | [ A < Z ] | [ 5 -lt 20 ] | $(( 1 < 10 )) |
| Menor o Igual | [ A <= Z ] | [ 5 -le 20 ] | $(( 3 <= 5 )) |

</td>
</table>


<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 8) Ejercicio

Estructuras de control. Investigue la sintaxis de las siguientes estructuras de control incluidas en shell scripting:

| if | Resultado |
| --- | --- |
| ![](2023-04-17-04-30-21.png) | ![](2023-04-17-04-59-47.png) |
| case | Resultado |
| ![](2023-04-17-04-03-28.png) | ![](2023-04-17-04-32-55.png) |
| while | Resultado |
| ![](2023-04-17-04-14-06.png) | ![](2023-04-17-04-15-06.png) |
| for | Resultado |
| ![](2023-04-17-04-46-40.png) | ![](2023-04-17-04-47-29.png) |
| select | resultado |
| ![](2023-04-17-12-09-15.png) | ![](2023-04-17-12-08-38.png) |




<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 9) Ejercicio

¿Qué acciones realizan las sentencias break y continue dentro de un bucle? ¿Qué parámetros reciben?

- **`break [n]`** Corta la ejecución de `n` niveles de loops.
- **`continue [n]`** salta a la siguiente iteración del enésimo loop que contiene esta instrucción

| ![](2023-04-17-12-32-14.png) | ![](2023-04-17-12-31-44.png) |
| --- | --- |

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 10) Ejercicio
¿Qué tipo de variables existen? ¿Es shell script fuertemente tipado? ¿Se pueden definir arreglos? ¿Cómo?

bash soporta `strings` y `arrays`
- Los nombres son case sensitive
- Para crear una variable:
   - NOMBRE="pepe" # SIN espacios alrededor del =
- Para accederla se usa $:
   - echo $NOMBRE

Para evitar ambigüedades se pueden usar llaves:

- Esto no accede a $NOMBRE
- echo $NOMBREesto_no_es_parte_de_la_variable
- Esto sí
- echo ${NOMBRE}esto_no_es_parte_de_la_variable
Los nombres de las variables pueden contener mayúsculas, minúsculas, números y el símbolo (underscore), pero no pueden empezar con un número.

No es fuertemente tipado, y no requiere una declaración explícita de tipo variables.

### Todo sobre los arreglos

| Bash | Resultado |
| --- | --- |
| arreglo=() | Definir Arreglo vacio |
| arreglo[0]="valor1" | Asignación |
| arreglo=("valor1", "valor2") | Definir con valores |
| read -a arreglo | leer desde teclado <br> tiene que estar definido arriba |
| ${arreglo[0]} | retorna "valor1" |
| ${arreglo[*]} | Retorna todos los elementos del array |
| ${arreglo[@]} | Retorna todos los elementos del array |
| ${#arreglo[@]} | Retorna 2, si contiene valor1 y valor2 |
| ![](2023-04-17-13-17-44.png) | ![](2023-04-17-13-17-14.png) |


<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 11) Ejercicio

¿Pueden definirse funciones dentro de un script? ¿Cómo? ¿Cómo se maneja el pasaje de parámetros de una función a la otra?

Si, se pueden definir funciones dentro de un script.
- Las funciones permiten modularizar el comportamiento de los scripts. 
- Se pueden declarar de 2 formas:
   ```
   function nombre { block }
   nombre() { block }
   ```
- Con la sentencia return se retorna un valor entre 0 y 255
- El valor de retorno se puede evaluar mediante la variable $?
- Reciben argumentos en las variables $1, $2, etc

Para definir variables locales podemos usar la palabra clave `local var1`


| ![](2023-04-17-13-28-17.png) | ![](2023-04-17-13-30-12.png) |
| --- | --- |

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 12) Ejercicio

Evaluación de expresione

#### **(a)** Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.

| ![](2023-04-17-13-48-57.png) | ![](2023-04-17-13-48-29.png) |
| --- | --- |

#### **(b)** Modificar el script creado en el inciso anterior para que los números sean recibidos como parámetros. El script debe controlar que los dos parámetros sean enviados.

| ![](2023-04-17-15-27-16.png) | ![](2023-04-17-15-26-52.png) |
| --- | --- |

#### **(c)** Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, %. Esta calculadora debe funcionar recibiendo la operación y los números como parámetros

| ![](2023-04-17-15-47-45.png) | ![](2023-04-17-15-45-51.png) |
| --- | --- |



<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 13) Ejercicio

Uso de las estructuras de control

#### **(a)** Realizar un script que visualice por pantalla los números del 1 al 100 así como sus cuadrados.

| ![](2023-04-17-15-57-34.png) | ![](2023-04-17-15-58-03.png) |
| --- | --- |

#### (b) Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y QuienEsta. Según la opción elegida se le debe mostrar:
- Listar: lista el contenido del directoria actual.
- DondeEstoy: muestra el directorio donde me encuentro ubicado.
- QuienEsta: muestra los usuarios conectados al sistema.

| ![](2023-04-17-16-21-50.png) | ![](2023-04-17-16-22-17.png) |
| --- | --- |

#### (c) Crear un script que reciba como parámetro el nombre de un archivo e informe si el mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En caso de que no exista el archivo/directorio cree un directorio con el nombre recibido como parámetro

![](2023-04-17-16-38-58.png)
![](2023-04-17-16-38-34.png)

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

# 14) Ejercicio

Renombrando Archivos: haga un script que renombre solo archivos de un directorio pasado como parametro agregandole una CADENA, contemplando las opciones:
- **“-a CADENA”:** renombra el fichero concatenando CADENA al final del nombre del archivo
- **“-b CADENA”:** renombra el fichero concantenado CADENA al principio del nombre
del archivo


Ejemplo:

- Si tengo los siguientes archivos: /tmp/a /tmp/b
- Al ejecutar: ./renombra /tmp/ -a EJ
- Obtendré como resultado: /tmp/aEJ /tmp/bEJ
- Y si ejecuto: ./renombra /tmp/ -b EJ
- El resultado será: /tmp/EJa /tmp/EJb

Comandos ejecutados
- bash 14.sh prueba -a Ej 
- Despues 
- bash 14.sh prueba -b Ej 

| ![](2023-04-18-10-02-10.png) |  ![](2023-04-18-10-00-03.png) |
| --- | --- |


<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 15) Ejercicio

**Comando cut**. El comando cut nos permite procesar la líneas de la entrada que reciba
(archivo, entrada estándar, resultado de otro comando, etc) y cortar columnas o campos,
siendo posible indicar cual es el delimitador de las mismas. Investigue los parámetros que
puede recibir este comando y cite ejemplos de uso.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 16) Ejercicio

Realizar un script que reciba como parámetro una extensión y haga un reporte con 2
columnas, el nombre de usuario y la cantidad de archivos que posee con esa extensión. Se
debe guardar el resultado en un archivo llamado **reporte.txt**

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 17) Ejercicio

Escribir un script que al ejecutarse imprima en pantalla los nombre de los archivos que se encuentran en el directorio actual, intercambiando minúsculas por mayúsculas, además de eliminar la letra a (mayúscula o minúscula). Ejemplo, directorio actual:

```bash
IsO
pepE
Maria
Si ejecuto: ./ejercicio17
```


Obtendré como resultado

```
iSo
PEPe
mRI
```

**Ayuda**: Investigar el comando **tr**

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 18) Ejercicio

Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en el sistema (el nombre del usuario será pasado por parámetro). Cuando el usuario finalmente se loguee, el programa deberá mostrar el mensaje ”Usuario XXX logueado en el sistema” y salir.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 19) Ejercicio

Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menu, el cual, al ser invocado, mostrará un menú con la selección para cada uno de los scripts creados en esta práctica. Las instrucciones de como proceder deben mostrarse junto con el menú. El menú deberá iniciarse y permanecer activo hasta que se seleccione Salir. Por ejemplo:

```
MENU DE COMANDOS
03. Ejercicio 3
12. Evaluar Expresiones
13. Probar estructuras de control
...
Ingrese la opción a ejecutar: 03
```

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 20) Ejercicio

Realice un scrip que simule el comportamiento de una estructura de PILA e implemente las siguientes funciones aplicables sobre una estructura global definida en el script:

- **push:** Recibe un parámetro y lo agrega en la pila 
- **pop:** Saca un elemento de la pila
- **lenght:** Devuelve la longitud de la pila
- **print:** Imprime todos elementos de la pila

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 21) Ejercicio

- Agregue 10 elementos a la pila.
- Saque 3 de ellos.
- Imprima la longitud de la cola.
- Luego imprima la totalidad de los elementos que en ella se encuentan.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 22) Ejercicio

Dada la siguiente declaración al comienzo de un script: num=(10 3 5 7 9 3 5 4) (la cantidad de elementos del arreglo puede variar). Implemente la función productoria dentro de este script, cuya tarea sea multiplicar todos los números del arreglo

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 23) Ejercicio

Implemente un script que recorra un arreglo compuesto por números e imprima en pantalla sólo los números pares y que cuente sólo los números impares y los informe en pantalla al finalizar el recorrido

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 24) Ejercicio

Dada la definición de 2 vectores del mismo tamaño y cuyas longitudes no se conocen

```bash
vector1=( 1 .. N)
vector2=( 7 .. N)
Por ejemplo:
vector1=( 1 80 65 35 2 )
y
vector2=( 5 98 3 41 8 ).
```

Complete este script de manera tal de implementar la suma elemento a elemento entre
ambos vectores y que la misma sea impresa en pantalla de la siguiente manera:

```
La suma de los elementos de la posición 0 de los vectores es 6
La suma de los elementos de la posición 1 de los vectores es 178
...
La suma de los elementos de la posición 4 de los vectores es 10
```

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 25) Ejercicio

Realice un script que agregue en un arreglo todos los nombres de los usuarios del sistema
pertenecientes al grupo “users”. Adicionalmente el script puede recibir como parametro:

- **“-b n”**: Retorna el elemento de la posición n del arreglo si el mismo existe. Caso contrario, un mensaje de error.
- **“-l”:** Devuelve la longitud del arreglo
- **“-i”:** Imprime todos los elementos del arreglo en pantalla

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 26) Ejercicio

Escriba un script que reciba una cantidad desconocida de parámetros al momento de su invocación (debe validar que al menos se reciba uno). Cada parámetro representa la ruta absoluta de un archivo o directorio en el sistema. El script deberá iterar por todos los parámetros recibidos, y solo para aquellos parámetros que se encuentren en posiciones impares (el primero, el tercero, el qverificar si el archivo o directorio existen en el sistema, imprimiendo en pantalla que tipo de objeto es (archivo o directorio). Además, deberá informar la cantidad de archivos o
directorios inexistentes en el sistema.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 27) Ejercicio

Realice un script que implemente a través de la utilización de funciones las operaciones
básicas sobre arreglos:

- inicializar: Crea un arreglo llamado array vacío
- agregar_elem \<parametro1>: Agrega al final del arreglo el parámetro recibido
- eliminar_elem \<parametro1>: Elimina del arreglo el elemento que se encuentra en la
posición recibida como parámetro. Debe validar que se reciba una posición válida
- longitud: Imprime la longitud del arreglo en pantalla
- imprimir: Imprime todos los elementos del arreglo en pantalla
- inicializar_Con_Valores \<parametro1>\<parametro2>: Crea un arreglo con longitud
\<parametro1>y en todas las posiciones asigna el valor \<parametro2>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 28) Ejercicio
Realice un script que reciba como parámetro el nombre de un directorio. Deberá validar que
el mismo exista y de no existir causar la terminación del script con código de error 4. Si el
directorio existe deberá contar por separado la cantidad de archivos que en él se encuentran
para los cuales el usuario que ejecuta el script tiene permiso de lectura y escritura, e informar
dichos valores en pantalla. En caso de encontrar subdirectorios, no deberán procesarse, y
tampoco deberán ser tenidos en cuenta para la suma a informar.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 29) Ejercicio

Implemente un script que agregue a un arreglo todos los archivos del directorio /home cuya terminación sea .doc. Adicionalmente, implemente las siguientes funciones que le permitan acceder a la estructura creada:

- verArchivo \<nombre_de_archivo>: Imprime el archivo en pantalla si el mismo se
encuentra en el arreglo. Caso contrario imprime el mensaje de error “Archivo no encontrado” y devuelve como valor de retorno 5
- cantidadArchivos: Imprime la cantidad de archivos del /home con terminación .doc
- borrarArchivo \<nombre_de_archivo>: Consulta al usuario si quiere eliminar el archivo lógicamente. Si el usuario responde Si, elimina el elemento solo del arreglo. Si el usuario responde No, elimina el archivo del arreglo y también del FileSystem. Debe validar que el archivo exista en el arreglo. En caso de no existir, imprime el mensaje de error “Archivo no encontrado” y devuelve como valor de retorno 10

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## 30) Ejercicio

Realice un script que mueva todos los programas del directorio actual (archivos ejecutables) hacia el subdirectorio “bin” del directorio HOME del usuario actualmente logueado. El script debe imprimir en pantalla los nombres de los que mueve, e indicar cuántos ha movido, o que no ha movido ninguno. Si el directorio “bin” no existe,deberá ser creado.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">