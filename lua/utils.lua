local M = {
  load_theme = function()
    local theme = vim.g.theme or "fleet"
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

  path_join = function(...)
    local isWindows = vim.fn.has("win32") == 1
    local separator = '/'
    if isWindows then
      separator = '\\'
    end

    local args = { ... }
    local result = ""

    if #args == 0 then
      return ""
    end

    result = args[1]

    for i = 2, #args do
      local part = args[i]
      if result:sub(-1) == separator then
        result = result:sub(1, -2)
      end
      if part:sub(1, 1) == separator then
        part = part:sub(2)
      end

      if result ~= "" and part ~= "" then
          result = result .. separator .. part
      elseif result == "" then
          result = part
      end
    end

    if isWindows and args[1]:match("^[A-Za-z]:\\") and result:sub(1,1) == "\\" then
        result = args[1]:sub(1,3) .. result:sub(2)
    end
    if not isWindows and args[1]:sub(1,1) == "/" and result:sub(1,1) ~= "/" then
        result = "/" .. result
    end

    return result
  end,

  require_all_to_table = function(require_prefix, path)
    local tbl = {}
    local entries = vim.fn.readdir(path)

    for _, entry in ipairs(entries) do
      if entry:match("%.lua$") then
        local name_without_ext = entry:gsub("%.lua$", "")
        tbl[name_without_ext] = require(require_prefix .. '.' .. name_without_ext)
      end
    end

    return tbl
  end,
}

return M
