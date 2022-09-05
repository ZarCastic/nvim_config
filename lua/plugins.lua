require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("folke/tokyonight.nvim")
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
	use("airblade/vim-gitgutter")
	use({
		"ms-jpq/coq_nvim",
		requires = { { "ms-jpq/coq.artifacts", branch = "artifacts" }, { "ms-jpq/coq.thirdparty", branch = "3p" } },
		branch = "coq",
	})
end)
