""En este archivo se recogen los diferentes atajos de teclado de Neovim, tanto
""para sus funciones nativas como plugins.

""Se asigna la tecla 'líder' a la coma (,)
let mapleader=','
nnoremap <leader> :!echo "Acabas de pulsar la tecla LÍDER"<CR>

""Guarda el archivo actual
nnoremap <silent> <C-s> :w<CR>

""Recarga el archivo actual
nnoremap <silent> <C-r> :source %<CR>

""Cierra el archivo/búfer
nnoremap <silent> <C-x> :x<CR>

""Selecciona todo el texto del archivo
nnoremap <silent> <C-a> gg<S-v>G<CR>

""Copia la línea actual
nnoremap <silent> yl v$y<CR>

""------------
""  BÚFFERS
""------------
nnoremap <silent> bd :bdelete<CR>
nnoremap <silent> bn :bnext<CR>
nnoremap <silent> bp :bprev<CR>

""------------
""  PESTAÑAS
""------------

""Abre una nueva pestaña
nnoremap <silent> <leader>te :tabedit<CR>

""------------
""  NEOTREE
""------------
nnoremap <silent> <Tab> :NeoTreeFocusToggle<CR> ""Abre/Cierra el NeoTree poniendo el foco en el mismo.

""-----------
""  PLUGINS
""-----------

nnoremap <silent> <leader>pi :PlugInstall<CR> ""Instala los plugins que hay listados en la config del vim-plug
nnoremap <silent> <leader>ps :PlugStatus<CR> ""Muestra el estado de los plugins instalados.

""-------------
""  TELESCOPE
""-------------

nnoremap <silent> <leader>ff :Telescope find_files<CR>
nnoremap <silent> <leader>fb :Telescope file_browser<CR>
nnoremap <silent> <leader>fh :Telescope help_tags<CR>

""--------
""  CODI
""--------

nnoremap <silent> <leader>cc :Codi!!<CR> ""Activa el plugin Codi en el búfer actual
