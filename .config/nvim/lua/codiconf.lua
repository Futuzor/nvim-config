--Este es el archivo de configuración del plugin Codi. Abajo se configuran los
--diferentes intérpretes de los lenguajes de programación.
local python = "let g:codi#interpreters = { \\ 'python': { \\ 'bin': 'python', \\ 'prompt': '^\\(>>>\\|\\.\\.\\.\\) ', \\ }, \\ }"

vim.cmd("let g:codi#interpreters = {python}")
