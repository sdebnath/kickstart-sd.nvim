-- A dark and light Neovim theme written in Lua ported from the Visual Studio Code
-- TokyoNight theme. Includes extra themes for Kitty, Alacritty, iTerm and Fish.
-- https://github.com/folke/tokyonight.nvim
--
-- NOTE: @sd: upstream init.lua (SECTION 4) already installs tokyonight and sets
-- the colorscheme. Because sd.plugins loads last, this re-runs setup() with our
-- overrides on top and re-applies the colorscheme. The vim.pack.add below is
-- idempotent (a no-op if upstream already added it) so this file stays self-contained.

vim.pack.add { 'https://github.com/folke/tokyonight.nvim' }

---@diagnostic disable-next-line: missing-fields
require('tokyonight').setup {
  styles = {
    comments = { italic = true }, -- Enable italics in comments
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
