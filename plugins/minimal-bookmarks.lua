-- A minimal bookmarks plugin for Neovim
-- https://github.com/yuriescl/minimal-bookmarks.nvim

return {
  'yuriescl/minimal-bookmarks.nvim',
  lazy = false, -- neo-tree will lazily load itself
  config = function()
    require('neo-tree').setup {}
  end,
  vim.api.nvim_set_keymap('n', '<leader>bb', ':MinimalBookmarksToggle<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>be', ':MinimalBookmarksEdit<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>ba', ':MinimalBookmarksAdd<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>bi', ':MinimalBookmarksInsert<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>bd', ':MinimalBookmarksDelete<CR>', { noremap = true, silent = true }),
}
