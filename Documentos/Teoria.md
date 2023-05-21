<h1 align="center"> 🐧 Resumen Teorico</h1>

---

# Sistemas Operativos

- [Objetivos](#sistema-operativo)
- [Funciones principales]()
- [Problemas que debe evitar]()
- [Componentes]()
  - [Kernel (Núcleo)]()
    - [Monolítico]()
    - [Microkernel]()
    - [Monolítico Vs. Microkernel]()
- [Servicios]()
  - [Apoyo del Hardware]()
  - [Modos de ejecución]()
  - [Protección]()
    - [Protección de la memoria]()
    - [Protección de la E/S]()
    - [Protección de la CPU]()
  - [System Calls]()

## Procesos

---

## Sistema Operativo
- Es software
  - Necesita un procesador y memoria para ejecutarse
- Dos Perspectivas
  - De arriba hacia abajo
  - De abajo hacia arriba
- Gestiona el HW
- Controla la ejecución de los procesos
- Interfaz entre aplicaciones y HW
- Actúa como intermediario entre un usuario de una computadora y el HW de la misma

### Perspectiva de arriba hacia abajo
- Abstracción con respecto a la arquitectura
  - **Arquitectura** conjunto de instrucciones, organización de memoria, E/S, estructura de bus
- El SO **oculta** el HW y presenta a los programas como abstracciones más simples de manejar.
- Los programas de aplicación son los **clientes** del SO.
- **Comparación**: uso de escritorio y uso de comandos de texto
- Comodidad, **amigabilidad** (friendliness)

### Perspectiva de Abajo hacia arriaba
- Visión del SO como un administrador de recursos
- Administra los recursos de HW de uno o más procesos
- Provee un conjunto de servicios a los usuarios del sistema
- Maneja la memoria secundaria y dispositivos de I/O.
- Ejecución simultánea de procesos
- Multiplexación en tiempo (CPU) y en espacio (memoria)

### Objetivos 
- **Comodidad** Hacer mas fácil el uso del hardware (PC, servidor, switch, router, controlador específico)
- **Eficiencia** Hacer un uso más eficiente de los recursos del sistema
- **Evolución** Permitir la introducción de nuevas funciones al sistema sin interferir con funciones anteriores

---

## Funciones principales
- Brindar abstracciones de alto nivel a  los procesos de usuario
- Administrar eficientemente el uso de  la CPU
- Administrar eficientemente el uso de la memoria
- Brindar asistencia al proceso de E/S por parte de los procesos

---

## Componentes
- **Kernel**
- **Shell** GUI / CUI o CLI
- **Herramientas** Editores, Compiladores, Librerías, etc.

---

### Kernel (Nucleo)

Es una **`Porción de código`** que se encuentra en memoria principal y se encarga de la administración de los recursos

Implementa servicios esenciales:
- Manejo de memoria 
- Manejo de la CPU
- Administración de procesos
- Comunicación y Concurrencia
- Gestión de la E/S

---

### Servicios

- **Administración y planificación del procesador**
  - Multiplexacióon de la carga de trabajo
  - Imparcialidad, **justicia** en la ejecución (Fairness) 
  - Que no haya bloqueos
  - Manejo de Prioridades
- **Administración de Memoria**
  - Administración de memoria  eficientemente
  - Memoria física vs memoria virtual. Jerarquías de memoria
  - Protección de programas que compiten o se ejecutan concurrentemente
- **Administración del almacenamiento** (Sistema de archivos)
  - Acceso a medios de almacenamiento externos 
- **Administración de dispositivos**
  - Ocultamiento de dependencias de HW
  - Administración  de accesos simultáneos
- **Detección de errores y respuestas**
  - Errores de HW internos y Externos
    - Errores de Memoria/CPU
    - Errores de Dispositivos
  - Errores de SW
    - Errores Aritméticos
    - Acceso no permitido a direcciones de memoria
  - Incapacidad del SO para conceder una solicitud de una aplicación
- **Interacción del Usuario (Shell)**
- **Contabilidad**
  - Recoger estadísticas del uso
  - Monitorear parámetros de rendimiento
  - Anticipar necesidades de mejoras futuras
  - Dar elementos si es necesario facturar  tiempo de procesamiento

---


