-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-tree/nvim-web-devicons', -- optional, but recommended
  },
  lazy = false, -- neo-tree will lazily load itself
  config = function()
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
  end,
  vim.keymap.set('n', '<leader>e', ':Neotree toggle float<CR>', { desc = 'Toggle Neo-tree (float)' }),
}
