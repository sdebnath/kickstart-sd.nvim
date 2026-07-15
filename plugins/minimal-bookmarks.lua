-- A minimal bookmarks plugin for Neovim
-- https://github.com/yuriescl/minimal-bookmarks.nvim
--
-- NOTE: @sd: the previous lazy spec had a copy-paste bug where config() called
-- require('neo-tree').setup {} instead of configuring this plugin. Dropped in the
-- vim.pack rewrite; the :MinimalBookmarks* commands load from the plugin itself.

vim.pack.add { 'https://github.com/yuriescl/minimal-bookmarks.nvim' }

vim.keymap.set('n', '<leader>bb', ':MinimalBookmarksToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>be', ':MinimalBookmarksEdit<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ba', ':MinimalBookmarksAdd<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bi', ':MinimalBookmarksInsert<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bd', ':MinimalBookmarksDelete<CR>', { noremap = true, silent = true })
