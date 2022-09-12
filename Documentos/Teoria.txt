## Practica

Conceptos para la instalacion
Particiones: comienzo de cada disco
- Se crea con algun utilitario.
  Para poder formatear (ponele)

que es: 
Formas de particiones:

desventaja:
Problemas al tener que guardar archivos grandes

Tenemos 4 particiones dependiendo del tamaño (siempre son 4 primarias o una extendida)

logica vs primaria
prima: la vas a direccionar directa desde el MBR
ex: tiene su propia tabla, y de hay vas a la particion

Diferencia MBR: podia tener hasta dos terabytes (puede llegar a ser)

Cuando elegimos el sistema operativo, elegimos la cantidad de parcicione con las que queremos trabajar, se puede crear almenos 2.

Parte de disco 
```
/
/root
/
/
```

TODO EN LINUX SON ARCHIVO

swap, lugar en donde se van haciendo las descarga de memoria

swap fail no se ue es?

En un particionador destructivo puedo tener no se que

NO

no destructibo, lo mismo que el destructivo sin necesidad de perder los datos

¿Para que podriamos crear otras aplicaciones?
para tener varios sistemas operativos, para tener las informacion de los usuarios en distintas carpetas

Particiones de discors

A partir de la 5 son particiones extendidas. 

Virtualizadores

Ventaja : Seguridad, mas que nada, ya que si la cago, estoy de manera virtual +Los v
Los virtualizadores se pueden ejecutar en cualquier maquina, ya que no necesita de compatibilidad.

Gestor de arranque

El MBR se ejecuta desde la BIOS.

Grub Legacy

Permite ejecutar sistemas operativos

¿El espacio, porque se dejo libre y se no se deberia usar, porque grup lo utiliza para meter codigo?
Puedo llegar a entender que es para optimizar recursos, pero ¿podria tener un problema?

Grub2
Permite meter interfaces graficas. 

Proceso de arranque

Booteo : gestor de arranque

Todos los comandos que aparecen, son mas que nada para chquear que todo esta funcioonado.

Problemas del arranque basado en BIOS

Extensible Firmware Interface

Lo unico que especifica es la tabla

¿si la tabla del GPT funciona como hashin extensible?

UEFI Forum

Uno puede definir aplicaciones para UEFI 

Conceptos que salieron con UEFI

Secure Boot : compara firmas de los proveedores con los sistemas que se estan ejecutando

Contra: Si la verificacion falla, no podes tener un arranque seguro

Cuando instalas el sistema se genera una firma


---
## Teoria

### Problemas que un SO debe evitar :

Tenemos que evitar el cuello de botella en los registros del cpu.

Como se protegen los espacion de direcciones :

Todos los procesos se puedan "disfrutar". Que cada proceso tenga prioridad (prioridad dinamica). Puede ocurrir que un proceso se siga ejecutando y se apropie con otro proceso.

`Instrucciones privilegiadas`:\
El proceso no puede ejecutarlas dentro de su espacio de direcciones. Al tener un espacio solo para el, no vamos a tener problema

- Problema: \
Que un proceso pueda ejecutar las especiales. Tenemos que limitar la cantidad de instrucciones que el proceso puede ejecutar.

- Problema\
Accede a una direccion que no es propia.
  - Manejar el tema de las prioridades. 
  - Proteger el vector de interrupciones

Tenemos que cuidar el vector de interrupciones de los troyanos\

Modos de ejecucion (estados)


### Apoyo del Harware

- Usuario (El modo simple) No tenemos que confundir con el modo administrador.

Los mde

Para evitar que el proceso pueda ejecutar cosas especiales

### Preguntas para el parcial

- de que manera evita el sistema operativo se apropie de la cpu
- el proceso ejecuta las intrucciones especiales

### Sistemas operativos

Tenemos que pensar en situaciones muy concretas, o buscar el error con el usuario. Entender que es lo que estamos leyendo

### Modos de ejecución

- Modo usuarios\
Puede hacer cualquier cosa dentro de su espacio (literalmente).\
Si en su espacio puede tener una estructura de Kernel, me puede a llegar a pasar lo siguiente:\
Si estas estructuras se corrompen, el SI, puede joderse.\
Los modos de ejecucion ayudan a que tengamos un acceso adecuado.

### Resumen:

Si esta en modo usuarios (tiene que estar en su espacio)
Supervisor (cuando se trabajo con una instruccion especial)

Esa es la principal diferencia


### Tener en cuenta que: 
- Porque hay que levantar el so y tambien levanta las estructuras deKernel

No entendi bien cuando el sistema se pone en modo usuario, ya que al levantar el sistema operativo, eso no es una especie de proceso, o cuando generamos las estructuras de Kernel, tambien no podria ser una especie de proceso. Y si no es un proceso, que nombre tiene esas acciones.


### Seudo codigo de la clase

```
  FD = OPEN (COSA, RO) Si logramos abrir el archivo, tiene los permisos. Se guarda un nro, para identificar los procesos que se utilizaron para poder  ejecutarlo
```

### Ejemplo, si abro otro archivo

¿Queria preguntar si a la hora de guardar los procesos en el Kernel, no estaria bien poder guardar las intrucciones que se ejecutaron antes de poder abrir el archivo, en ese caso, tendriamos las direcciones de la base guardadas y estariamos modificando solo la ultima instruccion?

En caso de que este encriptada, creo que no se puede guardar nada ya que tendriamos que desifrar la id completa.

---

Cuando realiza un OPEN pasa a modo supervisor. Cuando cambia a READ, el bit de modo se pone en modo supervisor

Entonces, cuando vuelve a el modo de usuario, tipo, cuando detecta que tengo que volver al mdo usuario. 

---

En el registro base esta cargada la dir del inicio (ej 2000)

### Protección de Memoria

- Direcciones virtuales


  
- Direcciones fisicas/absolutas

  El controlador de memoria trabaja con Direcciones fisicas

- Resolver la direccion

   Es lo que convierte las direcciones virtuales/logicas en direcciones fisicas.


### Cont


