local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")
lazy.setup({
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
	"tanvirtin/monokai.nvim",
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	},
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })
    end
  },
	"neovim/nvim-lspconfig",
	"lspcontainers/lspcontainers.nvim",
	"SmiteshP/nvim-navic",
	"sbdchd/neoformat",
	{ "nvim-telescope/telescope.nvim", tag = "master", dependencies = { { "nvim-lua/plenary.nvim" } } },
	"tpope/vim-commentary",
	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" }, tag = "nightly" },
	"lewis6991/gitsigns.nvim",
	{ "akinsho/toggleterm.nvim", tag = "*" },
	"kylechui/nvim-surround",
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
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
	},
	{ "MunifTanjim/exrc.nvim", dependencies = { { "MunifTanjim/nui.nvim" } } },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "RRethy/vim-illuminate" },
	{ "phaazon/mind.nvim", branch = "v2.2", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "gorbit99/codewindow.nvim" },
	{ "catppuccin/nvim", as = "catppuccin" },
	"EdenEast/nightfox.nvim",
	{ "Shatur/neovim-session-manager", dependencies = { { "nvim-lua/plenary.nvim" } } },
})
