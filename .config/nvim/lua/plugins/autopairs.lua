-- Esta configuración activa los plugins 'autopairs' y 'ts-autotag' para que añada automáticamente un cierre de etiquetas y de símbolos.
return {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
    config = function()
        require("nvim-autopairs").setup()
        require("nvim-ts-autotag").setup()
    end,
}
