local M = {
  "razak17/tailwind-fold.nvim",

  dependencies = {
    "nvim-treesitter/nvim-treesitter"
  },

  opts = {},

  config = function()
    vim.o.conceallevel = 2
    vim.cmd([[ hi! link Conceal LineNr ]])

    require('tailwind-fold').setup({ft = {
      "html",
      "svelte",
      "vue",
      "astro",
      "typescriptreact",
      "php",
      "blade",
      "twig"
    }})
  end
}

return M
