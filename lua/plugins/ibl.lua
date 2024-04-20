local M = {
  "lukas-reineke/indent-blankline.nvim",

  main = "ibl",

  opts = {},

  config = function()
    require("ibl").setup({
      indent = {
        char = "▏",
        highlight = "LineNr",
      },
      scope = { enabled = false },
    })
  end
}

return M
