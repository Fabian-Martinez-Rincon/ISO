<h1 align="center"> 🐧 Primer Parcial de Promoción
</h1>

---

Cuando  un proceso quiere llamar a una system call, la instrucción que se ejecuta es la que permite cargar en el contador de programa (program counter, PC) del procesador la dirección de la rutina  que corresponde a dicha la system call

Seleccione una:
- Verdadero 
- Falso

```
Cuando un proceso intenta llamar a una syscall lo que se
realiza es indicar el numero correspondiente a la misma y 
luego generar una interrupción por soft (o trap)

La respuesta correcta es 'Falso'
```

---

Cómo detecta el hardware que un proceso en modo usuario está intentando ejecutar una instrucción privilegiada y qué ocurre?

Seleccione una:

- `a)` Se detecta por el código de la instrucción. El HW produce un trap al SO
- `b)` Un proceso en modo usuario puede ejecutar una instrucción privilegiada, por lo tanto no ocurre nada
- `c)` Lo detecta porque esa  instrucción no está en el espacio de direcciones del proceso. Da error y finaliza el proceso
- `d)` Se detecta por el código de la instrucción entonces el HW finaliza el proceso.

```
Respuesta incorrecta.

La respuesta correcta es: Se detecta por el código de la 
instrucción. El HW produce un trap al SO
```

---

En modo usuario no se puede interactuar con el hardware, por ejemplo mandar comandos de impresión a la impresora.

Seleccione una:
- Verdadero 
- Falso

---

```
Las instrucción de E/S se consideran privilegiadas, por lo 
que deben ser ejecutados con el procesador en modo kernel

La respuesta correcta es 'Verdadero'
```

---

En un diseño monolítico del kernel, todos los componentes de un SO se deben ejecutar en modo Kernel.

Seleccione una:
- Verdadero
- Falso 

```
El Kernel es una parte del SO. El diseño monolítico se 
refiere al diseño del Kernel. Otras componentes del SO (como 
el shell) no se ejecutan en modo kernel.

La respuesta correcta es 'Falso'
```

---


La ejecución de las rutinas de atención de interrupciones, referenciadas en el vector de interrupciones, no requieren de CPU.

Seleccione una:
- Verdadero
- Falso 

```
Cualquier módulo de software necesita procesador para 
ejecutarse

La respuesta correcta es 'Falso'
```

--- 

### El control para impedir el acceso indebido a memoria por parte de un proceso es realizado por:

Seleccione una:

- `I)` El Kernel
- `II)` El compilador al momento de crear el programa
- `III)` No es posible que un proceso haga un acceso indebido a memoria
- `IV)` El Hardware

```
El el control del acceso a memoria intervienen registros de 
la CPU. Por eso decimos que "el hardware" es quien interviene

Respuesta correcta

La respuesta correcta es: El Hardware
```

---

En paginación pura indique:

- Es responsabilidad del ____ el subir las paginas correspondientes de cada proceso.
- Es responsabilidad del ____ el mantener el estado de los frames (libre u ocupado)
- Es responsabilidad del ____ determinar la validez o no de una dirección lógica.
- Es responsabilidad del ____ el generar la  tabla de pagina de cada proceso. 

Seleccione:
- Proceso
- Kernel
- Hardware

```
Respuesta parcialmente correcta.

La respuesta correcta es:
En paginación pura indique:

- Es responsabilidad del [Kernel] el subir las paginas correspondientes de 
cada proceso.
- Es responsabilidad del [Kernel] el mantener el estado de los frames 
(libre u ocupado)
- Es responsabilidad del [Hardware] determinar la validez o no de una 
dirección lógica.
- Es responsabilidad del [Kernel] el generar la  tabla de pagina de cada 
proceso. 
```

---

En paginación pura las paginas de un proceso se deben cargar en marcos  (Frames) consecutivos

Seleccione una:
- Verdadero 
- Falso

```
La respuesta correcta es 'Falso'
```

---

En la técnica de particiones dínamicas es Kernel es el responsable de fijar los valores de los registros base y limite de cada proceso, no así en la técnica de particiones fijas cuyos valores son definidos por la MMU.

Seleccione una:
- Verdadero
- Falso 

```
La respuesta correcta es 'Falso'
```

---

Las direcciones de retorno de las rutinas invocadas durante la atención de una SysCall son apiladas en:

Seleccione una:

- `a)` Stack en modo Usuario
- `b)` Stack en modo Kernel
- `c)` Se usa una u otra indistintamente, según la que venia usando el proceso cuando llamo a la SysCall

```
Respuesta correcta
La respuesta correcta es: Stack en modo Kernel
```

---

La System Call fork() devuelve al proceso hijo el PID del proceso padre

Seleccione una:
- Verdadero
- Falso 

---

```
Cuando se crea un proceso, el padre necesita "conocer" la PID 
del hijo, para poder comunicarse con él. Por eso, la system 
call fork() le devuelve, le "informa" al padre, la PID del 
hijo. En cambio, en la PCB del hijo, recientemente creada, ya 
está almacenada la PId del padre, por eso no es necesario 
avisarle.

La respuesta correcta es 'Falso'

```

---

Indique que imprime el siguiente programa:

```C
print 'Anda  a rendir el Primer Parcial de Promo!'
newpid = fork()
if newpid == 0
    print 'Estoy comenzando el Examen'
    execv('ps ')
    print 'Termine el Examen'
endif
print '¿Como te fue?'
exit(0)
print 'Ahora anda a descansa
```

|  En el padre imprime | En el hijo imprime |
| --- | --- |
| Anda a rendir el Primer Parcial de Promo! <br> ¿Como te fue? | Estoy comenzando el Examen <br> Listado de procesos en ejecución de linux |

---

La PCB de un proceso se almacena en el espacio de direcciones del mismo

Seleccione una:
- Verdadero
- Falso 

--- 

Todas las interrupciones por hardware generarán un Cambio de Contexto entre procesos

Seleccione una:
- Verdadero 
- Falso

```
Tené en cuenta que aplicamos el concepto de "context switch" al intercambio 
entre procesos, donde hay un proceso saliente y un proceso entrante. Cuando 
se atiende una rutina de atención de interrupciones, si bien se resguardan 
algunos registros de la CPU para permitir la ejecución de la rutina y no 
perder la infromación del proceso que se estaba ejecutando, no lo 
consideramos un cambio de contexto: el escenario no es entre dos procesos.

La respuesta correcta es 'Falso'
```

---

Si se aplica la planificación apropiativa por prioridades, cuando un proceso que llega a la cola de listos tiene más prioridad que el proceso que se está ejecutando, indique qué ocurre con el proceso que se está ejecutando:

 

Seleccione una:

- `a)` Continua su ejecución
- `b)` Ninguna de las otras opciones
- `c)` Pasa a estado de Espera
- `d)` Es Swapeado
- `e)` Pasa a estado de listo

```
Respuesta incorrecta.

En los criterios apropiativos, se le da al SO la función de decidir, de 
"apropiarse" de la situación. Si el proceso que llega tiene más prioridad, 
se le debe dar la CPU rapidamente. Ese rapidamente es relativo: se debe 
hacer cambio de contexto para salvar la integridad de la ejecución que se 
estaba ejecutando, marcar en la PCB su estado como "listo". No pasa a 
"espera" porque el proceso no está esperando por un evento: sólo necesita 
que le den la CPU para continuar ejecutándose.

La respuesta correcta es:
Pasa a estado de listo
```

---

La PCB es una estructura de datos unica  que utiliza el Kernel para almacenar información de todos los procesos. Contiene una lista encadenada con los atributos de los procesos creados

Seleccione una:
- Verdadero
- Falso 

---

```
El SO crea una PCB por proceso, donde se almacenan los atributos de ese 
proceso. Cuando un procesa crea un proceso hijo, se le asigna su propia PCB 
con sus propios atributos. Aunque haya algunos datos compartidos entre el 
padre y el hijo, las PCB son individuales, propias de cada uno de ellos.

La respuesta correcta es 'Falso'
```

---

Durante un Cambio de Contexto (Context Switch), el despachador (dispatcher) cambia a Modo Usuario luego de realizar el salto a la instrucción del proceso que se va a ejecutar

Seleccione una:
- Verdadero
- Falso 

```
El pasaje a modo usuario debe ser ANTES de que comience a ejecutarse el 
proceso entrante. El dispatcher se ejecuta en modo supervisor y debe  cuando 
se le da el control al nuevo proceso restringirse al modo usuario, para 
limitarlo a que se ejecute dentro de su espacio de direcciones.

La respuesta correcta es 'Falso'
```

---

Un proceso es una entidad abstracta que incluye una sección de Código, una sección de datos y 1 o más stacks

Seleccione una:
- Verdadero
- Falso 

```
La respuesta correcta es 'Verdadero'
```

---

Cuando un proceso quiere invocar una System Call, es el mismo proceso el que realiza el cambio a  modo kernel para luego hacer un CALL a la rutina correspondiente.

Seleccione una:
- Verdadero
- Falso 

```
La respuesta correcta es 'Falso'
```

---

Los algoritmos Apropiativos (Preemtive) para la planificación de la CPU son convenientes  en procesos interactivos 

Seleccione una:
- Verdadero 
- Falso

```
El critero de apropiación le permite al SO decidir si hay que ejecutar un 
proceso de mayor prioridad y darle la CPU rapidamente. No obstante, debe 
hacerse adecuadamente el cambio de contexto con el proceso que está en 
ejecución, para garantizar su integridad cuando se le vuelva a dar la CPU.

Los procesos interactivos necesitan dar respuestas rápidas y por eso son más 
adecuados los criterios de apropiación. 

La respuesta correcta es 'Verdadero'
```

--- 

