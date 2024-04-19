local colors = {
  blue   = "#52a7f6",
  green  = "#afcb85",
  orange = "#efb080",
  pink   = "#d898d8",
  fg     = "#d6d6dd",
  light  = "#6d6d6d",
  bg     = "#181818",
  darker = "#292929",
  dark   = "#494949",
}

local theme = {
  normal = {
    a = { fg = colors.bg, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.dark },
    c = { fg = colors.light, bg = colors.darker },
  },
  insert = { a = { fg = colors.bg, bg = colors.green, gui = 'bold' } },
  visual = { a = { fg = colors.bg, bg = colors.orange, gui = 'bold' } },
  replace = { a = { fg = colors.bg, bg = colors.pink, gui = 'bold' } },
  inactive = {
    a = { fg = colors.fg, bg = colors.dark, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.darker },
    c = { fg = colors.light, bg = colors.darker },
  },
}

local M = {
  "nvim-lualine/lualine.nvim",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require('lualine').setup({
      options = {
        theme = theme,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      }
    })
  end
}

return M
