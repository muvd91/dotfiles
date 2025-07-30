local function lsp_init()
	-- require'lspconfig'.clangd.setup{}
  vim.lsp.enable('clangd')
end

return {
  "neovim/nvim-lspconfig",
  init = lsp_init
}
