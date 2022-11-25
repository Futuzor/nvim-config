let mapleader=','

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
nnoremap <silent> <Leader>te :tabedit<CR>

""-----------
""  PLUGINS
""-----------

nnoremap <silent> pi :PlugInstall<CR>
nnoremap <silent> ps :PlugStatus<CR>
