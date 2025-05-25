local utils = require("utils")

-- Standard options
vim.wo.number = true
vim.o.laststatus = 3
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.guifont = 'SauceCodePro Nerd Font Mono:h12'
vim.g.theme = "postmodern"
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_vfx_mode = 'sonicboom'
vim.g.neovide_opacity = 1.0
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

wk.add({
  { "<Space>D", "<cmd>Lspsaga show_buf_diagnostics<cr>", desc = "show buffer diagnostics" },
  { "<Space>F", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
  { "<Space>a", "<cmd>Lspsaga code_action<cr>", desc = "Perform code action" },
  { "<Space>b", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
  { "<Space>c", "<cmd>Telescope commands<cr>", desc = "Find commands" },
  { "<Space>d", "<cmd>Lspsaga show_cursor_diagnostics<cr>", desc = "Show diagnostics" },
  { "<Space>e", utils.lsp_code_format, desc = "Perform code formatting" },
  { "<Space>f", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
  { "<Space>g", group = "Git" },
  { "<Space>gS", "<cmd>Telescope git_stash<cr>", desc = "Show git stash" },
  { "<Space>gb", "<cmd>Telescope git_branches<cr>", desc = "Show git branches" },
  { "<Space>gc", "<cmd>Telescope git_commits<cr>", desc = "Show git commits" },
  { "<Space>gf", "<cmd>Telescope git_files<cr>", desc = "Show git files" },
  { "<Space>gs", "<cmd>Telescope git_status<cr>", desc = "Show git status" },
  { "<Space>h", "<cmd>Telescope command_history<cr>", desc = "Commands history" },
  { "<Space>r", "<cmd>Lspsaga rename ++project<cr>", desc = "Rename symbol" },
})
