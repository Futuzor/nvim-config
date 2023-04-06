# nvim-config
Mi configuración de Neovim

## Uso
Cuando se clone este repositorio, hay que hacerlo en la raíz del directorio de usuario, o sea en **/home/[nombre-de-usuario]**. Luego hay que copiar los directorios en dicho directorio para que cargue la configuración del **Neovim** y el administrador de plugins [**Vim-plug**](https://github.com/junegunn/vim-plug).

## Instalación de plugins
En el archivo **plugins.vim** hay una lista de plugins ordenada por categoría. Para instarlos hay que utilizar el comando **:PlugInstall**. Pero antes de instalar los plugins, **hay que tener instalado previamente el paquete 'git'**, porque lo que hace es clonar los repositorios de los plugins en la carpeta **/home/[usuario]/.local/share/nvim/site/plugged**.

## ¿Qué hay de interesante en esta config?
Esta configuración está pensada para usar el **autocompletado** en diversos lenguajes de programación, así como **snippets** (fragmentos de código) y los **protocolos de servidores de lenguaje**. Esto último permite mejorar la experiencia del desarrollador, mostrando las sintaxis y las definiciones de cada lenguaje de programación.

## Teclas
+ Tecla líder: <kbd>,</kbd>
+ Guardar archivo/búfer: <kbd>Ctrl</kbd> + <kbd>s</kbd>
+ Recargar el archivo/búfer: <kbd>Ctrl</kbd> + <kbd>r</kbd>
+ Seleccionar todo: <kbd>Ctrl</kbd> + <kbd>a</kbd>
+ Copiar la línea actual: <kbd>yl</kbd>
+ Cerrar archivo/búfer: <kbd>Ctrl</kbd> + <kbd>x</kbd>

### *** Actualización 6/4/2023 ***
He cambiado el gestor de paquetes VimPlug por Lazy, para tratar de mejorar el tiempo de carga de NeoVim. Además se han añadido los plugins **Noice, Nui y Notify** para tener una interfaz más intuitiva.
