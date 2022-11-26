require('telescope').setup{
      defaults = {
          multi_icon = " ",
          layout_config = {
              horizontal = {
                  width_padding = 0.25,
                  height_padding = 0.2,
                  preview_padding = 1,
              },
              vertical = {
                  width_padding = 0.05,
                  height_padding = 0.1,
              },
          },
          color_devicons = true,
      },
      pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
      },
      extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
      }
    }

require("telescope").load_extension("file_browser")
