<h1 align="center"> 📒 Practica 1
</h1>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

<div align="center">

[Siguiente](/Documentos/Practica2.md)<br>
[Anterior](/Documentos/Practica6.md)

</div>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

El objetivo de esta práctica es que el alumno se familiarice con los conceptos básicos del sistema
operativo GNU/Linux, así como con su entorno y comandos principales.
- [Preguntas/Dudas]()
- [1) Características de GNU/Linux](#1-características-de-gnulinux)
- [2) Distribuciones de GNU/Linux](#2-distribuciones-de-gnulinux)
- [3) Estructura de GNU/Linux](#3-estructura-de-gnulinux)
- [4) Kernel](#4-kernel)
- [5) Intérprete de comandos (Shell)](#5-intérprete-de-comandos-shell)
- [6) Sistema de Archivos (File System)](#6-sistema-de-archivos-file-system)
- [7) Particiones](#7-particiones)
- [8) Arranque (bootstrap) de un Sistema Operativo](#8-arranque-bootstrap-de-un-sistema-operativo)
- [9) Archivos](#9-archivos)
- [10) Indique qué comando es necesario utilizar para realizar cada una de las siguientes acciones.](#10-indique-qué-comando-es-necesario-utilizar-para-realizar-cada-una-de-las-siguientes-acciones-investigue-su-funcionamiento-y-parámetros-más-importantes)
- [11) Investigue su funcionamiento y parámetros más importantes](#11-nvestigue-su-funcionamiento-y-parámetros-más-importantes)
- [12) Investigue su funcionamiento y parámetros más importantes](#12-nvestigue-su-funcionamiento-y-parámetros-más-importantes)

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## Preguntas/Dudas

- No entendi muy bien el concepto de partición logica ya que es completamente igual que la primaria, pero no tiene el gestor de arranque. Entonces, que ventaja tiene? 
- Que funcionalidad tiene el locate, porque no funca
- Falta el ultimo punto (12)

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `1)` Características de **GNU/Linux**:

#### `a)` Mencione y explique las características más relevantes de **GNU/Linux**.

#### **`Es multiusuario`**

Cumple simultáneamente las necesidades de dos o más usuarios que comparten los mismos recursos, un sistema multiusuario permite que los usuarios accedan a los datos o procesos de una única maquina, desde diferentes computadoras o termínales


#### **`Es multitarea y multiprocesador`**

Puede realizar varias operaciones, funciones o ejecuciones al mismo tiempo

Los SO multitarea permiten realizar varias operaciones gracias a una operación denominada cambio de contexto que actúa de la siguiente manera, quita un proceso del CPU, ingresa uno nuevo, y luego vuelve a ingresar el proceso que quitó del CPU en una especie de cola de ejecución, sin que el procesador se entere de todo lo que está pasando, de modo, que pueda realizar varias tareas simultáneas. Es como una especie de engaño, que permite mejorar el rendimiento de los ordenadores y facilitar el trabajo a los usuarios.

Multiprocesador se refiere al número de procesadores del sistema, que es más de uno y éste es capaz de usarlos todos para distribuir su carga de trabajo. 

#### **`Es altamente portable`**

Se puede usar en cualquier ordenador que tenga el SO para el que fue programado sin la
necesidad de una instalación previa; significa que no hace falta la instalación de bibliotecas adicionales en el sistema para que pueda funcionar. 

#### **`Posee diversos intérpretes de comandos, de los cuales algunos son programables`**

- Es el método de interacción entre el usuario y la máquina (shell)
- CLI (interfaz de línea de comando) un ejemplo seria la terminal bash. 

#### **`Permite el manejo de usuarios y permisos`**

Nos permite darle permisos particulares a usuarios y archivos del file system.

#### **`Todo es un archivo (hasta los dispositivos y directorios):`**

Todo es un fichero. Los directorios son ficheros, los ficheros son ficheros, y los dispositivos son ficheros. A veces a los dispositivos se les llama nodos, pero siguen siendo ficheros.

Los sistemas de ficheros de GNU/Linux se organizan en una estructura jerárquica, de tipo árbol.

El nivel más alto del sistema de ficheros es / o directorio raíz. Todos los demás ficheros y directorios están bajo el directorio raíz. Por ejemplo, `/home/jebediah/cheeses.odt` muestra la ruta completa al fichero cheeses.odt que está en el directorio jebediah, que a su vez está bajo el directorio home, que por su parte está bajo el directorio raíz (/).

#### **`Cada directorio puede estar en una partición diferente (/temp, /home, etc.)`**

En Linux, el sistema de archivos se organiza en una estructura de árbol con una raíz denominada "/" (barra). Dentro de esta estructura de árbol, cada partición puede montarse en un directorio diferente, lo que significa que los archivos y directorios que se encuentran dentro de esa partición se harán accesibles a través del directorio montado.

Por ejemplo, si tienes una partición llamada /dev/sda1 y quieres montarla en el directorio /home, los archivos y directorios en esa partición estarán disponibles en el directorio /home. Si tienes otra partición llamada /dev/sda2 y quieres montarla en /temp, los archivos y directorios en esa partición estarán disponibles en el directorio /temp.

En resumen, en Linux, cada partición puede montarse en un directorio diferente en la estructura de árbol de archivos del sistema, lo que permite una mejor organización y gestión de los datos.

####  **`Es case sensitive`**

Sensible a las mayúsculas y minúsculas

#### **`Es código abierto`**

Software cuyo código fuente y otros derechos que normalmente son exclusivos para quienes poseen los derechos de autor, son publicados bajo una licencia de código abierto o forman parte del dominio público. En las licencias compatibles con la Open Source Definition el propietario de los derechos de autor permite a los usuarios utilizarlo, modificarlo, estudiarlo, aprovechar su documentación, redistribuir el software, a cualquiera, para cualquier propósito, ya sea en su forma modificada o en su forma original etc. 

---

#### `b)` Mencione otros sistemas operativos y compárelos con GNU/Linux en cuanto a los puntos mencionados en el inciso a.

- A diferencia de Windows y Mac, Linux no pertenece a ninguna compañía, sino que su desarrollo depende de la colaboración de un gran número de empresas y profesionales.
- Su uso esta mas enfocado a programadores dado que sus interfaces son menos amigables.
- Los demás sistemas suelen ser en su mayoría pagos y enfocados mas a lo comercial
- El manejo de permisos de Linux vuelve mas difícil la creación de un virus para dicho sistema mientras que en Windows es mas común.

---

#### `c)` ¿Qué es **GNU**?

GNU es un SO de tipo Unix pero libre, diseñado por miles de programadores, así como una gran colección de programas informáticos que componen al sistema, desarrollado por y para el GNU.

Está formado en su totalidad por software libre, mayoritariamente bajo términos
de copyleft. GNU es el acrónimo recursivo de "GNU's Not Unix" **(GNU no es Unix)**, nombre elegido debido a que GNU sigue un diseño tipo Unix y se mantiene compatible con este, pero se distingue de Unix por ser software libre y por no contener código de Unix.

---

#### `d)` Indique una breve historia sobre la evolución del proyecto *GNU*

- El proyecto GNU fue iniciado por Richard M. Stallman con el propósito de crear un sistema operativo completo y libre: el sistema GNU.
- Se baso principalmente en 4 libertades
    - **Libertad 1:** la libertad para ejecutar el programa con cualquier fin.
    - **Libertad 2:** La libertad de estudiar cómo trabaja el programa y de adecuarlo para que haga lo que usuario desee
    - **Libertad 3:** la libertad de redistribuir el programa de manera de colaborar con el resto de la sociedad.
    - **Libertad 4:** la libertad de hacer pública y distribuir a terceros la versión mejorada.

Pondria más pero a nadie le importa la historia de linux salu2.

---

#### `e)` Explique qué es la multitarea, e indique si *GNU/Linux* hace uso de ella.

Puede realizar varias operaciones, funciones o ejecuciones al mismo tiempo

Los SO multitarea permiten realizar varias operaciones gracias a una operación denominada cambio de contexto que actúa de la siguiente manera, quita un proceso del CPU, ingresa uno nuevo, y luego vuelve a ingresar el proceso que quitó del CPU en una especie de cola de ejecución, sin que el procesador se entere de todo lo que está pasando, de modo, que pueda realizar varias tareas simultáneas. Es como una especie de engaño, que permite mejorar el rendimiento de los ordenadores y facilitar el trabajo a los usuarios. 

`Linux es Multitarea:` La multitarea no consiste en hacer que el procesador realice más de un trabajo al mismo tiempo (un solo procesador no tiene esa capacidad), lo único que realiza es presentar las tareas de forma intercalada para que se ejecuten varias simultáneamente. Por lo tanto en Linux es posible ejecutar varios programas a la vez sin necesidad de tener que parar la ejecución de cada aplicación. 

**GNU/Linux si es multitarea.**

---

#### `f)` ¿Qué es **POSIX**?

POSIX (Interfaz de sistema operativo portátil) es un conjunto de interfaces de sistema
operativo estándar basadas en el sistema operativo Unix .

Definen una interfaz y un entorno estándar que puede utilizar un sistema operativo para proporcionar acceso a aplicaciones compatibles con POSIX.

El estándar también define un intérprete de comandos ( shell ) y programas de utilidad comunes . POSIX admite la portabilidad de aplicaciones en el nivel del código fuente , por lo que las aplicaciones se pueden crear para ejecutarse en cualquier sistema operativo compatible con POSIX.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `2)` Distribuciones de **GNU/Linux**:

#### `a)` ¿Qué es una distribución de GNU/Linux? Nombre al menos 4 distribuciones de GNU/- Linux y cite diferencias básicas entre ellas.

Una distribución es un conjunto de software de GNU, así como programas de sistema, librerías y aplicaciones de usuario, con también software de terceros (a veces), con una versión de un kernel de Linux, todo compilado, empaquetado, configurado y preparado para su instalación en una computadora.

En resumen una distribución de GNU/Linux es el sistema operativo preparado para ser instalado y usado en una computadora.

Desarrollar una distribución es elegir de entre todos los programas de sistema (compiladores, intérpretes, etc.) y aplicaciones de usuario (entornos gráficos de escritorio, editores de texto, paquetes de ofimática, etc.) de GNU y de software de terceros (a veces, no siempre), los que se crean convenientes según la distribución que se quiera crear, más pesada, más ligera, etc., sumado a una versión de un kernel de Linux.

**Distribución GNU/Linux = Software GNU + Software de terceros (no siempre) + Kernel de Linux.**

Cualquier persona con conocimientos de programación puede crear una distribución
GNU/Linux, por eso hay cientos de ellas.

Es tan indispensable el kernel de Linux como el conjunto de programas y librerías de GNU. Por ello cuando a una distribución GNU/Linux se le llama Linux a secas, es una falta de respeto hacia todo el software que GNU ha desarrollado y continua desarrollando como software libre y gratuito.

Debian, Opensuse, Fedora, Ubuntu.

- **`Debian:`** Se orienta a la estabilidad, en términos de ciclo de desarrollo. Sus actualizaciones y versiones se liberan cuando están listas y bien probadas. Lo cual es bueno para servidores, pero por otra parte nos limita compatibilidad con dispositivos de hardware más novedosos. Son muy exigentes en lo que respecta a Software Libre.
- **`Fedora:`** Se orienta a innovación con un ciclo de desarrollo corto de seis meses, y un tiempo de soporte de un año sobre sus paquetes. Lo más nuevo se encuentra en Fedora, a veces la gente desconfía de la solidez de sus paquetes sin embargo lo que sucede es que están en fase de maduración y se le integran mejores funcionalidades. Por ahí leí que Fedora es como probar lo que Linux ofrecerá dentro de seis meses.
- **`Opensuse:`** Novel se quedó sin sistema operativo para su plataforma de servidores y redes, así que compro Suse. Su panel de control para configuración lo hace fácil de configurar. Es un buena elección para aprender de servidores, pero posiblemente para cosas más sofisticadas dejarán las herramientas de configuración y harán ajustes personalizados. El mundo de Software Libre les critica fuertemente sus acuerdos de interoperabilidad con Microsoft.
- **`Ubuntu:`** Se propuso cambiarle la cara al mundo Linux y ciertamente lo ha logrado. Apuntando a ser fácil de usar hace bien simple la instalación de drivers y decodificadores privativos, cosa que se le critican los fundamentalistas del software libre. Su programa de enviar discos gratis hasta la puerta de tu casa ha significado su creciente popularidad. Tiene ciclo de desarrollo rápido, pero sus versiones tienen ciclos de soporte alternado, entre periodos largos y cortos, tratando de tener estabilidad de soporte y flexibilidad de desarrollo.

---

#### `b)` ¿En qué se diferencia una distribución de otra?

Las mayores diferencias se encuentran sobre todo en distribuciones comerciales, donde se han introducido herramientas para una fácil instalación, detección de software etc... 

**Diferencias:**

- Proceso de instalación.
- Ayudantes o wizard que te ayuden en la configuración de tu máquina.
- Gestores de paquetes.
- Secuencia en el proceso de arranque.

---

#### `c)` ¿Qué es Debian? Acceda al sitio 1 e indique cuáles son los objetivos del proyecto y una breve cronología del mismo.

Debian es una comunidad de desarrolladores , que mantiene un sistema operativo GNU basado en software libre. El sistema se encuentra precompilado, empaquetado y en formato deb para múltiples arquitecturas de computador y para varios núcleos.

El proyecto Debian fue anunciado inicialmente 1993 por Ian Murdock. Debian 0.01 fue lanzado el 16 de agosto de 1993 y la primera versión estable fue hecha en 1996.

Nació como una apuesta por separar en sus versiones el software libre del software no libre. El modelo de desarrollo del proyecto es ajeno a motivos empresariales o comerciales, siendo llevado adelante por los propios usuarios, aunque cuenta con el apoyo de varias empresas en forma de infraestructuras.

Debian no vende directamente su software, lo pone a disposición de cualquiera en Internet, aunque sí permite a personas o empresas distribuirlo comercialmente mientras se respete su licencia.

La primera adaptación del sistema Debian, siendo también la más desarrollada, es Debian GNU/Linux, basada en el núcleo Linux, y como siempre utilizando herramientas de GNU

Los nombres de las versiones de Debian son tomados de la película Toy Story. Hasta la fecha,
hay quince versiones estables (con sus respectivas revisiones) enumeradas en la tabla adjunta:

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `3)` Estructura de GNU/Linux:

#### `a)` Nombre cuales son los 3 componentes fundamentales de GNU/Linux.

Kernel, shell y Filesystem.

---

#### `b)` Mencione y explique la estructura básica del Sistema Operativo GNU/Linux.

Estructura. Nos ocuparemos de tres componentes principales:

- **`Kernel:`** El núcleo se podría definir como el corazón de este sistema operativo. Es a grandes rasgos, el encargado de que el software y el hardware de una computadora puedan trabajar juntos.
- **`Shell:`** Es un programa que recibe lo que se escribe en una terminal de texto y lo convierte en instrucciones para el sistema operativo.
- **`Filesystem:`** Es la forma lógica en que dentro de un SO se organizan y se administran los archivos. 

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `4)` Kernel: 

#### `a)` ¿Qué es? Indique una breve reseña histórica acerca de la evolución del Kernel de GNU/Linux.

El kernel es la estructura principal del SO, es el que se encarga de que el software y el hardware puedan trabajar juntos.

Es un núcleo monolítico hibrido, y esta licenciado bajo la licencia GPL v2. 

***Evolución***


En 1991 Linus Torvalds inicia la programación del kernel Linux basándose en Minix (un clon de Unix desarrollado por Tenembaum en 1987).

En octubre de 1991 sale la primera versión oficial Linux(0.02) .

En 1992 se une Linux con el proyecto Gnu de Richard Stallman , la versión 1.0 aparece el 14 de marzo del 94’ , luego el desarrollo de Gnu/Linux se sigue desarrollando por miles de programadores, en el 96’ adoptan como mascota oficial a Tux (pingüinito).

En julio de 1996 se lanza la versión 2.0 y se define la nomenclatura de versionado. Se desarrollo hasta febrero de 2004 y termino con la 2.0.40. En enero de 1999 se lanza la versión 2.2, que provee mejoras de portabilidad entre otras y se desarrolla hasta febrero de 2004 terminando en la versión 2.2.26.

En 2001 se lanza la versión 2.4 y se deja de desarrollar a fines del 2010 con la 2.4.37.11. La versión 2.4 fue la que catapulto a GNU/Linux como un SO estable y robusto.

Durante este período es que se comienza a utilizar Linux más asiduamente Núcleo.

A fines del 2003 se lanza la versión 2.6, Esta versión ha tenido muchas mejoras para el SO dentro de las que se destacan soporte de hilos, mejoras en la planificación y soporte de nuevo hardware.

El 3 de agosto de 2011 se lanza la versión 2.6.39.4 anunciándose la misma desde meses
previos como la última en su revisión.

El 17 de julio de 2011 se lanza la versión 3.01, No agrega mayores cambios.

La decisión del cambio son los 20 años del SO y no superar los 40 números de revisión. Totalmente compatible con 2.6. La última versión estable es la 5.19.6 (agosto de 2022). 


---

#### `b)` ¿Cuáles son sus funciones principales?

Funciones principales: Administrar la memoria, CPU y E/S, administración de procesos y
comunicación y concurrencia. 

---

#### `c)` ¿Cuál es la versión actual? 

La versión del kernel actual es 5.16. Lo demas a nadie le importa 

#### **¿Cómo se definía el esquema de versionado del Kernel en versiones anteriores a la 2.4?**

En la versión 2.0 se define la nomenclatura del versionado:

Modo de Versionar: A.B.C.[D]

- `A)` Denota Versión. Cambia con menor Frecuencia. en 1994 (versión 1.0), en 1996 (versión 2.0) y en 2010(3.0).
- `B)` Denota Mayor revisión. Antes de la versión 2.6, los números impares indicaban desarrollo, los pares producción.
- `C)` Denota Menor revisión. Solo cambia cuando hay nuevos drivers o características. -------------------------- la D se agrega a partir de la visión 2.4 ------------------------------------------
- `D)` Cambia cuando se corrige un grave error sin agregar nueva funcionalidad.
(casi no se usan en la rama de versiones 3.x, 4.x y 5.x viéndose reflejado en el componente C del SO).

Ejemplo actualidad: versión 5.19.6

#### **¿Qué cambió en el versionado se impuso a partir de la versión 2.6?**

- Antes de la versión 2.6, los números impares indicaban desarrollo, los pares producción.


---

#### `d)` ¿Es posible tener más de un Kernel de GNU/Linux instalado en la misma máquina?

Sí. Se puede instalar en la misma máquina, pero 2 núcleos corriendo simultáneamente en Linux es imposible

---

#### `e)` ¿Dónde se encuentra ubicado dentro del File System?

Se encuentra ubicado el /lib/: librerías esenciales compartidas y módulos de kernel

Directorio raíz de toda la jerarquía de archivos del sistema.

`\` Jerarquia Primaria

- `/bin/` Comandos binarios esenciales de usuario
- `/boot/` Archivos estáticos del selector de arranque
- `/dev/` Archivos de unidades
- `/etc/` Configuración del sistema de Host Especifico
- `/home/` Directorio "home" de usuario
- `/lib/` Librerias esenciales compartidas y módulos de Kernel
- `/media/` Punto de Montaje para medios removibles
- `/mnt/` Punto de Montaje temporal para sistemas de archivos
- `/opt/` Agregados de paquetes de Software y Aplicaciones
- `/sbin/` Binarios de Sistema
- `/srv/` Datos para los servicios provistos por este sistema
- `/tmp/` Archivos temporales
- `/usr/` Unidades y aplicaciones de (Multi) usuario
- `/var/` Variables de archivo
- `/root/` Directorio "Home" del usuario Root
- `/proc/` Documentación del sistema de archivos virtual del Kernel y las condiciones de los procesos en archivos de texto

---

#### `f)` ¿El Kernel de GNU/Linux es monolítico? Justifique.

El kernel Gnu/Linux si es **monolítico**.

**`Kernel monolítico`** quiere decir que toda funcionalidad que implementa el SO se ejecuta en modo kernel o supervisor, ejemplo cuando un usuario quiere ejecutar un proceso se pasa a modo kernel se resuelve todo ahí y después regresa a modo usuario cuando esa resolución termino, toda la lógica se encuentra en el modo kernel. 

**`Ventajas`** el modelado, el diseño implica menos tiempo en la resolución de las cosas. (cambio de modo - resuelvo lo que tengo que resolver - vuelvo a modo usuario). 

También existe el ***kernel microkernel***, se trata de que el modo kernel o supervisor este el menos tiempo posible y trata de dejar en modo usuario diferentes componentes para que se ejecuten en modo usuario y que hagan de apoyo al modo kernel.

**`Ejemplo:`** el SO tiene un conjunto de procesos que van a ir cambiando cada 3 segundos, cada vez que cambia de proceso eso debe estar en modo kernel, ahora la selección de cuál de esos 3 procesos va a ser seleccionado para a entrar a ejecutarse se puede hacer en modo usuario.

Básicamente el kernel microkernel reduce al máximo el uso del modo kernel y delega cosas al modo usuario cosa que no sucede con el modo kernel.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `5)` Intérprete de comandos (Shell):

#### `a)` ¿Qué es?

La shell también conocida como CLI (interfaz de línea de comando), es el que gestiona la interacción entre el usuario y el sistema operativo.

(es solo un programa que hará de mediador entre nosotros y el kernel del SO. Puede ser tanto gráfico Ej. La interfase X-Window, como de texto Linux (Ej. El bash).

La Shell no forma parte básico del sistema operativo si no que la misma dialogo con el kernel.\
La shell es iniciada por un proceso llamado login y dado que cada usuario tiene asignado una shell por defecto la misma se inicia cada vez que un usuario comienza a trabajar en su estación de trabajo, es decir se loguea en una terminal. Dentro del contenido del archivo /etc/passwd, se puede ver cual es la shell que cada usuario tiene asignada por defecto.

---

#### `b)` ¿Cuáles son sus funciones?

Es el encargado de ejecutar programas a partir del ingreso de comandos.

Ejemplo: control de procesos, redirección de entrada/salida, listado y lectura de ficheros, protección, comunicaciones y un lenguaje de órdenes para escribir programas por lotes o (scripts o guiones).


---

#### `c)` Mencione al menos 3 intérpretes de comandos que posee GNU/Linux y compárelos entre ellos.

- **`Bourne Shell (sh)`** Creado por S. Bourne, es el más utilizado en la actualidad. Su símbolo del sistema es $. Es el shell estándar y el que se monta en casi todos los sistemas UNIX/Linux.
- **`Korn Shell (ksh)`** Escrito por David Korn, amplía el shell del sistema añadiendo historial de órdenes, edición en línea de órdenes y características ampliadas de programación. 
- **`Bourne Again Shell (bash)`** Fue creado para usarlo en el proyecto GNU. BASH, por lo tanto, es un shell o intérprete de comandos GNU que incorpora la mayoría de distribuciones de Linux. Es compatible con el shell sh. Además, incorpora algunas características útiles de ksh y csh, y otras propias como la edición de línea de comandos, tamaño ilimitado del historial de comandos, control de los trabajos y procesos, funciones y alias, cálculos aritméticos con números enteros, etc. Su símbolo del sistema es nombre_usuario@nombre_equipo. 


Los intérpretes se diferencian entre sí básicamente en la sintaxis de sus comandos y en la interacción con el usuario.

---

#### `d)` ¿Dónde se ubican (path) los comandos propios y externos al Shell?

**PATH:** es una variable y su contenido es una cadena que contiene rutas de
directorios separadas por dos puntos.

Por ejemplo, para mostrar el valor de una variable en la shell se debe escribir:

- `echo $ nombrevariable `
- en el caso de la variable path seria
- echo$ PATH

la variable PATH contiene una lista de directorios separados por dos puntos. Estos son los directorios en los que el shell busca el comando que el usuario escribe desde el teclado.

La búsqueda no se realiza en el orden en el que están los directorios en la variable PATH.

- Los `comandos propios`, también conocidos como built-in commands, son aquellos que están integrados en la propia shell. Estos comandos suelen ser los más básicos y necesarios para la gestión de la sesión y del sistema, como por ejemplo: cd (para cambiar de directorio), echo (para imprimir texto en la pantalla), exit (para salir de la sesión), entre otros.
- Por otro lado, los `comandos externos` son aquellos que se encuentran en el sistema operativo y que son invocados desde la shell. Estos comandos pueden ser programas completos o scripts que realizan una tarea específica. Ejemplos de comandos externos son ls (para listar los archivos en un directorio), cat (para mostrar el contenido de un archivo), grep (para buscar patrones en un archivo), entre otros.

En resumen, los comandos propios están integrados en la propia shell y los comandos externos son programas o scripts que se ejecutan desde la shell.


---

#### `e)` ¿Por qué considera que el Shell no es parte del Kernel de GNU/Linux?

La principal razon es que es muy remplazable, en caso de que falle, se puede reiniciar y todo tendria que seguir andando.

Y tambien

La shell no forma parte del kernel de Linux porque es una aplicación que proporciona una interfaz de línea de comandos para interactuar con el sistema operativo, mientras que el kernel es la parte central del sistema operativo que administra los recursos del hardware y proporciona servicios básicos al software. Aunque la shell y el kernel trabajan juntos, son dos componentes distintos con diferentes funciones y responsabilidades.

---

#### `f)` ¿Es posible definir un intérprete de comandos distinto para cada usuario? 

Si, es posible. 

#### ¿Desde dónde se define?

Se definen en etc/passwd 

#### ¿Cualquier usuario puede realizar dicha tarea?

No, cada usuario puede definir su o sus intérpretes

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `6)` Sistema de Archivos (File System):

#### `a)` ¿Qué es?

Es la forma en que dentro de un SO se organizan y se administran los archivos.

Los usuarios de Linux hacen una distinción del filesystem. Dicen que un filesystem es un esquema de programación que se utiliza para organizar y buscar archivos en una
partición. Mientras que el sistema de archivos se refiere a todos los archivos de la
computadora.

Lo que esto significa, básicamente, es que el filesystem es la estructura que se utiliza para ver, buscar y usar los archivos mediante Ubuntu. Mientras que el sistema de archivos son todos los archivos separados de esa estructura y el formato de esos archivos. 

---

#### `b)` Mencione sistemas de archivos soportados por GNU/Linux.

A continuación veremos una lista con algunos filesystem utilizados hoy en día:

- ext2
- ext3
- ReiserFS
- XFS

---

#### `c)` ¿Es posible visualizar particiones del tipo FAT y NTFS en GNU/Linux?

Si. En estos momentos existen distribuciones de GNU-Linux que pueden realizar operaciones de lectura y escritura sobre ellas. 

#### `d)`  ¿Cuál es la estructura básica de los File System en GNU/Linux? 

![image](https://user-images.githubusercontent.com/55964635/227661611-40497548-8ce3-4142-88f9-e193515a9d88.png)

#### Mencione los directorios más importantes e indique qué tipo de información se encuentra en ellos.

- **`/`** Tope de la estructura de directorios. Es como el C:\ (raíz).
- **`/home`** Se almacenan archivos de usuarios (Mis documentos)
- **`/var`** Información que varía de tamaño (logs, BD, spools)
- **`/etc`** Archivos de configuración del sistema.
- **`/bin`** Archivos binarios y ejecutables.
- **`/dev`** Enlace a dispositivos.
- **`/usr`** Aplicaciones de usuarios

#### ¿A qué hace referencia la sigla FHS?

(Filesystem Hierarchy Standard - Estándar de jerarquía del sistema de archivos).

FHS: es el estándar que siguen todos los sistemas operativos unix, para organizar el sistema de archivos. 

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `7)` Particiones:

#### `a)`  Definición. Tipos de particiones. Ventajas y Desventajas.

Particionar un disco duro es realizar una división en él de modo que, a efectos prácticos, el sistema operativo crea que tienes varios discos duros, cuando en realidad sólo hay un único disco físico dividido en varias partes. De este modo, se pueden modificar o borrar particiones sin afectar a los demás datos del disco.\
Tipos de particiones:

- **Primarias:** puede ser reconocida como una partición de arranque y puede contener un sistema operativo que realice el arranque del equipo.
- **Extendidas/secundaria** : actúa como una partición primaria; sirve para contener múltiples unidades lógicas en su interior. Fue ideada para romper la limitación de 4 particiones primarias en un solo disco físico
- **Lógicas:** son aquellas particiones que creamos dentro de las particiones extendidas. Al igual que en las particiones primarias, las particiones lógicas pueden utilizarse para instalar Windows y cualquier otro tipo de archivos. Aunque podemos instalar sistemas operativos en las unidades lógicas, no se les puede dar el estado activo y, por lo tanto, no sirven para arrancar el ordenador desde cero por si mismas. Eso sí, podemos utilizar un gestor de arranque en una partición primaria para arrancar las particiones lógicas.
- `Ventajas`
    - **Instalar dos o más sistemas operativos**
    - **Mejor organización**
    - **Más seguridad**
    - **Copias de seguridad**
    - **Facilidad de reinstalación**
- ``Desventajas``
    - **Innecesario para el usuario medio**
    - **Desorden en los volúmenes**
    - **Posibilidad de errores**
    - **Experiencia más lenta**

#### `b)` ¿Cómo se identifican las particiones en GNU/Linux? (Considere discos **IDE**, **SCSI** y **SATA**).

Las particiones en cada disco son representadas añadiendo un número decimal al nombre del disco: sda1 y sda2 representan a la primera y segunda partición en la primera unidad de disco SCSI en el sistema.

#### `c)` ¿Cuántas particiones son necesarias como mínimo para instalar GNU/Linux? Nómbrelas indicando tipo de partición, identificación, tipo de File System y punto de montaje.

Como mınimo es necesario una particion (para el /)\
La respuesta rápida y fácil es: **recomendable al menos dos, una para el sistema/datos(Primaria) y otra para Swap**. Usualmente se suelen tener tres, una para el sistema/programas (/)(Secundaria), otra para los datos (/home) y otra para swap.

- **Swap:** Una partición SWAP en Linux es un espacio del disco duro utilizado por el sistema operativo como memoria virtual o almacenamiento temporal. Es utilizado cuando no hay espacio suficiente en la memoria RAM para guardar datos de aplicaciones, por lo que la parición SWAP cumple la función de emular RAM en disco

#### `d)` Ejemplifique diversos casos de particionamiento dependiendo del tipo de tarea que se deba realizar en su sistema operativo.

Son las primarias y secundarias, que para mas detalle se encuentra en la pregunta `a)`

#### `e)` ¿Qué tipo de software para particionar existe? Menciónelos y compare

Existen 2 tipos:
- **Destructivos:** permiten crear y eliminar particiones (fdisk)
- **No destructivo:** permiten crear, eliminar y modificar particiones

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `8)` Arranque (bootstrap) de un Sistema Operativo:

#### `a)` ¿Qué es el BIOS? ¿Qué tarea realiza?

BIOS es el responsable de iniciar la carga del SO a través del MBC, el cual es un pequeño código para el arranque del sistema operativo

#### `b)` ¿Qué es UEFI? ¿Cuál es su función?

UEFI  es el código del firmware(sirve para comunicarse con los dispositivos de hardware de un sistema) de un chip en la placa base que proporciona funciones adicionales a las del sistema de entrada/salida básico (BIOS). UEFI ofrece una manera de hacer cosas con el equipo antes de que se cargue un sistema operativo.

#### `c)` ¿Qué es el MBR? ¿Que es el MBC?
MBC, es un pequeño código para el arranque del sistema operativo.

El MBR o **master boot recordes** el primer sector físico de un portador de datos (por ejemplo, un disco duro, una memoria USB) que se utiliza para arrancar (iniciar) los ordenadores. Para esto, el ordenador debe disponer de un BIOS y un sistema operativo x86

#### `d)` ¿A qué hacen referencia las siglas GPT? ¿Qué sustituye? Indique cuál es su formato.

GPT(GUID partition table) especifica la ubicación y formato de la tabla de
particiones en un disco duro. Sustituye al MBR

**GPT lo hace mediante LBA o dirección de bloque lógica** para referirse a la región en donde se encuentran los datos físicamente almacenados en nuestra unidad de almacenamiento

#### `e)` ¿Cuál es la funcionalidad de un “Gestor de Arranque”? ¿Qué tipos existen? ¿Dónde se instalan? Cite gestores de arranque conocidos.

La finalidad del bootloader o gestor de arranque es la de cargar una imagen de
Kernel (sistema operativo) de alguna partición para su ejecución

- Se ejecuta luego del código del BIOS
- Existen 2 modos de instalación:
    - En el MBR (puede llegar a utilizar MBR gap)
    - En el sector de arranque de la partición raíz o activa (Volume
    Boot Record)
- Tipos GRUB, LILO, NTLDR, GAG, YaST, etc
- GRand Unified Bootloader: gestor de arranque múltiple más
utilizado

#### `f)` ¿Cuáles son los pasos que se suceden desde que se prende una computadora hasta que el Sistema Operativo es cargado (proceso de bootstrap)?

- El BIOS se ejecuta, realizando el **POST**, que incluye rutinas que, fijan valores de las señales internas, y ejecutan test internos (RAM, el teclado, etc).
- Se lee el primer sector del disco de inicio llamado **MBR**.
- Se carga en memoria y se ejecuta

####  `g)` Analice el proceso de arranque en GNU/Linux y describa sus principales pasos.

Ell flujo de control durante el arranque es desde el **[BIOS]()**, al **[gestor de arranque]()** y al núcleo (**[kernel]())**). 

- **Kernel:** Este inicia el planificador (para permitir la **[multitarea]()**) y ejecuta el primer **[espacio de usuario]()** (fuera del espacio del núcleo) y el programa de inicialización (que establece el entorno de usuario y permite la interacción del usuario y el **[inicio de sesión]())**, momento en el que el núcleo se inactiva hasta que sea llamado externamente.

- La etapa del **[cargador de arranque]()** no es totalmente necesaria. Determinadas BIOS pueden cargar y pasar el control a Linux sin hacer uso del cargador. Cada proceso de arranque será diferente dependiendo de la arquitectura del **[procesador]()** y el *BIOS*.

- En el apagado, Init es llamado a cerrar toda las funcionalidades del espacio de usuario de una manera controlada, de nuevo a través de secuencias de comandos, tras lo cual el Init termina y el núcleo ejecuta el apagado.

#### `h)` ¿Cuáles son los pasos que se suceden en el proceso de parada (shutdown) de GNU/Linux?

- Se notifica a los usuarios este hecho.
- Se bloquea el sistema para que nadie más pueda acceder exceptuando el **root**.
- Se envía la señal **SIGTERM** (señal de terminación) a todos los procesos no definidos en **inittab**(contiene un registro para cada proceso que define los niveles de ejecución para ese proceso) para el siguiente run level, provocando que terminen su ejecución de modo ordenado.

#### `i)` ¿Es posible tener en una PC GNU/Linux y otro Sistema Operativo instalado? Justifique

Si es posible ya lo vimos anteriormente gracias a las particiones de disco instalar múltiples sistema operativos o a través de maquinas virtuales.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `9)` Archivos

#### `a)` ¿Cómo se identifican los archivos en GNU/Linux?

Un nombre de archivo puede tener entre 1 y 255 caracteres. recomendable emplear los caracteres con significado especial en Linux, que son los siguientes: **= \ ^ ~ ' " ` * ; - ? ( )! & ~ < >**

#### `b)` Investigue el funcionamiento de los editores vi y mcedit, y los comandos cat y more.

- **VI**
Es el editor de texto clásico en UNIX. Puede usarse en cualquier tipo de terminal con un mínimo de teclas.

**MODOS DE VI:**
Existen tres modos o estados de vi:

- **Modo comando:** Este es el modo en el que se encuentra el editor cada vez que se inicia.
Las teclas ejecutan acciones (comandos) que permiten mover el cursor, ejecutar comandos de edición de texto, salir de **vi**, guardar cambios, etc.
- **Modo inserción o texto:** Este es el modo que se usa para insertar el texto. Existen varios
comandos que se pueden utilizar para ingresar a este modo.
- **Modo línea o ex:** Se escriben comandos en la última línea al final de la pantalla.

- **MCEDIT**

Al igual que Vi funciona como gestor de archivos

- **cat**
Es la abreviatura de concatenar. Esto se refiere al hecho de que cat puede ser utilizado para combinar múltiples archivos en un archivo, también se puede utilizar para crear nuevos archivos y para mostrar el contenido de los archivos existentes.

- **more**
Es un comando para ver (pero no modificar) el contenido de un archivo o comando y visualizarlo por páginas.


#### `c)` Cree un archivo llamado “prueba.exe” en su directorio personal usando el vi. El mismo debe contener su número de alumno y su nombre.

- Utilice el siguiente comando para crear un archivo (en este ejemplo, .htaccess). También puede editar un archivo existente con el mismo comando. 

```
vi .htaccess
```

- Pulse la tecla de la letra i para cambiar al modo de entrada.
- Inserte el contenido deseado o realice las modificaciones deseadas.
- Pulse la tecla ESC para salir del modo de entrada.
- Guarde el nuevo archivo o los cambios realizados con el siguiente comando:

```
:wq
```

#### `d)` Investigue el funcionamiento del comando file. Pruébelo con diferentes archivos. ¿Qué diferencia nota?

Permite detectar el tipo y formato de un archivo

```
file nombreArchivo
```

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `10)` Indique qué comando es necesario utilizar para realizar cada una de las siguientes acciones. Investigue su funcionamiento y parámetros más importantes:

`a)` Cree la carpeta ISO2017
```
mkdir "ISO 2022"
```
`b)` Acceda a la carpeta (cd)
```
cd 'ISO 2022'
```
`c)` Cree dos archivos con los nombres iso2017-1 e iso2017-2 (touch)
```
touch ISO2022-1 ISO2022-2
```
`d)` Liste el contenido del directorio actual (ls)
```
ls
```
`e)` Visualizar la ruta donde estoy situado (pwd)
```
pwd
```
`f)` Busque todos los archivos en los que su nombre contiene la cadena “iso*” (find)
```
find ./'ISO 2022' -name "ISO*"
```
`g)` Informar la cantidad de espacio libre en disco (df)
```
df
```
`h)` Verifique los usuarios conectado al sistema (who)
```
who
```
`i)` Acceder a el archivo iso2017-1 e ingresar Nombre y Apellido
```
vi ISO2022-1
```
`j)` Mostrar en pantalla las últimas líneas de un archivo (tail).
```
tail ISO2022-1
```

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `11)` Investigue su funcionamiento y parámetros más importantes:

`a)` shutdown\
El comando de apagado (Shutdown) te permite apagar, reiniciar y detener tu sistema


```
sudo shutdown
sudo shutdown now
sudo shutdown [time]
sudo shutdown 11:50
sudo shutdown +5
sudo shutdown +2 "System update"
sudo shutdown -r
sudo shutdown +3 –r "Update System"
sudo shutdown -c
```

| Options  | Description |
| ------------- | ------------- |
| -a  | To control access to the “shutdown” command, it employs the control access file “/etc/shutdown.allow.”  |
| -k  | Instead of shutting down, deliver warning messages as though the shutdown is actual.  |
| -P  | Tells the system to power down before shutting down.  |
| -f  | It skips fsck after reboot.  |
| -F  | After reboot it forces fsck.  |
| -H  | This option orders the system to descend into the boot the monitor on computers which provide support to it if -h is also supplied.  |

`b)` reboot\
Sirve para reiniciar el equipo
```
sudo reboot
```


`c)` halt\
El comando halt detiene la CPU del ordenador
```
sudo halt
```



`d)` locate\
El comando locate es una alternativa útil, ya que es más rápido que find para realizar búsquedas. Eso se debe a que sólo escanea tu base de datos de Linux en lugar de todo el sistema. Además, la sintaxis es más fácil de escribir
```
sudo apt install locate
```
`e)` uname\
Se usa para verificar la información del sistema
```
uname -s
uname -r
uname -v
uname -n
uname -m
uname -p
uname -i
uname -o
uname -a
```

`f)` gmesg (No entiendo porque esta diferente)
El comando `dmesg` es una utilidad de Linux que muestra mensajes relacionados con el kernel recuperados del búfer de anillo del kernel.
```
dmesg
```

`g)` lspci
El comando lspci lista todos los componentes tipo pci como son las tarjetas de red, tarjetas de sonido o tarjetas de televisión. 
```
lspci
```

`h)` at
Ejecuta comandos a la hora especificada.

`i)` netstat
Los administradores de sistemas utilizan netstat el comando de Linux para ver información sobre las conexiones de red
```
sudo apt install net-tools
```

`j)` mount\
Se utiliza para montar dispositivos y particiones para su uso por el sistema operativo
```
sudo apt install nfs-common
sudo mkdir -p /mnt/client_ shareddirectory
sudo mount [nfs_server]:/[nfs_shareddirectory] [client_mountpoint]
```

`k)` umount\
El comando umount le permite eliminar un sistema de archivos remoto que esté montando en la actualidad\
Ejemplo:
```
umount --all
```

`l)` head\
Este comando sirve principalmente para mostrar al principio de un archivo (de texto) o para reducir a lo especificado los datos mostrados por un comando de Linux


`m)` losetup\
losetup de comandos de Linux se utiliza para fijar el dispositivo de bucle.

**parámetros:**

- -d dispositivo extraíble.
- -e <cifrado> Iniciar cifrado codificación.
- -o <número de traducción> Establecer el número de conversión de datos.

`n)` write\
sirve para enviar un mensaje a otro usuario del sistema.

write usuario
Escribo aquí lo que
quiera que le llegue y luego cierro.
Control-D

`ñ)` mkfs\
Se utiliza para dar formato a un dispositivo de almacenamiento de bloque con un determinado sistema de archivos

`o)` fdisk (con cuidado) \
Permite al usuario crear particiones en el disco duro de la misma manera que su contraparte de MS-DOS

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

# `12)` Investigue su funcionamiento y parámetros más importantes:

- `a)`  Indique en qué directorios se almacenan los comandos mencionados en el ejercicio anterior.

Preguntale a dios.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">