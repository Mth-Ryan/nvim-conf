local M = {
  "norcalli/nvim-colorizer.lua",

  config = function()
    require("colorizer").setup(
      {"*"},
      {
        RGB      = true,
        RRGGBB   = true,
        names    = true,
        RRGGBBAA = true,
        rgb_fn   = true,
        hsl_fn   = true,
        mode     = "background",
      }
    )
  end
}

return M
