<h1 align="center"> 🐧 Introducción a Sistemas Operativos</h1>

- [Condiciones de aprobación](/Documentos/)
- [Notion de Iñaki con la Practica 1](https://nova-calcium-fbd.notion.site/Introducci-n-a-Sistemas-Operativos-78eceb443ac04f919bdf3394bbe22d27)

## Parcial 1 (Practica 1,2 y 3) Sistemas Operativos Aplicados

- [Practica 1](/Documentos/Practica1.md)
- [Practica 2](/Documentos/Practica2.md)

## Comandos Frecuentes (debian 11)

### Sudo

Sudo es un programa diseñado para facilitar a los administradores del sistema permitir a algunos usuarios ejecutar órdenes como root (u otro usuario).

- `cat /var/log/syslog` Nos muestra el contenido dentro del fichero
- `more /var/log/syslog` Igual que cat solo que muestra linea por linea 
- `less /var/log/syslog` Nos permite indicar la cantidad de lineas que queremos ver
- `vi nomArchivo` i para cambiar de modo, escribirmos, luego `esc` y despues :wq
- `file nombreArchivo` Nos indica que tipo de contenido posee
- `cd Desktop` Nos permite meternos en un directorio interno
-  `cd ..` Para retroceder en el fichero
- `mkdir "ISO 2022"` Cree la carpeta ISO2017
- `cd 'ISO 2022'` Acceda a la carpeta
- `touch ISO2022-1 ISO2022-2` Crea dos archivos
- `ls` Lista el contenido del directorio actual
- `pwd` Visualiza la ruta donde estoy situado
- `find ./'ISO 2022' -name "ISO*"` Busqua todos los archivos en los que su nombre contiene la cadena “iso*” 
- `df` Informa la cantidad de espacio libre en disco
- `who` Verifiqua los usuarios conectado al sistema
- `tail ISO2022-1` Muestra en pantalla las últimas líneas de un archivo

### ⚠️ Un poco mas peligrosos ⚠️ 
Antes de usar un comando `sudo`, primero tenes que entrar como super-usuario con el comando `su`

- `shutdown` Te permite apagar, reiniciar y detener tu sistema
  - `sudo shutdown` Apaga el sistema luego de 2 minutos aprox
  - `sudo shutdown now` Apaga el sistema ahora
  - `sudo shutdown -r` Reinicia el sistema luego de 2 minutos aprox
  - `sudo shutdown -c` Cancela el reinicio/apagado
- `sudo reboot` Sirve para reiniciar el equipo
- `sudo halt` El comando halt detiene la CPU del ordenador
- `locate nomArchivo` es como el find pero mas canchero (`sudo apt install locate`) 
- `uname -letra` verifica la información del sistema (s, r, v, n, m, p, i, o, **[a]()**)
 uname\
Se usa para 


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


```
ls /etc/rc0.d
sudo runlevel
sudo telinit 2
```