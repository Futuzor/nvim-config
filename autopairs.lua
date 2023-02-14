-- Esta configuración activa los plugins 'autopairs' y 'ts-autotag' para que añada automáticamente un cierre de etiquetas y de símbolos.
require("nvim-autopairs").setup { enable = true }
require('nvim-ts-autotag').setup { enable = true }
