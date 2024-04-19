local M = {
  "glepnir/lspsaga.nvim",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("lspsaga").setup({
      symbol_in_winbar = {
        enable = false,
      },
      ui = {
        border = 'single',
        title = true,
        winblend = 0,
        expand = '',
        collapse = '',
        code_action = '',
        incoming = ' ',
        outgoing = ' ',
        actionfix = '',
        hover = ' ',
        theme = 'arrow',
        lines = { '┗', '┣', '┃', '━' },
        kind = {},
      },
    })
  end,
}

return M
