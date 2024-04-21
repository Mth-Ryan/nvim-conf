local bootstrap = function()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)
end

local M = {
  setup = function()
    bootstrap()

    require("lazy").setup({
      require("plugins.fleet-theme"),
      require("plugins.telescope"),
      require("plugins.treesitter"),
      require("plugins.mason"),
      require("plugins.comment"),
      require("plugins.colorizer"),
      require("plugins.lsp-saga"),
      require("plugins.cmp"),
      require("plugins.luasnip"),
      require("plugins.which-key"),
      require("plugins.lualine"),
      require("plugins.ibl"),
      require("plugins.metals"),
    })
  end
}

return M

