# Atencion conjunta mediante Inteligencia artificial y el robot NAO para niños con TEA.
**Tecnológico Nacional De México**\
**Instituto Tecnológico De Tijuana**\
**Subdirección Académica**\
**Departamento De Sistemas Y Computación**\
**Semestre Enero-Junio 2018**\
**Ingeniería En Sistemas Computacionales**\
**Inteligencia Artificial SCC-1002SC9A**\
**Doc. Arnulfo Alanis Garza**

# Contenidos
<!-- vim-markdown-toc GFM -->

* [Integrantes](#integrantes)
* [Instrucciones generales](#instrucciones-generales)
	* [Despues de clonar](#despues-de-clonar)
	* [Uso de git](#uso-de-git)
		* [Siempre bajar cambios antes de hacer algo](#siempre-bajar-cambios-antes-de-hacer-algo)
		* [Revisando que cambios hiciste](#revisando-que-cambios-hiciste)
		* [Subiendo cambios](#subiendo-cambios)
		* [Extra](#extra)
* [Documentación](#documentación)
* [Pagina web](#pagina-web)
* [Base de datos](#base-de-datos)
* [Directorios y Ramams de Git](#directorios-y-ramams-de-git)
* [Preguntas tal vez frecuentes (FAQ)](#preguntas-tal-vez-frecuentes-faq)
	* [Que es esto?](#que-es-esto)
	* [Porque no puedo hacer **push**?](#porque-no-puedo-hacer-push)
	* [Pasare la materia?](#pasare-la-materia)
* [Referencias](#referencias)

<!-- vim-markdown-toc -->

# Integrantes
**Serie A Grupo B/2**

| # control | Nombre                           | Correo Institucional                 | Rol          | Usuario en github |
| --------- | -------------------------------- | ------------------------------------ | ------------ | ----------------- |
| 15210003  | Camacho Velázquez Hector Ernesto | hector.camacho@tectijuana.edu.mx     | Documentador | hectorcave        |
| 14211440  | Hernandez Bocanegra Miguel Angel | miguel.hernandez@tectijuana.edu.mx   | Analista     | ISCMaiky          |
| 13211451  | Mendoza Muñoz Adrian             | adrian.mendoza@tectijuana.edu.mx     | Analista     | 4dri4n            |
| 14212044  | Montoya Heredia Victor Jehovany  | victor.montoya@tectijuana.edu.mx     | Documentador | jehovany2010      |
| 13211483  | Morales Bueno Damaris Eleanne    | damaris.morales17@tectijuana.edu.mx  | Diseñador    | DEleanne          |
| 13211447  | Navarro Mancillas Guillermo      | guillermo.navarro@tectijuana.edu.mx  | Programador  | guille1194        |
| 11211238  | Ochoa Miguel Angel               | miguel.ochoa18@tectijuana.edu.mx     | Diseñador    | miguelangelochoa  |
| 13210359  | Ortega Garcia Alonso             | alonso.ortega17@tectijuana.edu.mx    | Diseñador    | alonsoitt         |
| 13211398  | Perez Castellanos Alma Karen     | alma.perez16@tectijuana.edu.mx       | Documentador | karen1321         |
| 13211137  | Ramirez Vazquez Luis Fernando    | luis.ramirez@tectijuana.edu.mx       | Programador  | ramirez-luis      |
| 13211430  | Rosales Gutierrez Terius Emilio  | terius.rosales17@tectijuana.edu.mx   | Documentador | rosalesemilio     |
| 13211419  | Salcedo Morales Jose Manuel      | jose.salcedo@tectijuana.edu.mx       | Programador  | milkdoes          |
| 13211467  | Serrano Escalante Roberto        | roberto.serrano@tectijuana.edu.mx    | Analista     | roboserrano       |
| 14211481  | Sevilla Omaña Vanessa Itzayana   | vanessa.sevilla16@tectijuana.edu.mx  | Documentador | vanessasevilla16  |
| 14210515  | Torres Martinez Alejandro        | alejandro.torres17@tectijuana.edu.mx | Diseñador    | atorresmartinez   |
| 13211440  | Verde Manjarrez Juan Carlos      | juan.verde@tectijuana.edu.mx         | Analista     | CarlosVerde       |
| 14212265  | Verdi Vega Evelyn                | evelin.verdi@tectijuana.edu.mx       | Diseñador    | everdi            |
| 14211493  | Villalobos Gamiño Julio          | julio.gamino@tectijuana.edu.mx       | Programador  | juliovillalobos14 |
| 13211106  | Villegas Castillo Omar           | omar.villegas@tectijuana.edu.mx      | Programador  | omar-villegas     |

# Instrucciones generales
Cada tarea se le asignara una rama propia. Pueden apoyar con otras ramas pero
sean considerados a los cambios que haran en la rama.\
Por favor no descarguen el **zip** del repositorio, hagan `clone` para que
puedan hacer operaciones en git.

## Despues de clonar
Inmediatamente cambiar a otra rama con\
```sh
git branch <nombre-rama> origin/<nombre-rama>
git checkout <nombre-rama>
git pull
```
Esto para evitar que hagan cambios accidentales en master.


## Uso de git
### Siempre bajar cambios antes de hacer algo
Antes de hacer algo, un pull para verificar si alguien mas no ha hecho cambios
que te puedan afectar, y si los hay, resolver esos conflictos antes de
continuar.\
Tal vez existan mas problemas en el directorio de **nao** por el hecho de que
los archivos (aunque sean de texto) son muy largos.
```sh
git pull
```

### Revisando que cambios hiciste
Se usa
```sh
git status -suall
```
para poder los nombres de los archivos nuevos creados.
Si quieres ver tambien texto, se usa
```sh
git diff HEAD
```

### Subiendo cambios
En general se realiza:
```sh
git add .
git commit -m "Mensaje de subida."
git push -u origin HEAD
```
**NO HAGAN PUSH A MASTER!**, solo ciertas personas tendran permisos para editar
esta rama. En **master** es la rama mas vieja, pero donde se supone que el
funcionamiento es "estable".

### Extra
Por favor abstenganse de usar los parametros/comandos:
```sh
-f
reset
```
Esto especialmente si vas a empujar cambios al servidor en la nube.

# Documentación
Utilizar archivos con extension **.md** o **pdf** para documentacion a
realizar. O latex compilado a **pdf**.
Por favor solo utilizar archivos de texto para documentar.\
Con esto, no utilizar archivos de **Microsoft Office** (Word, Excel, etcetera)
o de otro formato propietario aparte de **pdf**.\
Esto con el fin de poder ver todos los archivos en la pagina de github sin
tener que descargarlos.

# Pagina web
Por falta de capacidad humana y el hecho de que no es vital para la realizacion
del proyecto, no hay existencia de pagina web. Por favor no dar mas tiempo de
desarrollo en este modulo.

# Base de datos
Para el manejador de base de datos se usara **mysql**.\
Esto con el hecho de que ya se tiene un servidor WAMP que se puede utilizar en
linea.

# Directorios y Ramams de Git
Cada directorio sera especifico para ciertos trabajos.
* db -> Scripts de base de datos.
* doc -> Documentacion de tareas a realizar y trabajos a subir/entregados para el sitio de inteligencia artificial.
* nao -> Archivos de coreografias del nao.
* opencv -> Archivos con los cuales se llevaran a cabo las tareas a realizar con opencv (en nuestro equipo tenemos reconocimiento de color, por ejemplo).
* req -> Scripts/Instrucciones a ejecutar para tener un sistema de desarrollo similar a lo que los demas tienen.
* test -> Pruebas con archivos distintos con los cuales no sabes si pueden ser utiles o no, asi que los dejas aqui y los pruebas aqui. Puede quedarse vacio.

# Preguntas tal vez frecuentes (FAQ)
## Que es esto?
El repositorio para llevar a cabo el proyecto de Atencion conjunta mediante
Inteligencia artificial y el robot NAO para niños con TEA.

## Porque no puedo hacer **push**?
Estas en la rama de master?\
-> Si\
&emsp;**CON UN DEMONIO NO HAGAN PUSH A MASTER!** Hagan

```sh
git checkout <otra-rama>
git merge master
```

&emsp;Y despues pueden hacer el **push** a la rama distinta.\
-> No\
&emsp;Ya eres un colaborador en el repositorio?\
&emsp;--> Si\
&emsp;&emsp;Haz
```sh
git pull
```

&emsp;&emsp;Lee los mensajes de error (si salen), arregla los conflictos de
merge y vulve a hacer push.\
&emsp;--> No\
&emsp;&emsp;Envia/Pide al administrador derechos de edicion (enviando tu usuario
de github).

## Pasare la materia?
Primero colabora en los trabajos a realizar y luego te preguntas eso.\
En si para comprobar su contribucion (si el profesor lo pide) se le pueden
mostrar los commits que hicieron aqui.\
Para los documentadores esta lo que escribieron en cada archivo del drive.

# Referencias

|Nombre|Autor|URL|
|---|---|---|
|Special Movements|University of Notre Dame|https://funlab.nd.edu/the-nao-base/special-movements/|
