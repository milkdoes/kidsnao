# Introducción

El propósito del trabajo es programar a Nao para que pueda dar una clase de yoga. Elegimos esta versión del cuerpo porque este cuerpo Nao tiene uniones de hierro que hace que los movimientos sean mucho más flexibles (aunque el trabajo ya está hecho) solo simulado para evitar lesiones).

# Objetivo del trabajo

Este trabajo puede ayudar a las personas con su resistencia. Con Nao, la gente puede hacer ejercicios desde su salón con un maestro de nao que hace las movidas primero y especialmente las personas no tienen que salir de su casa para divertirse. Hemos elegido el yoga porque es una forma de práctica física que utiliza actitudes y técnicas de respiración que contribuyen a nuestro equilibrio interior. Practicar con Nao se vuelve más flexible, más rápido y más accesible, lo que empuja a las personas a mejorar su estilo de vida, su salud y su capacidad de recuperación.

## Desarrollo del software

Elegimos diseñar nuestro proyecto en Choreographe. Es una herramienta que permite el diseño y la estructura de la funcionalidad que deseamos implementar en forma de gráfico. Por lo tanto, es relativamente simple planear y controlar el flujo de control NAO.

Además, las animaciones que tenemos la capacidad de diseñar en Choreographe, establecen la posición de los miembros de NAO en cada cuadro. Además de escribir código en lenguaje Python, un hecho que nos ayudó a definir movimientos difíciles.

## Descripción de la solución

Inicialmente, algunas operaciones de iniciación se realizan en el cuadro de bienvenida. Sigue el calentamiento inicial, lo que lleva a las posturas de yoga donde se involucran movimientos específicos y luego al entrenamiento final de yoga, es decir, una serie de acciones de acabado.
**![](https://lh3.googleusercontent.com/Ni5bwhMKg9wEcgnpr8p6OMBOhG2M-_S786a8cBPMHH4DmyzSwCCEyqArG2GQcHyHFGTV6hseu3ZETVj05g4xA5rxqyQkR36VWez_l8UqTP7syZxSq6AlufF0QPBVMxG8rjO8rtsH)**
Inicialmente coloca al robot en posición vertical y saluda al usuario con animación, pero también un comando de voz. Luego realiza la animación, Limpie la frente, vuelve a poner la NAO para ponerse de pie. A continuación, los movimientos de calentamiento aparecen antes de que lleguemos a las posturas de yoga. Inicialmente le habla al usuario con animación pero también un comando de voz. Luego realiza dos Sits-Ups y animaciones push-up, corriendo repetidamente en el para, y luego pone el NAO de nuevo para ponerse de pie y realiza la animación, Wipe Forehead.
**![](https://lh3.googleusercontent.com/oJH36PrMqexGluOWj3lIAYQkvbHV-Sk7Lgl-2H4cCm57IBCY4xcjiXVPxjvDmrrrm_X1ZMiZQXyFI9vxpFBqeeptadNckhCrga3JZZzYB9ZO4fkAAO_RrFnwYbbbwHhTKbdua94j)**
Comienza con la música y nuestro robot inicia la secuencia de movimientos donde aparece al lado, lo que lleva a establecer Anti-Colisión eventualmente en caso de lesión. Intentamos hacer las transiciones entre los movimientos lo más suaves posibles pero no lo hicimos lo suficiente. Para algunas de las siguientes poses usamos las herramientas proporcionadas por Choregraphe y fueron escritas en scripts de Python.

![](https://lh3.googleusercontent.com/SxAbQys43vwKLVw_KAknBvtIGLNLKBTqVl-OCw1k_6PtREMGeHO7T-UuKeLdeax1GBW8zDW_gOD1vi6E8oUpd1n5WdRw1-BJ7qPZBZB4TJUtBPHQGwzhD8DJAOSnUG6vhn9C40ji)
## Problemas
Era imposible equilibrar el robot de la tercera postura. Probablemente esto se solucione añadiendo más movimientos entre las transiciones para que sea más suave y así asegurarnos de que se equilibre y evite caídas.

## Extensiones de trabajo
Inicialmente, a medida que mejora el equilibrio del robot Nao, el proyecto actual se puede mejorar agregando varias extensiones. Después de haber implementado algunas posturas de yoga podría agregarse para que Nao pueda completar un programa más largo.

Podríamos agregar más transiciones entre movimientos para evitar daños y así hacerlo más suave.

El robot no se mueve como un hombre por lo que no es realista. Esto se debe principalmente al hecho de que Nao no tiene articulaciones en la cintura y las caderas. Debido a esto, Nao tiene problemas para hacer algunas paradas perfectamente. Es por eso que utilizan principalmente las articulaciones de las piernas para obtener sus asientos. Nao también a veces recurre a su "rutina", lo que significa que termina enfrentando una dirección diferente desde la dirección en que comenzó. Esto no es deseable y se podría mejorar colocando más transiciones para evitar giros bruscos entre las posiciones que realmente hacen el giro.

