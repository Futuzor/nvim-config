""En este archivo se recogen los diferentes atajos de teclado de Neovim, tanto
""para sus funciones nativas como plugins.

""Se asigna la tecla 'líder' a la coma (,)
let mapleader=','

""Guarda el archivo actual
nmap <silent> <c-s> :w<CR>

""Recarga el archivo actual
nmap <silent> <c-r> :source %<CR>

""Cierra el archivo/búfer
nmap <silent> <c-x> :x<CR>

""Selecciona todo el texto del archivo
nmap <silent> <c-a> gg<S-v>G<CR>

""Copia la línea actual
nmap <silent> yl v$y<CR>

""Duplica la línea actual
nmap <silent> <c-l> VyP<CR>

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

""Carga el gestor de plugins Lazy
nmap <silent> <leader>l :Lazy<CR>

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

""Which Key
nmap <silent> <leader>w :WhichKey<CR>
