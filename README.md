# Mi configuración de Neovim

## Índice

+ [Uso](#uso)
+ [¿Qué hay de interesante en esta config?](#que-hay)
+ [Instalación de plugins](#instalacion-plugins)
+ [Plugins](#plugins)
+ [Teclas](#teclas)

## Uso <a name="uso"/>

Cuando se clone este repositorio, hay que hacerlo en la raíz del directorio de usuario, o sea en **/home/[nombre-de-usuario]**.

## ¿Qué hay de interesante en esta config? <a name="que-hay"/>

Esta configuración está pensada para usar el **autocompletado** en diversos lenguajes de programación, así como **snippets** (fragmentos de código) y los **protocolos de servidores de lenguaje**. Esto último permite mejorar la experiencia del desarrollador, mostrando las sintaxis y las definiciones de cada lenguaje de programación.

## 📦Instalación de plugins <a name="instalacion-plugins"/>

La primera vez que se inicia la configuración, el gestor de paquetes **Lazy** instalará automáticamente (o clonará usando **git**) todos los plugins que se mencionan en el archivo **plugins.lua** con sus respectivas configuraciones. En dicho archivo se pueden añadir, modificar y borrar plugins

## 🔌Plugins <a name="plugins"/>
+ **Barras de estado y pestañas**
  + Lua Tabline
+ **Tema de color**
  + Github Nvim Theme (establecido en **"dark_default_high_contrast"**)
+ **Gestor de archivos / Navegación**
  + Neo Tree

## ⌨️ Teclas <a name="teclas"/>
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
