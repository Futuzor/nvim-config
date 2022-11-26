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
""  NETRW
""------------
nnoremap <silent> <leader>net :Vexplor<CR>

""-----------
""  PLUGINS
""-----------

nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>ps :PlugStatus<CR>

""-------------
""  TELESCOPE
""-------------

nnoremap <silent> <leader>ff :Telescope find_files<CR>
nnoremap <silent> <leader>fb :Telescope buffers<CR>
nnoremap <silent> <leader>fh :Telescope help_tags<CR>

""--------
""  CODI
""--------

nnoremap <silent> <leader>cc :Codi!!<CR>
