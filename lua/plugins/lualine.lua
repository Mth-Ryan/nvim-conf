local utils = require("utils")

local colors_list = utils.require_all_to_table(
  "plugins.lualine-themes", 
  utils.path_join(vim.fn.stdpath("config"), "lua", "plugins", "lualine-themes")
)

function get_theme()
  local color_name = vim.g.theme or "fleet"
  local colors = colors_list[color_name] or colors_list["fleet"]

  return {
    normal = {
      a = { fg = colors.bg, bg = colors.normal, gui = 'bold' },
      b = { fg = colors.fg, bg = colors.bg_alt_2 },
      c = { fg = colors.fg_alt, bg = colors.bg_alt_1 },
    },
    insert = { a = { fg = colors.bg, bg = colors.insert, gui = 'bold' } },
    visual = { a = { fg = colors.bg, bg = colors.visual, gui = 'bold' } },
    replace = { a = { fg = colors.bg, bg = colors.replace, gui = 'bold' } },
    inactive = {
      a = { fg = colors.fg, bg = colors.bg_alt_2, gui = 'bold' },
      b = { fg = colors.fg, bg = colors.bg_alt_1 },
      c = { fg = colors.fg_alt, bg = colors.bg_alt_1 },
    },
  }
end

local M = {
  "nvim-lualine/lualine.nvim",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require('lualine').setup({
      options = {
        theme = get_theme(),
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' }
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
