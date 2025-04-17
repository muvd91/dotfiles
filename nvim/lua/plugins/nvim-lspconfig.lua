local function lsp_init()
	require'lspconfig'.clangd.setup{}
end

return {
  "neovim/nvim-lspconfig",
  init = lsp_init
}
