## Preguntas de Repaso Redictado Lia

1. ¿Pueden convivir en un mismo SO procesos batch y procesos interactivos? 

**True**

---

2. El kernel es quien establece la interacción con el usuario. 

**False**

---

3. La interrupción por clock impide que un proceso se apropie del procesador. 

**True**

---

4. Las interrupciones son externas a los procesos. 

**True (Las interrupciones viene de afuera del proceso) SEGUN LA RAE (DANIELA) es falsa (PORQUE LAS INTERRUPCIONES PUEDEN)**

---

5. Un intento de acceder a una dirección ilegal, se trata como un trap. 

True

---

6. Un proceso puede acceder al espacio de direcciones de otro proceso si esta en modo usuario. 

False

---

7. Una llamada al sistema (system call) genera la creación de un proceso del sistema operativo para atender la llamada.

False (Son sentencias y no todas crean procesos)

---

8. Las llamadas al sistema son la forma que tienen las aplicaciones de comunicarse con el sistema operativo. 

True

---

9. Si tengo muchos procesos orientados a entrada/salida, las colas de solicitudes a los dispositivos de E/S estarán vacías. 

False

---

10. EI sistema operativo permite al usuario abstraerse del hardware y su manejo. 

True

---

11. ¿Es lo mismo el kernel que el sistema operativo? 

False, el kernel es el nucleo

---

12. Open → Archivo. Se implementa con una system call?. 

True (Porque necesito acceder a la tabla de archivos existentes)

---

13. Date se implementa con una system call? 

True

---

14. Un proceso tiene un stack en modo usuario y un stack en modo supervisor.
Como no se usan a la vez, ocupan la misma dirección de memoria. (V o F) 

False

---

15. El estado del proceso está en la PCB. (V o F). 

True

---

16. Un proceso crea a otro mediante un system call. (V o F) 

True (Fork crea el proceso hijo)

---

17. La cola de procesos está en el disco. (V o F) 

False

---

18. Cuando un proceso se crea, está en disco. (V o F)

True (suponiendo que esta en estado de nuevo)

---

19. El proceso padre crea al hijo en su propio espacio de direcciones. (V o F)

False (Cada proceso tiene su propio espacio de direcciones)

---

20. Las tablas de archivos correspondientes a los archivos abiertos que está usando un proceso, forman parte de su contexto. (V o F)

True (Segun la RAE) | Dudas -> (False porque la tabla esta desde antes)

---

21. La PCB se crea a partir que el proceso se carga en memoria. (V o F)

False 

---

22. Luego de la system call fork, el proceso padre y el proceso hijo comparten la
PCB. (V o F)

False

---

23. Si no fuera por la **E/S**, los procesos no necesitarían system calls. (V o F)

False

---

24. En modo supervisor, es posible acceder al espacio de direcciones de cualquier
proceso. (V o F)

True

---

25. El contexto de un proceso es lo mismo que su espacio de direcciones. (V o F)

False

---

26. Para implementar prioridad dinámica o aging por inanición, se tiene en cuenta:
- **a) cuanto tiempo de CPU usó el proceso recientemente**
- b) cuanto tiempo de espera tiene acumulado

---

27. Un cambio de modo involucra un cambio de contexto.

False (El cambio de contexto es entre procesos)

---

28. Un cambio de contexto involucra un cambio de modo.

True

---

29. Es lo mismo cambio de contexto que cambio de proceso?

True

---

30. Es lo mismo cambio de contexto que cambio de modo?

False

---

31. Un fork exitoso produce cambios en la PCB del padre pues se almacena PID del hijo.

---

32. En el mecanismo de manejo de memoria con particiones, el espacio de direcciones de un proceso está delimitado por los registros Base y Limit

---

33. El fork devuelve dos valores: 0 al proceso hijo y N al proceso padre.

---

34. Un acceso no autorizado a memoria es detectado por:
a) El S.O. 
**b) El Hardware**
c) No puede detectarse

---

35. Las Systems Calls se ejecutan en **Modo Privilegiado**. V o F

True

---

36. Ante un cambio de contexto, indique cuáles de estos elementos se guarda en la PCB:
- a)tabla de páginas;
- **b)pila de usuario;**
- **c)tabla de archivos abiertos;**
- **d) estado del proceso**

---

37. El chequeo de la existencia de una interrupción se realiza entre los pasos de “Fetch” y “Execute” de cada ciclo de instrucción

True

---

38. El vector de interrupciones siempre debe estar en memoria

True

---

39. Un system call fork, provocará cambio de contexto

True 

---

40. Un proceso swappeado en estado listo (ready to run) no compite por CPU.

True

---

41. El scheduler de short term se ejecuta con menos frecuencia que el de long term.

Falso

---

42. El cambio de contexto lo hace el scheduler de long term.

Falso, lo hace el dispacher

---

43. Cuando a un proceso se le termina su quantum, pasa a estado de espera.

False

---

44. El scheduler de medium term es quien decide el cambio entre nuevo y ready.

False

---

45. El scheduler de short term es quien hace pasar al proceso de estado ready a
running.

True

---

46. En la planificación de CPU se trata de maximizar la productividad, minimizar el
tiempo de respuesta.

True

---

47. El tiempo de retorno, es el tiempo desde que se inicia hasta que termina,
sumando cpu, espera en colas.

True

---

48. Supongamos que un proceso está en espera swappeado y se cumple el evento
por el que estaba esperando. El proceso queda en estado de listo en memoria
secundaria.

True

---

49. Según el diagrama visto: puede un proceso pasar del estado de nuevo (creado)
a listo swappeado? SI – NO

False

![](2023-06-04-20-57-56.png)

---

50. Un proceso puede pasar de esperar en memoria secundaria a esperar en
memoria principal.

False

---

51. El scheduler de medium term maneja el grado de multiprogramación.

True segun Dani (False se encarga el loader segun la verdad)

---

52. El disco permitió implementar la planificación de procesos.

True porque los programas vienen en discos

---

53. En un sistema monoprocesador, cuando se atiende una interrupción (se
ejecuta una rutina de manejo de interrupciones) todos los procesos quedan en
espera.

False (Algunos pueden quedar en estado de listo)

---

54. En un ambiente con procesos interactivos y batch, que maneja colas multinivel.
¿Conviene usar algoritmos apropiativos?

True

---

55. Indique cuál es la combinación que representa la sucesión de actividades que realiza el dispatcher:
- **a) Cambio de contexto;**
- **b) Cambio de Modo usuario;**
- c) Salto a primer/próxima instrucción a ejecutar;
- **d) Carga en memoria del proceso elegido**

---

56. Indique que puede ocurrir cuando solamente se tienen muchos procesos orientados a I/O:
- a) Se incrementa el uso de CPU;
- **b) Se saturan las colas de dispositivo;**

---

57. Cuando se carga un proceso en memoria, se hace en modo usuario.

False

---

58. La dirección que se carga en el PC es una dirección física

False

---

59. Para resolver una dirección se va a buscar la dirección de la tabla de páginas a
la PCB

False 

---

60. En el ejecutable no se incluye información relacionada con la carga del trabajo en memoria

False

---

61. En las particiones dinámicas siempre es mejor la opción worst fit para la asignación de particiones.

True

---

62. Relacionar grado de multiprogramación y particiones

True

---

63. ¿Cual es la ventaja de la paginación pura con respecto a cargar todo el proceso
en memoria de forma contigua? Analizar ventajas y desventajas

True (false segun Dani)

---

64. En paginación los procesos utilizan direcciones lógicas que son necesarias
traducir a direcciones físicas.

True 

---

65. Puede ser el desplazamiento dentro de la página, un número mayor que el
tamaño de la página?

False

---

66. Qué información es necesario guardar en el entrada de la tabla de páginas en la
paginación pura?

Frame y los bits de control

---

67. Si el tamaño de la dirección es de 32 bits, de los cuales 12 son para direccionar
página, y la entrada de la tabla de páginas es de 4 bytes, indicar: 
- a) cuantos bytes se pueden direccionar de la memoria; 2^32
- b) cuál es la cantidad máxima de entradas en la tabla de páginas; 2^12
- c) cual es el tamaño máximo de la tabla de páginas. 2^12 * 4

---