-- Vim Tmux Navigator
-- https://github.com/christoomey/vim-tmux-navigator
--
-- NOTE: @sd: these <C-hjkl> maps intentionally override the window-focus maps in
-- init.lua SECTION 2 (and the :wincmd maps in sd.vim_options). sd.plugins loads
-- last, so these win. Outside tmux, vim-tmux-navigator falls back to plain window
-- navigation, so behavior is unchanged when not in a tmux session.

vim.pack.add { 'https://github.com/christoomey/vim-tmux-navigator' }

vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<CR>', { silent = true })
vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<CR>', { silent = true })
vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>', { silent = true })
