local M = {
  "nvim-telescope/telescope.nvim", tag = "0.1.6",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },

  config = function()
    require("telescope").setup({
      defaults = {
          mappings = {
            i = {
              ["<C-j>"] = require("telescope.actions").cycle_history_next,
              ["<C-k>"] = require("telescope.actions").cycle_history_prev,
            },
          },
        },
        pickers = {
          find_files = {
            theme = "dropdown",
          },
          git_files = {
            theme = "dropdown",
          },
          live_grep = {
            theme = "dropdown",
          },
          buffers = {
            theme = "dropdown",
          },
        },
    })

    -- local builtin = require("telescope.builtin")

    -- vim.keymap.set("n", "<Space>f", builtin.find_files)
    -- vim.keymap.set("n", "<Space>F", builtin.live_grep)
    -- vim.keymap.set("n", "<Space>b", builtin.buffers)
  end
}

return M
