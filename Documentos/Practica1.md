<h1 align="center"> Practica 1</h1>
<p><img width="280" align='right' src="../Img/1.png"></p>



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


## Preguntas/Dudas

- No entendi muy bien el concepto de partición logica ya que es completamente igual que la primaria, pero no tiene el gestor de arranque. Entonces, que ventaja tiene? 

---

## `1)` Características de **GNU/Linux**:

`a)` Mencione y explique las características más relevantes de **GNU/Linux**.\
Linux es un sistema operativo completamente libre y gratuito.
- **Gratuito:** Además de ser completamente gratuito, cuenta con múltiples distribuciones, cada una con distintas funcionalidades.
- **Código abierto e independiente:** Cualquiera puede desarrollar y distribuir nuevas funciones, sin necesidad de permisos ni protocolos previos.
- **Muy estable:** Es muy estable :D
- **Altamente seguro:** Como se trata de un software libre, los "hackers" informáticos no tienen mucho interés en desarrollar virus para Linux. 
- **Multitarea y multiusuario:** La potencia de este sistema permite ejecutar a la vez numerosos programas y aplicaciones.

`b)` Mencione otros sistemas operativos y compárelos con GNU/Linux en cuanto a los puntos mencionados en el inciso a.
- A diferencia de Windows y Mac, Linux no pertenece a ninguna compañía, sino que su desarrollo depende de la colaboración de un gran número de empresas y profesionales.
- Su uso esta mas enfocado a programadores dado que sus interfaces son menos amigables.
- Los demás sistemas suelen ser en su mayoría pagos y enfocados mas a lo comercial
- El manejo de permisos de Linux vuelve mas difícil la creación de un virus para dicho sistema mientras que en Windows es mas común.

`c)` ¿Qué es **GNU**?\
GNU es un sistema operativo de software libre

`d)` Indique una breve historia sobre la evolución del proyecto *GNU*\
- El proyecto GNU fue iniciado por Richard M. Stallman con el propósito de crear un sistema operativo completo y libre: el sistema GNU.
- Se baso principalmente en 4 libertades
    - **Libertad 1:** la libertad para ejecutar el programa con cualquier fin.
    - **Libertad 2:** La libertad de estudiar cómo trabaja el programa y de adecuarlo para que haga lo que usuario desee
    - **Libertad 3:** la libertad de redistribuir el programa de manera de colaborar con el resto de la sociedad.
    - **Libertad 4:** la libertad de hacer pública y distribuir a terceros la versión mejorada.

Pondria más pero a nadie le importa la historia de linux salu2.

`e)` Explique qué es la multitarea, e indique si *GNU/Linux* hace uso de ella.\
**Multitarea:** Que permite la ejecución concurrente o simultánea de diversas tareas y procesos.\
LINUX utiliza la llamada multitarea preventiva, la cual **asegura que todos los programas que se están utilizando en un momento dado serán ejecutados**, siendo el sistema operativo el encargado de ceder tiempo de microprocesador a cada programa.

`f)` ¿Qué es **POSIX**?\
Es una norma escrita por la IEEE, que define una interfaz estándar del sistema operativo y el entorno, incluyendo un intérprete de comandos (o "shell")

---

## `2)` Distribuciones de **GNU/Linux**:

`a)` ¿Qué es una distribución de GNU/Linux? Nombre al menos 4 distribuciones de GNU/- Linux y cite diferencias básicas entre ellas.\
Una distribución GNU/Linux es un conjunto de aplicaciones reunidas que permiten brindar mejoras para instalar fácilmente un sistema operativo.

Algunas distribuciones:
- [Debian](http://www.debian.org/)
- [Gentoo](http://www.gentoo.org/)
- [Red Hat Linux](http://www.redhat.com/)
- [Slackware](http://www.slackware.com/)

`b)` ¿En qué se diferencia una distribución de otra?\
Aunque en la mayoría de los casos la principal diferencia es la GUI, o los programas y herramientas que vienen incluidos. Cada distribución Linux tiene un objetivo, que justifica su existencia. Por ejemplo, distribuciones como Ubuntu se centran en ser lo más amigables posible a la hora de instalarse o descargar programas.

`c)` ¿Qué es Debian? Acceda al sitio 1 e indique cuáles son los objetivos del proyecto y una breve cronología del mismo.\
Debian es un sistema operativo libre, desarrollado por un monton de comunistas :D

---

## `3)` Estructura de GNU/Linux:

`a)` Nombre cuales son los 3 componentes fundamentales de GNU/Linux.\

- **El kernel (núcleo)** es el encargado de que el software y el hardware de una computadora puedan trabajar juntos.
- **El Shell (interprete de comandos)** Un intérprete de comandos es un programa que lee las entradas del usuario y las traduce a instrucciones que el sistema es capaz de entender y utilizar.
- **El FileSystem (sistema de archivos)** permite que dentro de un SO se organicen y administren archivos.

`b)` Mencione y explique la estructura básica del Sistema Operativo GNU/Linux.
- **Bootloader (gestor de arranque):** es un sutil software cuya tarea es cargar el sistema operativo de un ordenador en la memoria.
- **Servidor grafico:** es responsable de la activación de la tarjeta de vídeo, ratón y teclado, lo que permite al usuario el uso de interfaces gráficas que son llamadas de Gestores de Ventanas y Entornos de Escritorio
- **Entornos de escritorio:** Estos Entornos de Escritorio proporcionan el fondo de la pantalla, los paneles, las barras de título de las ventanas y mucho más.


---

## `4)` Kernel: 

`a)` ¿Qué es? Indique una breve reseña histórica acerca de la evolución del Kernel de GNU/Linux.\
Se explica arriba y la historia no me importa :D

`b)` ¿Cuáles son sus funciones principales?
- **Gestión de la memoria:** supervisa cuánta memoria se utiliza para almacenar qué tipo de elementos, así como el lugar en que los guarda.
- **Gestión de los procesos:** determina qué procesos pueden usar la unidad central de procesamiento (CPU), cuándo y durante cuánto tiempo.
- **Controladores de dispositivos:** actúa como mediador o intérprete entre el hardware y los procesos.
- **Seguridad y llamadas al sistema:** recibe solicitudes de servicio por parte de los procesos.

`c)` ¿Cuál es la versión actual? ¿Cómo se definía el esquema de versionado del Kernel en versiones anteriores a la 2.4? ¿Qué cambió en el versionado se impuso a partir de la versión 2.6?\
La versión del kernel actual es 5.16. Lo demas a nadie le importa 

`d)` ¿Es posible tener más de un Kernel de GNU/Linux instalado en la misma máquina?\
No, solo puede haber uno.

`e)` ¿Dónde se encuentra ubicado dentro del File System?\
Se encuentra justo en el medio que reside en la memoria e indica qué debe hacer la CPU.  En el directorio boot

`f)` ¿El Kernel de GNU/Linux es monolítico? Justifique.\
El kernel de GNU/Linux es monolítico hibrido, esto se refiere a que el núcleo usa mecanismos de arquitectura tando de diseño **monolítico** como **micronúcleo**

---

## `5)` Intérprete de comandos (Shell):

`a)` ¿Qué es?\
El Shell (intérprete de comandos) es el programa que recibe lo que se escribe en la terminal y lo convierte en instrucciones para el sistema operativo.

`b)` ¿Cuáles son sus funciones?\
Una de sus funciones es leer las entradas del usuario y traducirlas a instrucciones que el sistema es capaz de entender y utilizar.

`c)` Mencione al menos 3 intérpretes de comandos que posee GNU/Linux y compárelos entre ellos.\
- **Korn-Shell (ksh):**
- **Bourne-Shell (sh):**
- **C-Shell (csh):**

Estas se diferencian entre sí básicamente en la sintaxis de sus comandos y en la interacción con el usuario.

`d)` ¿Dónde se ubican (path) los comandos propios y externos al Shell?\

- **Propios:** Son basicamente los comandos
- **Externos:** Es cualquier ejecutable

`e)` ¿Por qué considera que el Shell no es parte del Kernel de GNU/Linux?\
La principal razon es que es muy remplazable, en caso de que falle, se puede reiniciar y todo tendria que seguir andando.

`f)` ¿Es posible definir un intérprete de comandos distinto para cada usuario? ¿Desde dónde se define? ¿Cualquier usuario puede realizar dicha tarea?\
Cada usuario posee una shell por defecto , la cual puede definirse por un usuario con derechos privilegiados.

---

## `6)` Sistema de Archivos (File System):

`a)` ¿Qué es?\
Es la forma en que dentro de un SO se organizan y se administran los archivos.
- **Métodos de acceso:** cómo se acceden los datos contenidos en el archivo.
- **Manejo de archivos:** cómo actúan los mecanismos para almacenar, referenciar, compartir y proteger los archivos.
- **Manejo de la memoria secundaria:** Cómo se administra el espacio para los archivos en memoria secundaria.
- **Mecanismos de integridad:** con qué métodos se garantiza la incorruptibilidad del archivo.

`b)` Mencione sistemas de archivos soportados por GNU/Linux.\
A continuación veremos una lista con algunos filesystem utilizados hoy en día:
- ext2
- ext3
- ReiserFS
- XFS

`c)` ¿Es posible visualizar particiones del tipo FAT y NTFS en GNU/Linux?\
SI\
`d)`  ¿Cuál es la estructura básica de los File System en GNU/Linux? Mencione los directorios más importantes e indique qué tipo de información se encuentra en ellos. ¿A qué hace referencia la sigla FHS?\
La estructura basica en la que se organizan es **jerarquica de tipo arbol**. El nivel más alto del sistema de ficheros es / o directorio raíz. Todos los demás ficheros y directorios están bajo el directorio raíz. Por ejemplo, /home/jebediah/cheeses.

FHS define los directorios principales y sus contenidos en el sistema operativo LinuxGNU/Linux 

---

## `7)` Particiones:

`a)`  Definición. Tipos de particiones. Ventajas y Desventajas.\
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

`b)` ¿Cómo se identifican las particiones en GNU/Linux? (Considere discos **IDE**, **SCSI** y **SATA**).\
Las particiones en cada disco son representadas añadiendo un número decimal al nombre del disco: sda1 y sda2 representan a la primera y segunda partición en la primera unidad de disco SCSI en el sistema.

`c)` ¿Cuántas particiones son necesarias como mínimo para instalar GNU/Linux? Nómbrelas indicando tipo de partición, identificación, tipo de File System y punto de montaje.\
Como mınimo es necesario una particion (para el /)\
La respuesta rápida y fácil es: **recomendable al menos dos, una para el sistema/datos(Primaria) y otra para Swap**. Usualmente se suelen tener tres, una para el sistema/programas (/)(Secundaria), otra para los datos (/home) y otra para swap.

- **Swap:** Una partición SWAP en Linux es un espacio del disco duro utilizado por el sistema operativo como memoria virtual o almacenamiento temporal. Es utilizado cuando no hay espacio suficiente en la memoria RAM para guardar datos de aplicaciones, por lo que la parición SWAP cumple la función de emular RAM en disco

`d)` Ejemplifique diversos casos de particionamiento dependiendo del tipo de tarea que se deba realizar en su sistema operativo.\
Son las primarias y secundarias, que para mas detalle se encuentra en la pregunta `a)`

`e)`  ¿Qué tipo de software para particionar existe? Menciónelos y compare\

Existen 2 tipos:
- **Destructivos:** permiten crear y eliminar particiones (fdisk)
- **No destructivo:** permiten crear, eliminar y modificar particiones

---

## `8)` Arranque (bootstrap) de un Sistema Operativo:

- `a)` ¿Qué es el BIOS? ¿Qué tarea realiza?
- `b)` ¿Qué es UEFI? ¿Cuál es su función?
- `c)` ¿Qué es el MBR? ¿Que es el MBC?
- `d)` ¿A qué hacen referencia las siglas GPT? ¿Qué sustituye? Indique cuál es su formato.
- `e)` ¿Cuál es la funcionalidad de un “Gestor de Arranque”? ¿Qué tipos existen? ¿Dónde se instalan? Cite gestores de arranque conocidos.
- `f)` ¿Cuáles son los pasos que se suceden desde que se prende una computadora hasta que el Sistema Operativo es cargado (proceso de bootstrap)?
- `g)`  Analice el proceso de arranque en GNU/Linux y describa sus principales pasos
- `h)` ¿Cuáles son los pasos que se suceden en el proceso de parada (shutdown) de GNU/Linux?
- `i)` ¿Es posible tener en una PC GNU/Linux y otro Sistema Operativo instalado? Justifique

---

## `9)` Archivos

- `a)` ¿Cómo se identifican los archivos en GNU/Linux?
- `b)` Investigue el funcionamiento de los editores vi y mcedit, y los comandos cat y more.
- `c)` Cree un archivo llamado “prueba.exe” en su directorio personal usando el vi. El mismo debe contener su número de alumno y su nombre
- `d)` Investigue el funcionamiento del comando file. Pruébelo con diferentes archivos. ¿Qué diferencia nota?

---

## `10)` Indique qué comando es necesario utilizar para realizar cada una de las siguientes acciones. Investigue su funcionamiento y parámetros más importantes:

- `a)` Cree la carpeta ISO2017
- `b)` Acceda a la carpeta (cd)
- `c)` Cree dos archivos con los nombres iso2017-1 e iso2017-2 (touch)
- `d)` Liste el contenido del directorio actual (ls)
- `e)` Visualizar la ruta donde estoy situado (pwd)
- `f)` Busque todos los archivos en los que su nombre contiene la cadena “iso*” (find)
- `g)` Informar la cantidad de espacio libre en disco (df)
- `h)` Verifique los usuarios conectado al sistema (who)
- `i)` Acceder a el archivo iso2017-1 e ingresar Nombre y Apellido
- `j)` Mostrar en pantalla las últimas líneas de un archivo (tail).

---

## `11)` nvestigue su funcionamiento y parámetros más importantes:

- `a)` shutdown
- `b)` reboot
- `c)` halt
- `d)` locate
- `e)` uname
- `f)` gmesg
- `g)` lspci
- `h)` at
- `i)` netstat
- `j)` mount
- `k)` umount
- `l)` head
- `m)` losetup
- `n)` write
- `ñ)` mkfs
- `o)` fdisk (con cuidado) 

---

# `12)` Investigue su funcionamiento y parámetros más importantes:

- `a)`  Indique en qué directorios se almacenan los comandos mencionados en el ejercicio anterior.
