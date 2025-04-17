return {
	"L3MON4D3/LuaSnip",
  dependencies = {
    "honza/vim-snippets",
  },
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	-- build = "make install_jsregexp"
	init = function()
		local ls = require("luasnip")
		vim.keymap.set({"i"}, "<C-k>", function() ls.expand() end, {silent = true})
		vim.keymap.set({"i", "s"}, "<C-l>", function() ls.jump( 1) end, {silent = true})
		vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
		require("luasnip.loaders.from_snipmate").lazy_load()
	end,
}
