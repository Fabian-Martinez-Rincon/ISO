<h1 align="center"> 📓 Practica 2
</h1>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

<div align="center">

[Siguiente](/Documentos/Practica3.md)<br>
[Anterior](/Documentos/Practica1.md)

</div>

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

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

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `1)` Editor de textos:
#### `(a)` Nombre al menos 3 editores de texto que puede utilizar desde la línea de comandos.

-  **Vim:** Es un editor de texto que rompe las bolas pero aprendes
- **GNU Emacs:** La misma basura que vim pero con calculadora y administrador de archivos
- **mcedit:** Te permite navegar entre los ficheros con una interfaz.

---

#### `(b)` ¿En qué se diferencia un editor de texto de los comandos cat, more o less? Enumere los modos de operación que posee el editor de textos vi.

Los **comandos cat, more y less** permiten mostrar el contenido de ficheros de texto desde la línea de comandos en sistemas **Unix**. 

En su lugar los **editores de texto**, justamente nos dejan **editar texto** además de poder **visualizarlo**. 

- `cat` imprimirá por pantalla el contenido del fichero sin ningún tipo de paginación ni posibilidad de modificarlo. Básicamente concatena archivos o la salida estándar en la salida estándar. 
- `more` permite visualizar por pantalla el contenido de un fichero de texto, con la diferencia con el anterior de que `more` página los resultados. Primero mostrará por pantalla todo lo que se pueda visualizar sin hacer scroll y después, pulsando la tecla espacio avanzará de igual modo por el fichero. 
- `less` es el más completo de los tres, pues puede hacer todo lo que hace `more` añadiendo mayor capacidad de navegación por el fichero (avanzar y retroceder) además de que sus comandos están basados en el editor `vi`, del cual se diferencia en que no tiene que leer todo el contenido del fichero antes de ser abierto.

---

`(c)` Nombre los comandos más comunes que se le pueden enviar al editor de textos vi

- [Comandos basicos](https://docs.oracle.com/cd/E19620-01/805-7644/6j76klopr/index.html)

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `2)` Proceso de Arranque SystemV:
#### `(a)` Enumere los pasos del proceso de inicio de un sistema GNU/Linux, desde que se prende la PC hasta que se logra obtener el login en el sistema.

- `Paso 1)` Se empieza a ejecutar el código del BIOS
- `Paso 2)` El BIOS ejecuta el POST
- `Paso 3)` El BIOS lee el sector de arranque (MBR)
- `Paso 4)` Se carga el gestor de arranque (MBC)
- `Paso 5)` El bootloader carga el kernel y el initrd
- `Paso 6)` Se monta el initrd como sistema de archivos raíz y se inicializan componentes esenciales (ej.: scheduler)
- `Paso 7)` El Kernel ejecuta el proceso init y se desmonta el initrd
- `Paso 8)` Se lee el /etc/inittab
- `Paso 9)` Se ejecutan los scripts apuntados por el ***runlevel 1***
- `Paso 10)` El final del ***runlevel 1*** le indica que vaya al runlevel por defecto
- `Paso 11)` Se ejecutan los scripts apuntados por el runlevel por defecto
- `Paso 12)` El sistema est´a listo para usarse

---

#### `(b)` Proceso INIT. ¿Quién lo ejecuta? ¿Cuál es su objetivo?
- Su función es cargar todos los subprocesos necesarios para el correcto funcionamiento del SO
- El proceso init posee el PID 1 y se encuentra en **/sbin/init**
- En SysV se lo configura a traves del archivo **/etc/inittab**
- No tiene padre y es el padre de todos los procesos (pstree)
- Es el encargado de montar los filesystems y de hacer disponible los dem´as dispositivos

---

#### `(c)` Ejecute el comando pstree. ¿Qué es lo que se puede observar a partir de la ejecución de este comando?

El programa pstree facilita información sobre la finalización de una serie de procesos relacionados entre sí, esto es, todos los descendientes de un proceso particular. El programa deja claro desde un principio que proceso es el primario y cuales son los secundarios.

---

#### `(d)` RunLevels. ¿Qué son? ¿Cuál es su objetivo?
- Es el modo en que arranca Linux (3 en Redhat, 2 en Debian)
- El proceso de arranque lo dividimos en niveles
- Cada uno es responsable de levantar (iniciar) o bajar (parar) una serie de servicios
- Un nivel de ejecución es básicamente una configuración de programas y servicios que se ejecutarán orientados a un determinado funcionamiento. 

Explicación más detallada

- `Paso 1)` Cuando un sistema GNU/Linux arranca, primero se carga el kernel del sistema, después se inicia el primer proceso, denominado **init**, que es el responsable de ejecutar y activar el resto del sistema, mediante la gestión de los niveles de ejecución (o **runlevels**).
- `Paso 2)` En el caso del modelo runlevel de SystemV, cuando el proceso init arranca, utiliza un fichero de configuración llamado **/etc/inittab** para decidir el modo de ejecución en el que va a entrar.
- `Paso 3)` En este fichero se define el runlevel por defecto (initdefault) en arranque (por instalación en Fedora el 5, en Debian el 2) y una serie de servicios de terminal por activar para atender la entrada del usuario.
- `Paso 4)` Después, el sistema, según el runlevel escogido, consulta los ficheros contenidos en **/etc/rcn.d**, donde **n** es el número asociado al runlevel (nivel escogido), en el que se encuentra una lista de servicios por activar o parar en caso de que arranquemos en el runlevel, o lo abandonemos
- `Paso 5)` Dentro del directorio encontraremos una serie de **scripts** o enlaces a los scripts que controlan el servicio. Cada script posee un nombre relacionado con el servicio, una S o K inicial que indica si es el script para iniciar **(S)** o matar **(K)** el servicio, y un número que refleja el orden en que se ejecutarán los servicios. 


#### `(e)` ¿A qué hace referencia cada nivel de ejecución según el estándar? [Fuente](https://www.factor.mx/portal/base-de-conocimiento/niveles-de-ejecucion/)

- **`0`** Indica halt o apagado de la máquina.
- **`1`** Indica monousuario.
- **`2`** Indica modo multiusuario sin soporte de red.
- **`3`** Indica modo multiusuario completo con soporte de red.
- **`4`** No usado, con esta opción el administrador puede personalizar el inicio para cargar algún servicio.
- **`5`** Indica multiusuario completo con inicio gráfico (X11)
- **`6`** Indica shutdown y reboot: Se apaga inmediatamente la máquina para reinicio.

Un administrador (root) puede editar el archivo **/etc/inittab** como mejor convenga al usuario, sin embargo también tiene el poder de establecerlo en 0 o en 6. Si se establece en 6, algo que hice como experimento en mi Mandriva, la próxima vez que la máquina se encienda, se leerá el modo 6, shutdown y reboot, y se hará exactamente eso. 

---

#### ¿Dónde se define qué Runlevel ejecutar al iniciar el sistema operativo?

- Se encuentran definidos en **/etc/inittab**
- Los scripts que se ejecutan están en **/etc/init.d**
- En **/etc/rcX.d** (donde X = 0..6) hay links a los archivos del /etc/init.d
- Formato de los links:

```
    [SjK]<orden><nombreScript>
```

- `S)` lanza el script con el argument start
- `K)` lanza el script con el argument stop

---

#### ¿Todas las distribuciones respetan estos estándares?

No todas las distribuciones respetan los estándares.

---

### `(f)` Archivo /etc/inittab. ¿Cuál es su finalidad?  

Es el archivo de configuración de init, que decide el modo de ejecución en el que va a entrar.

Cuando el sistema se arranca, se verifica si existe un runlevel predeterminado en el archivo **/etc/inittab**, si no, se debe introducir por medio de la consola del sistema. Después se procede a ejecutar todos los scripts relativos al runlevel especificado. 

---

#### ¿Qué tipo de información se almacena en el? ¿Cuál es la estructura de la información que en él se almacena?

`/etc/inittab`

**`id:nivelesEjecucion:acción:proceso`**
- **Id**: identifica la entrada en inittab (1 a 4 caracteres)
- **Niveles_ejecucion**: el/los nivel de ejecución en los que se realiza la acción
- **Acción**: describe la acción a realizar
    - **wait**: Se inicia cuando se entra al runlevel e init espera a que termine
    - **initdefault**
    - **ctrlaltdel**: se ejecutará cuando init reciba la señal SIGINT
    - **off, repawn, once, boot, bootwait, powerwait, otras…**
- **Proceso**: el proceso exacto que será ejecutado

---

#### `(g)` Suponga que se encuentra en el runlevel \<X>. Indique qué comando(s) ejecutaría para cambiar al runlevel \<Y>. ¿Este cambio es permanente? ¿Por qué?

Existen dos formas de modificar los runlevels:

- **a) Cambiar de runlevel en ejecución:**
Existe una utilidad para línea de comandos que permite cambiar de un nivel de ejecución a otro. Esta es la herramienta init. Para cambiar de nivel de ejecución sólo hay que ejecutar init seguido del número del runlevel.\
Por ejemplo
- **` init 0`** Cambia al runlevel 0 (se apaga el sistema, equivalente al comando halt).
- **` init 2`** Cambia al runlevel 2.
- **` init 6`** Cambia al runlevel 6 (reinicia el sistema, equivalente al comando reboot). 

También **`telinit`**, nos permite cambiar de nivel de ejecución, sólo tenemos que indicar el número. Por ejemplo, necesitamos hacer una tarea crítica en root; sin usuarios trabajando, podemos hacer un **`tellinit 1`** (también puede usarse S) para pasar a runlevel monousuario, y después de la tarea un tellinit 3 para volver a multiusuario

---

#### **`b) Modificar el runlevel por defecto`**

Por defecto, el sistema suele arrancar en el nivel de ejecución 5 (modo gráfico). Si se quisiera modificar este comportamiento, habría que editar el fichero **`/etc/inittab.`**

Más concretamente, habría que modificar en el fichero /etc/inittab la línea donde el número 5 indica que el nivel de ejecución por defecto es el 5

No es permanente. En el caso de que el runlevel se cambie durante la sección de bash abierta y luego se apague la máquina, cuando se vuelva a prender la maquina se volverá a restablecer al modo que tenga el sistema configurado (por defecto).

En el caso de que se quiera cambiar el modo de arranque del runlevel de manera permanente se tendrá que configurar para que eso suceda. 


```shell
ls /etc/rc0.d
sudo runlevel
sudo telinit 2
```

---

#### `(h)` Scripts RC. ¿Cuál es su finalidad?

Los scripts RC se encargan de cargar o cerrar los servicios necesarios para que el sistema funcione, de acuerdo con el runlevel que se está iniciando. Por ejemplo: lpd (servicio para imprimir), fetchmail (servicio para leer correo-e), sshd (SecureShell para abrir sesiones remotas de una manera segura), networking (abre las conexiones de red).


---

#### ¿Dónde se almacenan? 

Todos estos servicios se encuentran en **/etc/init.d/**

Sin embargo, no todos los servicios se cargan en todos los runlevels. **¿Cómo sabe el RC que servicios tiene que cargar?** Los servicios a cargar se encuentran en el directorio /etc/rcX.d/, donde X es el runlevel a cargar. En realidad, en estos directorios no hay más que enlaces simbólicos a /etc/init.d/

---

#### Cuando un sistema GNU/Linux arranca o se detiene se ejecutan scripts, indique cómo determina qué script ejecutar ante cada acción. ¿Existe un orden para llamarlos? Justifique.

`Orden para llamarlos:`

Los nombres en estos directorios tienen una sintaxis bastante concreta. Empiezan por una letra (S o K) seguidos de un número y el nombre del servicio. La letra S significa iniciar (S de start). La letra K significa acabar (K de kill). El número es de dos dígitos, de 00 a 99 e indica el orden en el que se arrancará el servicio.

- `1)` Ejecuta, por orden de nombre, todos los scripts que comienzan por **K** en el directorio correspondiente al nivel, utilizando como argumento para dicho script la opción **stop**.
- `2)` Ejecuta, por orden de nombre, todos los scripts que comienzan por S en el directorio correspondiente al nivel, utilizando como argumento para dicho script la opción start.

---

### `(i)` ¿Qué es insserv? 

El comando **insserv** se usa para controlar el orden de inicio y detención de los servicios que se encuentran en un sistema Linux. 

#### ¿Para qué se utiliza?

Se utiliza para administrar el orden de los enlaces simbólicos del **`/etc/rcX.d`**, resolviendo las dependencias de forma automática

- Utiliza cabeceras en los scripts del **`/etc/init.d`** que permiten especificar la relación con otros scripts rc -> LSBInit (Linux Standard Based Init)
- Es utilizado por update-rc.d para instalar / remover los links simbólicos

#### ¿Qué ventajas provee respecto de un arranque tradicional?

Mejora la performance del arranque en sistemas multiprocesadores. 

---

#### `(j)` ¿Cómo maneja Upstart el proceso de arranque del sistema?

Upstart fue el primer reemplazo propuesto para SystemV (Ubuntu, Fedora, Debian, etc.). 

- Permite la ejecución de trabajos en forma asincrónica a través de eventos (event-based) como principal diferencia con sysVinit que es estrictamente sincrónico (dependencybased).
- Estos trabajos se denominan **Jobs**.
- El principal objetivo de un job es definir servicios o tareas a ser ejecutadas por init
- Son scripts de texto plano que definen las acciones/tareas (unidad de trabajo) a ejecutar ante determinados eventos.
- Cada job es definido en el **/etc/init (.conf).**
- Suelen ser de dos tipos:
    - **Task**: ejecución finita (task) -> not respawning -> exit 0 o uso de stop.
    - **Service**: ejecución indeterminada  respawning
- Los jobs son ejecutados ante eventos (arranque del equipo, inserción de un dispositivo USB,etc)
    - Es posible crear eventos pero existen algunos de manera estándar.
    - Definido por **start on y stop on.**
- Es compatible con SystemV ! **/etc/init/rc-sysinit.conf**, runlevels, scripts en /etc/init.d, objetivo start y stop. 
- Cada job posee un objetivo (goal start/stop) y un estado (state). 
    - En base a ellos se ejecuta un proceso específico.
    - Al inicio, init emite el evento startup. 
- Un job puede tener uno o varias tareas ejecutables como parte de su ciclo de vida y siempre debe existir la tarea principal
- Las tareas de un job se definen mediante exec o script ... end script
- A través de **initctl** podemos administrar los jobs del demonio de Upstart: 
- **`start <job>`**: cambia el objetivo a start del job especificado
- **`stop <job>`**: cambia el objetivo a stop del job especificado
- **`emit <event>`**: event es emitido causando que otros Jobs cambien a objetivo start o stop 
- No más **/etc/inittab**



---

#### `(k)` Cite las principales diferencias entre SystemV y Upstart.

Upstart se creó como reemplazo del modelo SysVinit. A diferencia de SysVinit, que se creó para operar en un entorno estático Upstart se creó para operar en un entorno flexible.

Upstart proporciona beneficios principales sobre el SysVinit. Estos beneficios son: event-based (principal diferencia con SysVinit que es estrictamente sincrónico - dependecy-based -) es la ejecucion de servicios en forma asincrónica y otro beneficio es el reinicio automático de servicios que dejan de responder de la manera inesperada para el sistema.

Upstart en lugar de usar runlevels, usa jobs que cada uno de ellos posee un objetivo (start/stop y un estado state). Cuando ocurre una interrupción, upstart detecta ese interrupción y realiza los cambios necesarios. 


---

#### `(l)` Qué reemplaza a los scripts rc de SystemV en Upstart? ¿En que ubicación del filesystem se encuentran?

- Los **`jobs`** reemplazan a los scripts de SystemV en Upstart.
- Cada job es definido en el **`/etc/init (.conf)`**

---

#### `(m)` Dado el siguiente job de upstart perteneciente al servicio de base de datos del mysql indique a qué hace referencia cada línea del mismo:

```powershell
# MySQL Servise
description "MySQL Server " {Descripcion}
autor "info autor" {Autor}
start on ( net − device − up {Iniciar base de datos}
        and local −filesystems   {}
        and runlevel [2345])
stop on runlevel [016]
[...]
exec / usr / sbin /mysqld
[...]
```

Este es un archivo de configuración Upstart para el servicio de base de datos MySQL. Cada línea se explica a continuación:

- MySQL Service: un comentario que describe el servicio que se va a iniciar.
- description "MySQL Server": una descripción del servicio, que aparecerá en los registros del sistema. {Descripcion}
- author "info autor": información sobre el autor del archivo de configuración. {Autor}
- start on (net-device-up and local-filesystems and runlevel [2345]): indica que el servicio debe iniciarse cuando la red y el sistema de archivos locales estén disponibles y el sistema se esté ejecutando en el nivel de ejecución 2, 3, 4 o 5. {Iniciar base de datos}
- stop on runlevel [016]: indica que el servicio debe detenerse cuando el sistema se esté ejecutando en el nivel de ejecución 0, 1 o 6.
- exec `/usr/sbin/mysqld`: la línea que indica al sistema qué comando ejecutar para iniciar el servicio MySQL. El comando `/usr/sbin/mysqld` es el comando para iniciar el servidor de base de datos MySQL.

---

#### `(n)` ¿Qué es sytemd?

- Es un sistema que centraliza la administración de demonios y librerias del sistema.
- Puede ser controlado por `systemctl`
- Compatible con SysV -> si es llamado como `init`
- El demonio systemd reemplaza al proceso init -> este pasa a terner PID 1
- Los runlevels son reemplazados por `targets`
- Al igual que con Upstart el archivo `/etc/inittab` no existe más. 

---

#### `(ñ)` ¿A qué hace referencia el concepto de activación de socket en systemd?

Las unidades de trabajo son denominadas units de tipo:

Service: controla un servicio particular (.service)

- **`Socket`** encapsula IPC, un sockect del sistema o file system FIFO (.socket) -> sockect-based activation.
- **`Target`** agrupa units o establece puntos de sincronización durante el booteo (.target)
- **`dependencia`** de unidades
- **`Snapshot`** almacena el estado de un conjunto de unidades que puede ser establecido más tarde (.snapshot) etc. 

Las **units** pueden tener dos estados -> **active** o **inactive** 


 ---

#### `(o)` ¿A qué hace referencia el concepto de cgroup?

Permite organizar un grupo de procesos en forma jerárquica

Agrupa conjunto de procesos relacionados (por ejemplo, un servidor web Apache con sus dependientes).

Tareas que realiza:

- Tracking mediante subsistema cgroups  no se utiliza el PID  doble fork no funciona para escapar de systemd.
- Limitar el uso de recursos. 

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `3)` Usuarios

#### `(a)` ¿Qué archivos son utilizados en un sistema GNU/Linux para guardar la información de los usuarios?

En un sistema GNU/Linux, la información de los usuarios se almacena principalmente en los siguientes archivos:

- **`/etc/passwd`** Este archivo contiene información básica de los usuarios, como sus nombres de usuario, identificación de usuario (UID), identificación de grupo (GID), nombre completo, ruta del directorio de inicio y shell predeterminada.
- **`/etc/shadow`** Este archivo contiene información confidencial de los usuarios, como sus contraseñas encriptadas, tiempo de última modificación de la contraseña, tiempo de expiración, cuenta bloqueada, etc.
- **`/etc/group`** Este archivo contiene información de los grupos de usuarios, como el nombre del grupo, identificación de grupo (GID) y una lista de nombres de usuario que pertenecen a ese grupo.
- **`/etc/gshadow`** Este archivo contiene información confidencial de los grupos de usuarios, como sus contraseñas encriptadas, tiempo de última modificación de la contraseña, tiempo de expiración, cuenta bloqueada, etc.

Es importante destacar que estos archivos son de lectura y escritura solo para el superusuario (root) y que modificarlos sin conocimiento puede comprometer la seguridad del sistema.

---

#### `(b)` ¿A qué hacen referencia las siglas UID y GID? ¿Pueden coexistir UIDs iguales en un sistema GNU/Linux? Justifique.

Los sistemas operativos Linux y Unix utilizan el UID (User ID o ID de usuario) para identificar al usuario particular. El GID (Group ID o ID de grupo) se utiliza para identificar a un grupo. Supongo que no podrian existir dos iguales ya que no los podrias distinguir.

Puede haber un caso que seria el root en el que podemos tener varios usuarios root con el ID 0

---

#### `(c)` ¿Qué es el usuario root? ¿Puede existir más de un usuario con este perfil en GNU/Linux? ¿Cuál es la UID del root?.

En sistemas operativos del tipo Unix, el superusuario o root es el nombre
convencional de la cuenta de usuario que posee todos los derechos en todos los
modos (monousuario o multiusuario). Normalmente es la cuenta de administrador. 

- Su UID (User ID) y GID es 0 (cero).
- Es la única cuenta de usuario con privilegios sobre todo el sistema.
- Acceso total a todos los archivos y directorios con independencia de propietarios y permisos.
- Controla la administración de cuentas de usuarios.
- Ejecuta tareas de mantenimiento del sistema.
- Puede detener el sistema.
- Instala software en el sistema.
- Puede modificar o reconfigurar el kernel, controladores, etc. 


---

#### `(d)` Agregue un nuevo usuario llamado iso2017 a su instalación de GNU/Linux, especifique que su home sea creada en /home/iso_2017, y hágalo miembro del grupo catedra (si no existe, deberá crearlo). Luego, sin iniciar sesión como este usuario cree un archivo en su home personal que le pertenezca. Luego de todo esto, borre el usuario y verifique que no queden registros de él en los archivos de información de los usuarios y grupos.

- `sudo adduser iso2022` creo un usuario y en home le agrego /home/ (contra = nombre para pruebas)
- `sudo gropadd catedra` creo un grupo 
- `sudo usermod -a -G catedra iso2022`
- `id -nG iso2022` menciona los grupos a los que pertenece mi usuario
- `sudo login iso2022` entro como el usuario
- `cd ..` para ir a la home personal y crear un archivo (creo)
- `sudo userdel iso2022` lo elimina pero aun tenemos todos los archivos creados por este

---

#### `(e)` Investigue la funcionalidad y parámetros de los siguientes comandos:
- **`useradd nombre ó adduser nombre`** Crea un nuevo usuario
- **`usermod nombre`** nos permite modificar todos los parámetros de la cuenta de un usuario creado con anterioridad.
- **`userdel nombre`** Elimina un usuario
- **`su`** entrar al super usuario (tenes los permisos de TODO)
- **`groupadd nombre`** te deja crear un grupo
- **`who`** Verifiqua los usuarios conectado al sistema
- **`groupdel nombre`** elimina un grupo
- **`passwd`** de deja cambiar la constraseña del usuario actual

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `4)` FileSystem:

#### `(a)` ¿Cómo son definidos los permisos sobre archivos en un sistema GNU/Linux?

Este mecanismo permite que archivos y directorios “pertenezcan” a un usuario en particular. Por ejemplo, como diego creó archivos en su directorio “home”, diego es el propietario de esos archivos y tiene acceso total a ellos. 

Unix también permite que los archivos sean compartidos entre usuarios y grupos de usuarios. Si diego lo desea, podría restringir el acceso a sus archivos de forma que ningún otro usuario pueda acceder a ellos. 

Los **permisos están divididos en tres tipos: `lectura`, `escritura` y `ejecución`**. Estos permisos pueden ser fijados para tres clases de usuarios: el propietario del archivo o directorio, los integrantes del grupo al que pertenece y todos los demás usuarios. 

- **`lectura`** permite a un usuario leer el contenido del archivo o en el caso de un directorio, listar el contenido del mismo (usando ls).
- **`escritura`** permite a un usuario escribir y modificar el archivo (inclusive, eliminarlo). Para directorios, el permiso de escritura permite crear nuevos archivos o borrar archivos ya existentes en el mismo.
- **`ejecución`** permite a un usuario ejecutar el archivo si es un programa. Para directorios, el permiso de ejecución permite al usuario ingresar al mismo (por ejemplo, con el comando cd). 
- **`Interpretando los permisos de archivos`** Veamos un ejemplo del uso de permisos de archivos. Usando el comando ls con la opción **`-l`** se mostrara un listado **`largo`** de los archivos, el cual incluye los permisos. <br><br>
    ```
    fabrizio@debian: /$ ls -l
    -rwxr-xr-- 1 fabrizio users 505 May 5 19:05 prueba.exe
    ```

El primer campo representa los permisos del archivo. El tercer campo es el propietario del mismo (fabrizio), el cuarto es el grupo al cual pertenece el archivo (users) y el último campo es el nombre del archivo (prueba.exe). 

La cadena **`-rwxr-xr--`** nos informa, por orden, los permisos para el propietario, los usuarios del grupo y el resto de los usuarios.

El primer carácter de la cadena de permisos `(“-”)` representa el tipo de archivo. El `“-”` significa que es un archivo regular, `“d”` indicaría que se trata de un directorio. Los siguientes tres caracteres `(“rwx”)` representan los permisos para el propietario del archivo, fabrizio. Éste tiene permisos para leer `(r)`, escribir `(w)` y ejecutar `(x)` el archivo prueba.exe.

Los siguientes tres caracteres, `“r-x”`, representan los permisos para los miembros del grupo al que pertenece el archivo (en este caso, users). Como sólo aparece `“r-x”` cualquier usuario que pertenezca al grupo users puede leer este archivo, y ejecutarlo, pero no modificarlo.

Los últimos tres caracteres, `“r--”`, representan los permisos para cualquier otro usuario del sistema (que no sea fabrizio ni pertenezca al grupo users). Como sólo está presente la `“r”`, los demás usuarios pueden leer el archivo, pero no escribir en él o ejecutarlo

Aquí tenemos otros ejemplos de permisos de grupo

- **`-rw-------`**
- El propietario del archivo puede leer y escribir. Nadie más puede acceder al archivo.
- **`rwxrwxrwx`**
- Todos los usuarios pueden leer, escribir y ejecutar el archivo. 
- **`drwxr-xr-x`**
- El propietario del directorio puede leer, escribir y entrar al mismo. Los usuarios pertenecientes al grupo del directorio y todos los demás usuarios pueden leer e ingresar al directorio.

---

`(b)` Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con los permisos en GNU/Linux:
- **chmod:** nos permite gestionar permisos
- **chown:** permite cambiar el propietario de un archivo o directorio en sistemas
- **chgrp:** nos permite cambiar el grupo al que pertenece un archivo

`(c)` Al utilizar el comando chmod generalmente se utiliza una notación octal asociada para definir permisos. ¿Qué significa esto? ¿A qué hace referencia cada valor?\
Existen 3 tipos de permisos y se basan en una notacion octal para referenciar a cada uno:

| Permiso  | Valor | Octal |
| ------------- | ------------- | ------------- |
| Lectura  | R  | 4 |
| Escritura  | W  | 2 |
| Ejecucion  | X  | 1 |

`(d)` ¿Existe la posibilidad de que algún usuario del sistema pueda acceder a determinado archivo para el cual no posee permisos? Nombrelo, y realice las pruebas correspondientes.\
El usuario root puede acceder a determinados archivos sin necesidad de poseer permisos o con manejo de interrupciones.

`(e)` Explique los conceptos de “full path name” y “relative path name”. De ejemplos claros de cada uno de ellos.\
full path name es la ruta completa a ese archivo o carpeta desde el directorio / del sistema de archivos. ejemplo `/home/your_username/my_script`

relative path name : Rastrea la ruta desde el directorio actual a través de su padre o sus subdirectorios y archivos. ..\Documents

`(f)` ¿Con qué comando puede determinar en qué directorio se encuentra actualmente? ¿Existe alguna forma de ingresar a su directorio personal sin necesidad de escribir todo el path completo? ¿Podría utilizar la misma idea para acceder a otros directorios? ¿Cómo? Explique con un ejemplo.\
Con el comando pwd podemos saber el directorio actual.

con cd /user volvemos al directorio personal, aunque con solo poner `cd`o `cd ~` ya cumplimos esa función.

Se podría acceder a diferentes directorios gracias la ubicación relativa o atajos ya prestablecidos como `cd ..` para volver al directorio anterior sin necesidad de poner ningún atajo


`(g)` Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con el uso del FileSystem:

- **cd:** Nos permite meternos en un directorio interno
- **umount:** permite eliminar un sistema de archivos remoto que esté montando en la actualidad (no usar xd)
- **mkdir:** Cree una carpeta
- **du:** para ver el tamaño de ficheros y carpetas
- **rmdir:** El comando linux rmdir sirve para borrar directorios
- **df:** Informa la cantidad de espacio libre en disco
- **mount:** Se utiliza para montar dispositivos y particiones para su uso por el sistema operativo (se instala con **sudo apt install nfs-common**)
- **ln:** crear un enlace simbólico al fichero o directorio (como un acceso directo)
- **ls:** Lista el contenido del directorio actual
- **pwd:** Visualiza la ruta donde estoy situado
- **cp:** sirve para copiar archivos y directorios dentro del sistema de archivos
- **mv:** se utiliza para mover o renombrar los archivos y directorios

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `5)` Procesos

`(a)` ¿Qué es un proceso? ¿A que hacen referencia las siglas PID y PPID? ¿Todos los procesos tienen estos atributos en GNU/Linux? Justifique. Indique qué otros atributos tiene un proceso.\
Es un programa en ejecución Para nosotros serán sinónimos: tarea,
job y proceso.

PID significa ID de proceso, que significa Número de identificación para el proceso que se está ejecutando actualmente en la memoria. 2. PPID son las siglas de Parent Process ID, lo que significa que Parent Process es el responsable de crear el proceso actual (Child Process). A través del proceso principal, se creará el proceso secundario.

`(b)` Indique qué comandos se podrían utilizar para ver qué procesos están en ejecución en un sistema GNU/Linux.\
El comando `ps` posee algunas opciones para mostrar los procesos en ejecución

Algunas opciones:

- e o : muestra todos los procesos ax
- u (o  o ) *usuario*: muestra los procesos de un usuario U
    - -user
- u: salida en formato usuario
- j: salida en formato *job* (muestra PID, PPID, etc.)
- f o : salida en formato largo l
- f: muestra un árbol con la jerarquía de procesos
- k (o ) *campo*: ordena la salida por algún campo (p.e. )
    - -sort
    
    ps uxak rss
    
- o (o  o ) *formato*: permite definir el formato de salida
    
    o -format
    
    ps -o ruser,pid,comm=Comando

`(c)` ¿Qué significa que un proceso se está ejecutando en Background? ¿Y en Foreground?\
Si se ejecuta en background hace referencia a **todos aquellos procesos o rutinas de ejecución que se realizan en segundo plano**

**Si se muestra la ejecución del comando dentro de la terminal** se dice que está en el foreground (primer plano).

`(d)` ¿Cómo puedo hacer para ejecutar un proceso en Background? ¿Como puedo hacer para pasar un proceso de background a foreground y viceversa?\
Para colocar un proceso en segundo plano durante su ejecución, se debe utilizar la combinación teclas: Ctrl + Z. Para volver a colocar un proceso en primer plano, se debe ingresar el comando “fg”. Comando para ver procesos que se estén ejecutando: “ps” o con modificador para ver tambien procesos del sistema: “ps ax”.

`(e)` Pipe ( | ). ¿Cuál es su finalidad? Cite ejemplos de su utilización.\
Linux Pipes **te permiten procesar secuencialmente una serie de comandos referentes a un conjunto de datos, o mover eficazmente los datos de un lado a otro entre comandos**, por ejemplo 

ls | more
• Se ejecuta el comando ls y la salida del mismo, es enviada
como entrada del comanda more

`(f)` Redirección. ¿Qué tipo de redirecciones existen? ¿Cuál es su finalidad? Cite ejemplos de utilización.\
Las **redirecciones** consisten en trasladar información de un tipo a otro

Hay 2 tipos de redirecciones 

- Al utilizar redirecciones mediante > (destructiva):
    - Si el archivo de destino no existe, se lo crea
    - Si el archivo existe, se lo trunca y se escribe el nuevo contenido
- Al utilizar redirecciones mediante >> (no destructiva):
    - Si el archivo de destino no existe, se lo crea
    - Si el archivo existe, se agrega la información al final

EJEMPLOS

>  Redirecciona **stdout** hacía un archivo. Lo crea si no existe, si existe lo sobreescribe.
```
ls -l > lista.txt
```

>> (La salida del comando se envía a un archivo en vez de la terminal.)

Redirecciona **stdout** hacía un archivo. Lo crea si no existe, si existe concatena la salida al final de este.

```
ps -ef >> processos.txt
```
(Concatena al archivo procesos.txt la salida del comando.)

`(g)` Comando kill. ¿Cuál es su funcionalidad? Cite ejemplos.\
Sirve para cancelar procesos
kill es un **comando utilizado para enviar mensajes sencillos a los  ejecutándose en el sistema** . Por defecto el mensaje que se envía es la señal de terminación (SIGTERM), que solicita al proceso limpiar su estado y salir.

`kill -l`

Este comando mostrará una página con las diferentes señales del comando kill, con sus nombres y números correspondientes. Si bien hay varias señales disponibles, en la mayoría de los casos se usa SIGKILL (9) y SIGTERM (15).

ejemplo 

`kill 63772` elimina el proceso con id 63772


`(h)` Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con el manejo de procesos en GNU/Linux. Además, compárelos entre ellos:
- **ps:** Muestra información de los procesos activos.
- **kill:** Sirve para cancelar procesos
- **pstree:** muestra un árbol de procesos.
- **killall:** nos permite matar un proceso escribiendo su nombre
- **top:** Sirve para ver los procesos de ejecución del sistema (y más cosas) en tiempo real
- **nice:** Ejecuta un comando con una prioridad determinada, o modifica la prioridad a de un proceso

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `6)` Otros comandos de Linux (Indique funcionalidad y parámetros)

`(a)` ¿A qué hace referencia el concepto de empaquetar archivos en GNU/Linux?\
Es agrupar en un solo fichero varios ficheros y/o directorios

`(b)` Seleccione 4 archivos dentro de algún directorio al que tenga permiso y sume el tamaño de cada uno de estos archivos. Cree un archivo empaquetado conteniendo estos 4 archivos y compare los tamaños de los mismos. ¿Qué característica nota?

```cmd
tar cvf ejercicio6.tar directorioNuevo
```

los archivos empaquetados redujeron su tamaño en comparaciona estar los 4 “sueltos”


`(c)` ¿Qué acciones debe llevar a cabo para comprimir 4 archivos en uno solo? Indique la secuencia de comandos ejecutados.\
Teniendo en cuenta que tenemos 4 archivos en el directorio Descargas/ejercicio6 y nos situamos en Descargas ejecutamos lo siguiente

```shell
tar cvfz archivo.tar.gz ejercicio 6
```
Esto nos dejaria un archivo empaquetado de archivos comprimidos en un solo archivo archivo.tar.gz y para acceder a dicha informacion haremos

```powershell
tar xvfz archivo.tar.gz
```

`(d)` ¿Pueden comprimirse un conjunto de archivos utilizando un único comando?\
Si los archivos están en el mismo directorio utilizamos el comando visto anteriormente

`(e)` Investigue la funcionalidad de los siguientes comandos:
- **tar:** empaqueta/desempaqueta varios archivos en uno solo, puede realizar compresión sin perdida
- **grep:** Buscar todos los archivos de usuarios en los que su nombre contiene la cadena “.conf”
- **gzip:** comprime/descomprime archivos
- **zgrep:** lo mismo que grep pero puede estar comprimido el archivo
- **wc:**  cuenta nuevas líneas, palabras y bytes para los archivos dados

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `7)` Ejercicio

Enunciado: Indique qué acción realiza cada uno de los comandos indicados a continuación considerando su orden. Suponga que se ejecutan desde un usuario que no es root ni pertenece al grupo de root. (Asuma que se encuentra posicionado en el directorio de trabajo del usuario con el que se logueó). En caso de no poder ejecutarse el comando, indique la razón

```shell
l s −l > prueba {No se puede acceder a pruebas pq no existe el fichero}                         
ps > PRUEBA   {crea el archivo prueba con lo obtenido de ps}
chmod 710 prueba  {no existe el archivo prueba dado que se creo en mayusculas}
chown root : root PRUEBA {No poseo los permisos para modificar eso}
chmod 777 PRUEBA  {Concedo todos los permisos tanto al dueño,al grupo y al usuario}
chmod 700 / etc / passwd {No poseo los permisos para modificar eso}
passwd root {No se puede ver la contraseña del root}
rm PRUEBA {elimina el archivo PRUEBA}
man / etc / shadow {nos muestra la documentacion del comando shadow}
find / −name ∗ .conf {Orden no encontrada}
usermod root −d /home/ newroot −L {Orden no encontrada}
cd / root {permiso denegado}
rm ∗ {No se pueden borrar los directorios}
cd / etc {Nos direcciona a la carpeta /etc }
cp ∗ /home −R {no se pueden copiar los directorios}
shutdown {apaga el sistema}
```

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `8)` Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones:

`(a)` Terminar el proceso con PID 23.\
`kill 23`

`(b)` Terminar el proceso llamado init. ¿Qué resultados obtuvo?\
No esta permitido

`(c)` Buscar todos los archivos de usuarios en los que su nombre contiene la cadena “.conf”\
`grep -iRl .conf /home/user`

`(d)` Guardar una lista de procesos en ejecución el archivo /home/\<su nombre de usuario>/procesos\
`ps > /home/user/procesos`

`(e)` Cambiar los permisos del archivo /home/\<su nombre de usuario>/xxxx a:
- **Usuario:** Lectura, escritura, ejecución
- **Grupo:** Lectura, ejecución
- **Otros:** ejecución
`chmod 751 /home/nomUsuario/xxxx`

`(f)` Cambiar los permisos del archivo /home/<su nombre de usuario>/yyyy a:
- **Usuario:** Lectura, escritura.
- **Grupo:** Lectura, ejecución
- **Otros:** Ninguno

`chmod 650 /home/user/yyyy`

`(g)` Borrar todos los archivos del directorio /tmp\
```powershell
cd /tmp
rm *
```

`(h)` Cambiar el propietario del archivo /opt/isodata al usuario iso2010\
`chown iso2010 /opt/isodata`

`(i)` Guardar en el archivo /home/\<su nombre de usuario>/donde el directorio donde me encuentro en este momento, en caso de que el archivo exista no se debe eliminar su contenido anterior.\
`pwd >> /home/user/donde`

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `9)` Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones

`(a)` Ingrese al sistema como usuario “root”\
```powershell
su
```
`(b)` Cree un usuario. Elija como nombre, por convención, la primer letra de su nombre seguida de su apellido. Asígnele una contraseña de acceso.\
```powershell
sudo adduser il {crear}
passwd il {nueva contra}
```

`(c)` ¿Qué archivos fueron modificados luego de crear el usuario y qué directorios se crearon?\
se modificaron los archivos /etc/passwd y se creo el directorio personal del perfil en /home/nombrelegido

`(d)` Crear un directorio en /tmp llamado cursada2017\
```powershell
cd /tmp
mkdir cursada2017
```

`(e)` Copiar todos los archivos de /var/log al directorio antes creado.\
En modo superusuario/root
```powershell
cp /var/log /tmp/cursada2017
```

`(f)` Para el directorio antes creado (y los archivos y subdirectorios contenidos en él) cambiar el propietario y grupo al usuario creado y grupo users.\
`(g)` Agregue permiso total al dueño, de escritura al grupo y escritura y ejecución a todos los demás usuarios para todos los archivos dentro de un directorio en forma recursiva.\
`(h)` Acceda a otra terminal virtual para loguearse con el usuario antes creado.\
`(i)` Una vez logueado con el usuario antes creado, averigüe cuál es el nombre de su terminal.\
`(j)` Verifique la cantidad de procesos activos que hay en el sistema.\
`(k)` Verifiqué la cantidad de usuarios conectados al sistema.\
`(l)` Vuelva a la terminal del usuario root, y envíele un mensaje al usuario anteriormente creado, avisándole que el sistema va a ser apagado.\
`(m)` Apague el sistema

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

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

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

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

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

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

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

## `13)` Indique qué comando/s es necesario para realizar cada una de las acciones de la siguiente secuencia de pasos (considerando su orden de aparición):

`(a)` Cree un directorio llamado logs en el directorio /tmp.\
`(b)` Copie todo el contenido del directorio /var/log en el directorio creado en el punto anterior.\
`(c)` Empaquete el directorio creado en 1, el archivo resultante se debe llamar "misLogs.tar".\
`(d)` Empaquete y comprima el directorio creado en 1, el archivo resultante se debe llamar "misLogs.tar.gz".\
`(e)` Copie los archivos creados en 3 y 4 al directorio de trabajo de su usuario.

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">