-- @sd: LSP servers to enable on top of kickstart's defaults.
--
-- Merged into the `servers` table in init.lua SECTION 6, so these are installed
-- by mason-tool-installer and enabled via vim.lsp.config / vim.lsp.enable.
-- Each value is a `vim.lsp.Config` override table (empty = server defaults).
--
---@type table<string, vim.lsp.Config>
return {
  clangd = {},
  pyright = {},
  rust_analyzer = {},
}
