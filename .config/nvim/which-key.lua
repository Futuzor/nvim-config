local wk = require("which-key")

wk.register({
["<c-a>"] = {
        name = "Seleccionar todo",
        ["<c-a>"] = {"ggVg"},
    },
["<c-s>"] = {
        name = "Guardar el archivo actual",
        ["<c-s>"] = {":w"},
    },
["<c-r>"] = {
        name = "Recarga el archivo actual",
        ["<c-r>"] = {":source %"},
    },
})
