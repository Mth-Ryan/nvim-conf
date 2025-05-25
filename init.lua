local utils = require("utils")

-- Standard options
vim.wo.number = true
vim.o.laststatus = 3
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.guifont = 'JetBrainsMono NFM:h10'
vim.g.theme = "postmodern"
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_vfx_mode = 'sonicboom'
vim.g.neovide_transparency = 1.0
vim.g.neovide_remember_window_size = true
vim.g.neovide_padding_top = 15
vim.g.neovide_padding_left = 15
vim.g.neovide_padding_right = 15
vim.g.neovide_padding_bottom = 5
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Load plugins
require("plugins").setup()

-- Theme
utils.load_theme()

-- Set extra path
utils.append_path({
  utils.get_home_path() .. "/.asdf/shims",
})

-- Key bindings
local wk = require("which-key")

wk.register({
  c = { "<cmd>Telescope commands<cr>", "Find commands" },
  h = { "<cmd>Telescope command_history<cr>", "Commands history" },
  f = { "<cmd>Telescope find_files<cr>", "Find Files" },
  F = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
  b = { "<cmd>Telescope buffers<cr>", "Find Buffers" },
  a = { "<cmd>Lspsaga code_action<cr>", "Perform code action" },
  d = { "<cmd>Lspsaga show_cursor_diagnostics<cr>", "Show diagnostics" },
  D = { "<cmd>Lspsaga show_buf_diagnostics<cr>", "show buffer diagnostics" },
  r = { "<cmd>Lspsaga rename ++project<cr>", "Rename symbol" },
  e = { utils.lsp_code_format, "Perform code formatting" },
  g = {
    name = "Git",
    f = { "<cmd>Telescope git_files<cr>", "Show git files" },
    c = { "<cmd>Telescope git_commits<cr>", "Show git commits" },
    b = { "<cmd>Telescope git_branches<cr>", "Show git branches" },
    s = { "<cmd>Telescope git_status<cr>", "Show git status" },
    S = { "<cmd>Telescope git_stash<cr>", "Show git stash" },
  }
}, { prefix = "<Space>" })
