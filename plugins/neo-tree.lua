-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

require('neo-tree').setup {
  close_if_last_window = true,
  popup_border_style = 'rounded',
  enable_git_status = true,
  enable_diagnostics = false,
  default_component_configs = {
    indent = {
      padding = 1,
    },
  },
  window = {
    position = 'float', -- this is what makes it telescope-like
    width = 40,
  },
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
}

vim.keymap.set('n', '<leader>e', ':Neotree toggle float<CR>', { desc = 'Toggle Neo-tree (float)' })
