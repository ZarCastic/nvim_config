local lsp_config = require("lspconfig")
local lsp_containers = require("lspcontainers")
local navic = require("nvim-navic")

local function on_attach(client, buffer)
	navic.attach(client, buffer)
end

lsp_config.bashls.setup({
	on_attach = on_attach,
	cmd = lsp_containers.command("bashls"),
})

lsp_config.clangd.setup({
	on_attach = on_attach,
	cmd = lsp_containers.command("clangd"),
})

lsp_config.dockerls.setup({
	on_attach = on_attach,
	cmd = lsp_containers.command("dockerls"),
})

lsp_config.gopls.setup({
	on_attach = on_attach,
	cmd = lsp_containers.command("gopls"),
})

lsp_config.jsonls.setup({
	on_attach = on_attach,
	cmd = lsp_containers.command("jsonls"),
})

lsp_config.pyright.setup({
	on_attach = on_attach,
	cmd = lsp_containers.command("pyright"),
})

lsp_config.rust_analyzer.setup({
	on_attach = on_attach,
	cmd = lsp_containers.command("rust_analyzer"),
})

lsp_config.sumneko_lua.setup({
	on_attach = on_attach,
	cmd = lsp_containers.command("sumneko_lua"),
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "use" },
			},
		},
	},
})

lsp_config.tsserver.setup({
	on_attach = on_attach,
	-- cmd = lsp_containers.command("tsserver"),
})

lsp_config.yamlls.setup({
	on_attach = on_attach,
	-- cmd = lsp_containers.command("yamlls"),
})

lsp_config.vuels.setup({
	on_attach = on_attach,
	-- cmd = lsp_containers.command("vuels"),
})
