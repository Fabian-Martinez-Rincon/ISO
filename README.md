
<h1 align="center"> 🐧 Introducción a Sistemas Operativos</h1>

- [Condiciones de aprobación](/Documentos/condiciones.md)
- [Notion de Iñaki con la Practica 1](https://nova-calcium-fbd.notion.site/Introducci-n-a-Sistemas-Operativos-78eceb443ac04f919bdf3394bbe22d27)

## Parcial 1 (Practica 1,2 y 3)

- [Practica 1](/Documentos/Practica1.md)
- [Practica 2](/Documentos/Practica2.md)

## Comandos Practica 1 

**Sudo**

Sudo es un programa diseñado para facilitar a los administradores del sistema permitir a algunos usuarios ejecutar órdenes como root (u otro usuario).

| Comando  | Funcion |
| ------------- | ------------- |
| `apt install sudo`  | Instala el sudo en debian 11  |
| `cat /var/log/syslog`  | Nos muestra el contenido dentro del fichero/archivo  |
| `more /var/log/syslog`  | Igual que cat solo que muestra linea por linea   |
| `less /var/log/syslog`  | Nos permite indicar la cantidad de lineas que queremos ver  |
| `vi nomArchivo`  | i para cambiar de modo, escribirmos, luego `esc` y despues :wq  |
| `file nombreArchivo`  | Nos indica que tipo de contenido posee  |
| `cd Desktop`  | Nos permite meternos en un directorio interno  |
| `cd ..`  |  Para retroceder en el fichero  |
| `mkdir "ISO 2022"`  | Cree la carpeta ISO2017  |
| `cd 'ISO 2022'`  | Acceda a la carpeta  |
| `touch ISO2022-1 ISO2022-2`  | Crea dos archivos  |
| `ls`  | Lista el contenido del directorio actual  |
| `pwd`  | Visualiza la ruta donde estoy situado  |
| `find ./'ISO 2022' -name "ISO*"`  | Busqua todos los archivos en los que su nombre contiene la cadena “iso*”   |
| `df`  | Informa la cantidad de espacio libre en disco  |
| `who`  | Verifica los usuarios conectados al sistema  |
| `tail ISO2022-1`  | Muestra en pantalla las últimas líneas de un archivo  |


### ⚠️ Peligrosos ⚠️ 
Antes de usar un comando `sudo`, primero tenes que entrar como super-usuario con el comando `su`

| Comando  | Funcion |
| ------------- | ------------- |
| `shutdown`  | Te permite apagar, reiniciar y detener tu sistema  |
| `sudo shutdown`  | Apaga el sistema luego de 2 minutos aprox  |
| `sudo shutdown now`  | Apaga el sistema ahora  |
| `sudo shutdown -r`  | Reinicia el sistema luego de 2 minutos aprox  |
| `sudo shutdown -c`  | Cancela el reinicio/apagado  |
| `sudo reboot`  | Sirve para reiniciar el equipo  |
| `sudo halt`  | El comando halt detiene la CPU del ordenador  |
| `locate nomArchivo`  | es como el find pero mas canchero (`sudo apt install locate`)   |
| `uname -letra`  | verifica la información del sistema (s, r, v, n, m, p, i, o, **[a]()**)  |
| `gmesg`  | No lo pude hacer funcionar (puede ser el `dmesg`?)  |
| `lspci`  | El comando lspci lista todos los componentes tipo pci    |
| `at 10:00 PM`  | y luego cualquier cosa (se sale con Ctrl + D) Nos permite programar tareas, instalar con `sudo apt update, sudo apt install at`  |
| `netstat`  | muestra información sobre las conexiones de red. Instalar con (`sudo apt install net-tools`)  |
| `mount`  | Se utiliza para montar dispositivos y particiones para su uso por el sistema operativo (se instala con `sudo apt install nfs-common`)  |
| `umount -V`  | permite eliminar un sistema de archivos remoto que esté montando en la actualidad (no usar xd)  |
| `head nomArchivo`  | muestra el principio de un archivo (de texto)  |
| `losetup`  | losetup de comandos de Linux se utiliza para fijar el dispositivo de bucle   |

## Comandos Practica 2

| Comando  | Funcion |
| ------------- | ------------- |
| `ls /etc/rc0.d` | miramos el conenido de la runlevel 0. Estos scripts controlan la detención o inicio de un servicio |
| `sudo runlevel` | nos muestra la runlevel actual (es un estado que le indica al sistema cómo funcionar) |
| `sudo telinit 2` | nos cambia a la runlevel 2 |
| `sudo adduser usuarioNuevo` | Crea un usuario |
| `sudo groupadd grupode5` | crea un grupo |
| `sudo groupdel grupode5` | elimina un grupo |
| `sudo usermod -a -G grupode5 pepe` | agrega usuarios a un grupo |
| `id -nG iso2022` | menciona los grupos a los que pertenece mi usuario |
| `sudo login iso2022` | entro como el usuario |
| `sudo userdel iso2022` | Elimina un usuario |
| `groups`  | Permite ver los grupos a los que pertenece mi usuario  |
| `su`  | Entrar como super usuario  |
| `who`  | Verifiqua los usuarios conectado al sistema  |
| `passwd`  | Cambia la constraseña del usuario actual  |
| `chmod (u,g,o)(+,=)(w,rw,rwx) archivo.txt` | nos permite modificar cualquier permiso |
| `chown nombreUsuario nombreArchivo` | cambia el propietario de un archivo |
| `chgrp` | igual que chwon sintaxis mas simple |
| `du` | para ver el tamaño de ficheros y carpetas (actual) |
| `rmdir nombreCarpeta` | Elimina una carpeta |
| `cp nombreArchivo nombreCarpeta` | Sirve para copiar archivos y directorios dentro del sistema de archivos |
| `mv` | a revisar |
