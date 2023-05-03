--En este archivo se recogen los diferentes atajos de teclado de Neovim, tanto para sus funciones nativas como plugins.
local map = vim.keymap.set

--Se asigna la tecla 'líder' a la coma (,)
vim.g.mapleader=','

--Guarda el archivo actual
map("n", "<c-s>", ":w<cr>", {silent = true, desc = "Guardar archivo actual"})

--Recarga el archivo actual
map("n", "<c-r>", ":source %<cr>", {silent = true, desc = "Recargar archivo actual"})

--Cierra el archivo/búfer
map("n", "<c-x>", ":bdelete<cr>", {silent = true, desc = "Cerrar el archivo/búfer actual"})

--Selecciona todo el texto del archivo
map("n", "<c-a>", "ggVG<cr>", {silent = true, desc = "Seleccionar todo"})

--Copia la línea actual
map("n", "yl", "v$y<cr>", {silent = true, desc = "Copiar línea actual"})

--Duplica la línea actual
map("n", "<c-l>", "VyP<cr>", {silent = true, desc = "Duplicar línea actual"})

--------------
--  BÚFFERS
--------------
map("n", "bp", ":bprev<cr>", {silent = true, desc = "Búfer anterior"})
map("n", "bn", ":bnext<cr>", {silent = true, desc = "Búfer siguiente"})

--------------
--  PESTAÑAS
--------------

--Abre una nueva pestaña
map("n", "<leader>te", ":tabedit<cr>", {silent = true, desc = "Nueva pestaña"})

--------------
--  NEOTREE
--------------

--Abre/Cierra el NeoTree poniendo el foco en el mismo..
map("n", "<Tab>", ":NeoTreeFocusToggle<cr>", {silent = true, desc = "NeoTree"})

-------------
--  PLUGINS
-------------

--Carga el gestor de plugins Lazy
map("n", "<leader>l", ":Lazy<cr>", {silent = true, desc = "Lazy"})

--Carga el gestor de LSP Mason
map("n", "<leader>m", ":Mason<cr>", {silent = true, desc = "Mason"})

---------------
--  TELESCOPE
---------------

map("n", "<leader>ff", ":Telescope find_files<cr>", {silent = true, desc = "Telescope file finder"})
map("n", "<leader>fb", ":Telescope file_browser<cr>", {silent = true, desc = "Telescope file browser"})
map("n", "<leader>fh", ":Telescope help_tags<cr>", {silent = true, desc = "Telescope help tags"})

----------
--  CODI
----------

--Activa el plugin Codi en el búfer actual
map("n", "<leader>cc", ":Codi!!<cr>", {silent = true, desc = "Activar el Codi"})

---------------
--  WHICH KEY
---------------

--Which Key
map("n", "<leader>w", ":WhichKey<cr>", {silent = true, desc = "WhichKey"})

--Prettier
map("n", "<leader>f", ":Prettier<cr>", {silent = true, desc = "Prettier"})
