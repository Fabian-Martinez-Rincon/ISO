
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
| `cat /var/log/syslog`  | Muestra el contenido dentro del fichero  |
| `more /var/log/syslog`  | Igual que cat solo que muestra linea por linea   |
| `less /var/log/syslog`  | Limita la cantidad de lineas visibles  |
| `vi nomArchivo`  | i para cambiar de modo, escribirmos, luego `esc` y despues :wq  |
| `file nombreArchivo`  | Muestra que tipo de contenido posee  |
| `cd Desktop`  | Permite meternos en un directorio  |
| `cd ..`  |  Para retroceder en el directorio  |
| `mkdir "ISO 2022"`  | Crea carpetas  |
| `touch ISO2022-1 ISO2022-2`  | Crea dos archivos  |
| `ls`  | Lista el contenido del directorio actual  |
| `pwd`  | Visualiza la ruta donde estoy situado  |
| `find ./'ISO 2022' -name "ISO*"`  | Busca todos los archivos en los que su nombre contiene la cadena “iso*”   |
| `df`  | Informa la cantidad de espacio libre en disco  |
| `who`  | Verifica los usuarios conectados al sistema  |
| `tail ISO2022-1`  | Muestra en pantalla las últimas líneas de un archivo  |


### ⚠️ Peligrosos ⚠️ 
Antes de usar un comando `sudo`, primero tenes que entrar como super-usuario con el comando `su`

| Comando  | Funcion |
| ------------- | ------------- |
| `shutdown`  | Permite apagar, reiniciar y detener tu sistema  |
| `sudo shutdown`  | Apaga el sistema luego de 2 minutos aprox  |
| `sudo shutdown now`  | Apaga el sistema ahora  |
| `sudo shutdown -r`  | Reinicia el sistema luego de 2 minutos aprox  |
| `sudo shutdown -c`  | Cancela el reinicio/apagado  |
| `sudo reboot`  | Reinicia el equipo  |
| `sudo halt`  | Detiene la CPU del ordenador  |
| `locate nomArchivo`  | Como el find pero mas canchero |
| `sudo apt install locate` | Instalar el locate |
| `uname -letra`  | Verifica la información del sistema (s, r, v, n, m, p, i, o, **[a]()**)  |
| `gmesg`  | No lo pude hacer funcionar (puede ser el `dmesg`?)  |
| `lspci`  | Lista todos los componentes tipo pci    |
| `at 10:00 PM accion`  | (se sale con Ctrl + D) Nos permite programar tareas|
| `sudo apt update, sudo apt install at` | instalar el at |
| `netstat`  | Muestra información sobre las conexiones de red|
| `sudo apt install net-tools` | Instala netstat |
| `mount`  | Permite montar dispositivos/particiones para su uso por el so|
| `sudo apt install nfs-common` | Instala el mount |
| `umount -V`  | Permite eliminar un sArch remoto que esté montando en la actualidad|
| `head nomArchivo`  | Puestra el principio de un archivo |
| `losetup`  | Se utiliza para fijar el dispositivo de bucle   |

## Comandos Practica 2

| Comando  | Funcion |
| ------------- | ------------- |
| `ls /etc/rc0.d` | miramos el conenido de la runlevel 0. Estos scripts |
| `sudo runlevel` | nos muestra la runlevel actual |
| `sudo telinit 2` | nos cambia a la runlevel 2 |
| `sudo adduser usuarioNuevo` | Crea un usuario |
| `sudo groupadd grupode5` | Crea un grupo |
| `sudo groupdel grupode5` | Elimina un grupo |
| `sudo usermod -a -G grupode5 pepe` | Agrega usuarios a un grupo |
| `id -nG iso2022` | Muestra los grupos a los que pertenece un usuario |
| `sudo login iso2022` | Logueo como otro usuario |
| `sudo userdel iso2022` | Elimina un usuario |
| `groups`  | Permite ver los grupos a los que pertenece mi usuario  |
| `su`  | Entrar como super usuario  |
| `who`  | Verifiqua los usuarios conectado al sistema  |
| `passwd`  | Cambia la constraseña del usuario actual  |
| `chmod (u,g,o)(+,=)(w,rw,rwx) archivo.txt` | Nos permite modificar cualquier permiso |
| `chown nombreUsuario nombreArchivo` | Cambia el propietario de un archivo |
| `chgrp` | Igual que chwon sintaxis mas simple |
| `du` | Muestra tamaño de ficheros y carpetas (actual) |
| `rmdir nombreCarpeta` | Elimina una carpeta |
| `cp nombreArchivo nombreCarpeta` | Sirve para copiar archivos y directorios dentro del sArch |
| `mv` | a revisar |
