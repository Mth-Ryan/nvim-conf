local M = {
  'terrortylor/nvim-comment',

  config = function()
    require('nvim_comment').setup({
        comment_empty = false,
        create_mappings = false,
    })

    vim.keymap.set('n', '<C-c>', ":CommentToggle<CR>", { remap = false })
    vim.keymap.set('v', '<C-c>', ":CommentToggle<CR>", { remap = false })
  end
}

return M
