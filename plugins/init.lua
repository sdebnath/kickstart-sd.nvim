-- Loader for @sd plugin customizations.
--
-- Mirrors upstream's lua/custom/plugins/init.lua: iterate over every Lua file in
-- this directory (except this one) and require it. Each file installs itself with
-- vim.pack.add and configures itself imperatively.
--
-- This runs from init.lua SECTION 10 via `require 'sd.plugins'`, after all upstream
-- plugins, so our overrides (leader-based keymaps, tokyonight, tmux nav) win.

local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'sd', 'plugins')
for file_name, type in vim.fs.dir(plugins_dir, { follow = true }) do
  if (type == 'file' or type == 'link') and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    local module = file_name:gsub('%.lua$', '')
    require('sd.plugins.' .. module)
  end
end
