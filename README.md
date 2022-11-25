# nvim-config
Mi configuración de Neovim

## Uso
Cuando se clone este repositorio, hay que hacerlo en la raíz del directorio de usuario, o sea en **/home/[nombre-de-usuario]**. Luego hay que copiar los directorios en dicho directorio para que cargue la configuración del **Neovim** y el administrador de plugins **Vim-plug**.

## Instalación de plugins
En el archivo **plugins.vim** hay una lista de plugins ordenada por categoría. Para instarlos hay que utilizar el comando **:PlugInstall**. Pero antes de instalar los plugins, **hay que tener instalado previamente el paquete 'git'**, porque lo que hace es clonar los repositorios de los plugins en la carpeta **/home/[usuario]/.local/share/nvim/site/plugged**.
