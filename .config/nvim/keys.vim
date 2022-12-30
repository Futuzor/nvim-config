""En este archivo se recogen los diferentes atajos de teclado de Neovim, tanto
""para sus funciones nativas como plugins.

""Se asigna la tecla 'líder' a la coma (,)
let mapleader=','
nmap <leader> :!echo "Acabas de pulsar la tecla LÍDER"<CR>

""Guarda el archivo actual
nmap <silent> <C-s> :w<CR>

""Recarga el archivo actual
nmap <silent> <C-r> :source %<CR>

""Cierra el archivo/búfer
nmap <silent> <C-x> :x<CR>

""Selecciona todo el texto del archivo
nmap <silent> <C-a> gg<S-v>G<CR>

""Copia la línea actual
nmap <silent> yl v$y<CR>

""------------
""  BÚFFERS
""------------
nmap <silent> bd :bdelete<CR>
nmap <silent> bn :bnext<CR>
nmap <silent> bp :bprev<CR>

""------------
""  PESTAÑAS
""------------

""Abre una nueva pestaña
nmap <silent> <leader>te :tabedit<CR>

""------------
""  NEOTREE
""------------

""Abre/Cierra el NeoTree poniendo el foco en el mismo..
nmap <silent> <Tab> :NeoTreeFocusToggle<CR>

""-----------
""  PLUGINS
""-----------

""Instala los plugins que hay listados en la config del vim-plug
nmap <silent> <leader>pi :PlugInstall<CR>

""Muestra el estado de los plugins instalados.
nmap <silent> <leader>ps :PlugStatus<CR>

""-------------
""  TELESCOPE
""-------------

nmap <silent> <leader>ff :Telescope find_files<CR>
nmap <silent> <leader>fb :Telescope file_browser<CR>
nmap <silent> <leader>fh :Telescope help_tags<CR>

""--------
""  CODI
""--------

""Activa el plugin Codi en el búfer actual
nmap <silent> <leader>cc :Codi!!<CR>
