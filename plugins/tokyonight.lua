-- A dark and light Neovim theme written in Lua ported from the Visual Studio Code
-- TokyoNight theme. Includes extra themes for Kitty, Alacritty, iTerm and Fish.
-- https://github.com/folke/tokyonight.nvim

return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('tokyonight').setup {
      styles = {
        comments = { italic = true }, -- Disable italics in comments
      },
      -- on_colors = function(colors)
      --   colors.comment = "#ffffff"
      -- end,
      on_highlights = function(hl)
      hl.comment = { fg = '#6A9955' }
      hl.perlComment = { fg = '#6A9955' }
      hl.Comment = { fg = '#6A9955' }
      --hl.String = { fg = '#A52A2A' }
      hl.String = { fg = '#E97451' }
      --hl.IlluminatedWordText = { bg = "#ffffff", fg = "#ffffff" }
      end,
    }

    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'tokyonight-night'
  end,
}
