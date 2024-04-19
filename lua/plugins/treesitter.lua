local M = {
  "nvim-treesitter/nvim-treesitter",

  dependencies = {
    'windwp/nvim-ts-autotag',
    'nvim-treesitter/playground',
  },

  build = ":TSUpdate",

  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = "all",
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        autotag = {
          enable = true,
          filetypes = {
            'html', 'javascript', 'typescript',
            'javascriptreact', 'typescriptreact',
            'svelte', 'vue', 'tsx', 'jsx', 'rescript',
            'heex', 'erb', 'ecr',

            'xml',
            'php',
            'markdown',
            'astro', 'glimmer', 'handlebars', 'hbs'
          },
        },
        playground = {
          enable = true,
        },
    })
  end
}

return M
