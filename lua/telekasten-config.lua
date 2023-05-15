local telekasten = require("telekasten")
telekasten.setup({
	home = vim.fn.expand("~/zettelkasten"),
	template_new_daily = vim.fn.expand("~/zettelkasten/templates/daily.md"),
	template_new_weekly = vim.fn.expand("~/zettelkasten/templates/weekly.md"),
	dailies = vim.fn.expand("~/zettelkasten/daily"),
	weeklies = vim.fn.expand("~/zettelkasten/weekly"),
	templates = vim.fn.expand("~/zettelkasten/templates"),
})
