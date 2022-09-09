require("toggleterm").setup()

require("vstask").setup({
	-- use_harpoon = true, -- use harpoon to auto cache terminals
	telescope_keys = { -- change the telescope bindings used to launch tasks
		vertical = "<C-v>",
		split = "<C-p>",
		tab = "<C-t>",
		current = "<CR>",
	},
	terminal = "toggleterm",
	term_opts = {
		vertical = {
			direction = "vertical",
			size = "120",
		},
		horizontal = {
			direction = "horizontal",
			size = "20",
		},
		current = {
			direction = "float",
		},
		tab = {
			direction = "tab",
		},
	},
})
