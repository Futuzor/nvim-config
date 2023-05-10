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
+ **Líneas de indentado**
  + Indent Blankline
+ **Autocompletado**
  + CMP-Buffer y "nvim-cmp"
+ **Snippets**
  + LuaSnip, cmp_luanip y "friendly_snippets"
+ **LSP (Protocolos de servidor de lenguaje)**
  + **Mason** (para gestionar los LSP, linters y formateadores)
  + **LspKind** (para añadir pictogramas del estilo de **VS Code**)
  + **LSPConfig**
+ **Autocerramiento** (para cerrar etiquetas y símbolos)
  + nvim-autopairs
  + nvim-ts-autotag
+ **Atajos de teclado**
  + Which Key
+ **Mejoras en la IU**
  + Noice
  + Nui
  + nvim-notifiy (para añadir notificaciones)

## ⌨️ Teclas <a name="teclas"/>

+ **Tecla líder**: <code>,</code>
+ Guardar archivo/búfer: <code>Ctrl</code> + <code>s</code>
+ Recargar el archivo/búfer: <code>Ctrl</code> + <code>r</code>
+ Seleccionar todo: <code>Ctrl</code> + <code>a</code>
+ Copiar la línea actual: <code>yl</code>
+ Duplicar la línea actual: <code>Ctrl + l</code>
+ Mover línea arriba: <code>Alt + Arriba</code>
+ Mover línea abajo: <code>Alt + Abajo</code>
+ Cerrar archivo/búfer: <code>Ctrl</code> + <code>x</code>
+ Gestor Lazy: <code>"<Leader> l"</code>

### *** Actualización 6/4/2023 ***

He cambiado el gestor de paquetes VimPlug por Lazy, para tratar de mejorar el tiempo de carga de NeoVim. Además se han añadido los plugins **Noice, Nui y Notify** para tener una interfaz más intuitiva.
