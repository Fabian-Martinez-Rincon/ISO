### `1)` Características de **GNU/Linux**:

- `a)` Mencione y explique las características más relevantes de **GNU/Linux**.
    - `Gratruito`: Linux es un sistema operativo completamente gratuito. Además, cuenta con múltiples distribuciones diferentes, para que cada usuario escoja el sistema que mejor se adapta a sus necesidades.  
    - `Codigo abierto e independiente`:
- `b)` Mencione otros sistemas operativos y compárelos con GNU/Linux en cuanto a los puntos mencionados en el inciso a.
- `c)` ¿Qué es **GNU**?
- `d)` Indique una breve historia sobre la evolución del proyecto *GNU*
- `e)` Explique qué es la multitarea, e indique si *GNU/Linux* hace uso de ella.
- `f)` ¿Qué es **POSIX**?

### `2)` Distribuciones de **GNU/Linux**:

- `a)` ¿Qué es una distribución de GNU/Linux? Nombre al menos 4 distribuciones de GNU/- Linux y cite diferencias básicas entre ellas.
- `b)` ¿En qué se diferencia una distribución de otra?
- `c)` ¿Qué es Debian? Acceda al sitio 1 e indique cuáles son los objetivos del proyecto y una breve cronología del mismo

### `3)` Estructura de GNU/Linux:

- `a)` Nombre cuales son los 3 componentes fundamentales de GNU/Linux.
- `b)` Mencione y explique la estructura básica del Sistema Operativo GNU/Linux.

### `4)` Kernel: 

- `a)` ¿Qué es? Indique una breve reseña histórica acerca de la evolución del Kernel de GNU/Linux.
- `b)` ¿Cuáles son sus funciones principales?
- `c)` ¿Cuál es la versión actual? ¿Cómo se definía el esquema de versionado del Kernel en versiones anteriores a la 2.4? ¿Qué cambió en el versionado se impuso a partir de la versión 2.6?
- `d)` ¿Es posible tener más de un Kernel de GNU/Linux instalado en la misma máquina?
- `e)` ¿Dónde se encuentra ubicado dentro del File System?
- `f)` ¿El Kernel de GNU/Linux es monolítico? Justifique.

### `5)` Intérprete de comandos (Shell):

- `a)` ¿Qué es?\
[Debian](https://www.debian.org/intro/about)
- `b)` ¿Cuáles son sus funciones?
- `c)` Mencione al menos 3 intérpretes de comandos que posee GNU/Linux y compárelos entre ellos.
- `d)` ¿Dónde se ubican (path) los comandos propios y externos al Shell?
- `e)` ¿Por qué considera que el Shell no es parte del Kernel de GNU/Linux?
- `f)` ¿Es posible definir un intérprete de comandos distinto para cada usuario? ¿Desde dónde se define? ¿Cualquier usuario puede realizar dicha tarea?

### `6)` Sistema de Archivos (File System):

- `a)` ¿Qué es?
- `b)` Mencione sistemas de archivos soportados por GNU/Linux.
- `c)` ¿Es posible visualizar particiones del tipo FAT y NTFS en GNU/Linux?
- `d)`  ¿Cuál es la estructura básica de los File System en GNU/Linux? Mencione los directorios más importantes e indique qué tipo de información se encuentra en ellos. ¿A qué hace referencia la sigla FHS?

### `7)` Particiones:

- `a)`  Definición. Tipos de particiones. Ventajas y Desventajas.
- `b)` ¿Cómo se identifican las particiones en GNU/Linux? (Considere discos **IDE**, **SCSI** y **SATA**).
- `c)` ¿Cuántas particiones son necesarias como mínimo para instalar GNU/Linux? Nómbrelas indicando tipo de partición, identificación, tipo de File System y punto de montaje.
- `d)` Ejemplifique diversos casos de particionamiento dependiendo del tipo de tarea que se deba realizar en su sistema operativo.
- `e)`  ¿Qué tipo de software para particionar existe? Menciónelos y compare

### `8)` Arranque (bootstrap) de un Sistema Operativo:

- `a)` ¿Qué es el BIOS? ¿Qué tarea realiza?
- `b)` ¿Qué es UEFI? ¿Cuál es su función?
- `c)` ¿Qué es el MBR? ¿Que es el MBC?
- `d)` ¿A qué hacen referencia las siglas GPT? ¿Qué sustituye? Indique cuál es su formato.
- `e)` ¿Cuál es la funcionalidad de un “Gestor de Arranque”? ¿Qué tipos existen? ¿Dónde se instalan? Cite gestores de arranque conocidos.
- `f)` ¿Cuáles son los pasos que se suceden desde que se prende una computadora hasta que el Sistema Operativo es cargado (proceso de bootstrap)?
- `g)`  Analice el proceso de arranque en GNU/Linux y describa sus principales pasos
- `h)` ¿Cuáles son los pasos que se suceden en el proceso de parada (shutdown) de GNU/Linux?
- `i)` ¿Es posible tener en una PC GNU/Linux y otro Sistema Operativo instalado? Justifique

### `9)` Archivos

- `a)` ¿Cómo se identifican los archivos en GNU/Linux?
- `b)` Investigue el funcionamiento de los editores vi y mcedit, y los comandos cat y more.
- `c)` Cree un archivo llamado “prueba.exe” en su directorio personal usando el vi. El mismo debe contener su número de alumno y su nombre
- `d)` Investigue el funcionamiento del comando file. Pruébelo con diferentes archivos. ¿Qué diferencia nota?

### `10)` Indique qué comando es necesario utilizar para realizar cada una de las siguientes acciones. Investigue su funcionamiento y parámetros más importantes:

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

### `11)` nvestigue su funcionamiento y parámetros más importantes:

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

### `12)` nvestigue su funcionamiento y parámetros más importantes:

- `a)`  Indique en qué directorios se almacenan los comandos mencionados en el ejercicio anterior.
