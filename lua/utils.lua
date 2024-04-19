local M = {
  load_theme = function(theme)
    vim.cmd("colorscheme " .. theme)
  end,

  append_path = function(paths)
    for _, path in ipairs(paths) do
      vim.env.PATH = vim.env.PATH .. ":" .. path
    end
  end,

  get_home_path = function()
    return vim.env.HOME
  end,

  lsp_code_format = function()
    vim.lsp.buf.format({async = true})
  end,
}

return M
