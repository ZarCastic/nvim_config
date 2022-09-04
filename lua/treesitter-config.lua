require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "cpp", "lua", "rust", "javascript", "cmake", "css", "go", "yaml", "typescript", "vue", "bash", "html", "proto", "python"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
