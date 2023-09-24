# Mi configuración de Neovim

## Uso
Cuando se clone este repositorio, hay que hacerlo en la raíz del directorio de usuario, o sea en **/home/[nombre-de-usuario]**.

## ¿Qué hay de interesante en esta config?
Esta configuración está pensada para usar el **autocompletado** en diversos lenguajes de programación, así como **snippets** (fragmentos de código) y los **protocolos de servidores de lenguaje**. Esto último permite mejorar la experiencia del desarrollador, mostrando las sintaxis y las definiciones de cada lenguaje de programación.

## Instalación de plugins
La primera vez que se inicia la configuración, el gestor de paquetes **Lazy** instalará automáticamente (o clonará usando **git**) todos los plugins que se mencionan en el archivo **plugins.lua** con sus respectivas configuraciones.

## Teclas
+ **Tecla líder**: <kbd>,</kbd>
+ Guardar archivo/búfer: <kbd>Ctrl</kbd> + <kbd>s</kbd>
+ Recargar el archivo/búfer: <kbd>Ctrl</kbd> + <kbd>r</kbd>
+ Seleccionar todo: <kbd>Ctrl</kbd> + <kbd>a</kbd>
+ Copiar la línea actual: <kbd>yl</kbd>
+ Duplicar la línea actual: <kbd>Ctrl + l</kbd>
+ Cerrar archivo/búfer: <kbd>Ctrl</kbd> + <kbd>x</kbd>
+ Gestor Lazy: <kbd>"<Leader> l"</kbd>

### *** Actualización 6/4/2023 ***
He cambiado el gestor de paquetes VimPlug por Lazy, para tratar de mejorar el tiempo de carga de NeoVim. Además se han añadido los plugins **Noice, Nui y Notify** para tener una interfaz más intuitiva.
