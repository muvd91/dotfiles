local function lsp_init()
	-- require'lspconfig'.clangd.setup{}
  vim.lsp.enable('clangd')
  vim.lsp.enable('clojure_lsp')
end

return {
  "neovim/nvim-lspconfig",
  init = lsp_init
}
