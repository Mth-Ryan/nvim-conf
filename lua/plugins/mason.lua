local M = {
  "williamboman/mason.nvim",

  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  },

  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

    require("mason-lspconfig").setup_handlers({
      function (server_name)
        require("lspconfig")[server_name].setup({})
      end,

      ["lua_ls"] = function ()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
          settings = {
            Lua = { diagnostics = { globals = { "vim" } } }
          }
        })
      end,
    })
  end
}

return M
