require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("tanvirtin/monokai.nvim")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use("neovim/nvim-lspconfig")
	use("lspcontainers/lspcontainers.nvim")
	use("SmiteshP/nvim-navic")
	use("sbdchd/neoformat")
	use({ "nvim-telescope/telescope.nvim", tag = "master", requires = { { "nvim-lua/plenary.nvim" } } })
	use("tpope/vim-commentary")
	use({ "ms-jpq/chadtree", branch = "chad", run = "python3 -m chadtree deps" })
	use("lewis6991/gitsigns.nvim")
	use({ "akinsho/toggleterm.nvim", tag = "*" })
	use("windwp/nvim-autopairs")
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			{
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-nvim-lua",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-cmdline",
				"hrsh7th/cmp-vsnip",
				"hrsh7th/vim-vsnip",
				"petertriho/cmp-git",
				"nvim-lua/plenary.nvim",
			},
		},
	})
	use({ "MunifTanjim/exrc.nvim", requires = { { "MunifTanjim/nui.nvim" } } })
end)
