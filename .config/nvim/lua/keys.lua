--En este archivo se recogen los diferentes atajos de teclado de Neovim, tanto para sus funciones nativas como plugins.
local map = vim.keymap.set

--Se asigna la tecla 'líder' a la coma (,)
vim.g.mapleader = ","

--Guarda el archivo actual
map("n", "<c-s>", ":w<cr>", { silent = true, desc = "Guardar archivo actual" })

--Recarga el archivo actual
map("n", "<c-r>", ":source %<cr>", { silent = true, desc = "Recargar archivo actual" })

--Cierra el archivo/búfer
map("n", "<c-x>", ":bdelete<cr>", { silent = true, desc = "Cerrar el archivo/búfer actual" })

-- Salir de Neovim
map("n", "<c-q>", ":q!<cr>", { silent = true, desc = "Salir de Neovim" })

--Selecciona todo el texto del archivo
map("n", "<c-a>", "ggVG", { silent = true, desc = "Seleccionar todo" })

--Copia la línea actual
map("n", "yl", "v$y<cr>", { silent = true, desc = "Copiar línea actual" })

--Mover línea arriba/abajo
map("n", "<a-Up>", ":MoveLine(-1)<cr>", { silent = true, desc = "Mover línea arriba" })
map("n", "<a-Down>", ":MoveLine(1)<cr>", { silent = true, desc = "Mover bloque abajo" })
map("v", "<a-Up>", ":MoveBlock(-1)<cr>", { silent = true, desc = "Mover línea arriba" })
map("v", "<a-Down>", ":MoveBlock(1)<cr>", { silent = true, desc = "Mover bloque abajo" })

--Duplica la línea actual
map("n", "<c-l>", "VyP<cr>", { silent = true, desc = "Duplicar línea actual" })

--------------
--  BÚFFERS
--------------
map("n", "bp", ":bprev<cr>", { silent = true, desc = "Búfer anterior" })
map("n", "bn", ":bnext<cr>", { silent = true, desc = "Búfer siguiente" })
map("n", "bd", ":bdelete<cr>", { silent = true, desc = "Borrar búfer" })

--------------
--  PESTAÑAS
--------------

--Abre una nueva pestaña
map("n", "<leader>te", ":tabedit<cr>", { silent = true, desc = "Nueva pestaña" })

--------------
--  NEOTREE
--------------

--Abre/Cierra el NeoTree poniendo el foco en el mismo..
map("n", "<Tab>", ":Neotree toggle<cr>", { silent = true, desc = "NeoTree toggle" })

-------------
--  PLUGINS
-------------

--Carga el gestor de plugins Lazy
map("n", "<leader>l", ":Lazy<cr>", { silent = true, desc = "Lazy" })

--Carga el gestor de LSP Mason
map("n", "<leader>m", ":Mason<cr>", { silent = true, desc = "Mason" })

--Abre y cierra Trouble
--map("n", "<leader>tr", ":TroubleToggle<cr>,",{silent = true, desc = "Conmutar Trouble"})

----------
--  CODI
----------

--Activa el plugin Codi en el búfer actual
map("n", "<leader>cc", ":Codi!!<cr>", { silent = true, desc = "Activar el Codi" })

---------------
--  WHICH KEY
---------------

-- Which Key
map("n", "<leader>w", ":WhichKey<cr>", { silent = true, desc = "WhichKey" })

-- Prettier
map("n", "<leader>f", ":Prettier<cr>", { silent = true, desc = "Prettier" })

-- Formatear documento
map("n", "<leader>F", ":lua vim.lsp.buf.format()<cr>", { silent = true, desc = "Formatear documento" })
