
return function(buf)
  -- We duplicate the map function here to make mappings look consistent between the
  -- the main init.lua and our customizations
  local map = function(keys, func, desc, mode)
    mode = mode or 'n'
    vim.keymap.set(mode, keys, func, { buffer = buf, desc = 'LSP: ' .. desc })
  end

  -- Lists LSP incoming calls for word under the cursor
  map('gic', require('telescope.builtin').lsp_incoming_calls, '[I]ncoming Calls')
  
  -- Lists LSP outgoing calls for word under the cursor
  map('goc', require('telescope.builtin').lsp_outgoing_calls, '[O]utgoing Calls')
end


