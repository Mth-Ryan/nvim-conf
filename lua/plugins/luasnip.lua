local M = {
  "L3MON4D3/LuaSnip",

  dependencies = {
    "rafamadriz/friendly-snippets",
    { "ms-jpq/coq.artifact", branch = "artifacts" },
  },

  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}

return M
