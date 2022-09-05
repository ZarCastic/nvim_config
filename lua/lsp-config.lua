local lsp_config = require("lspconfig")
local lsp_containers = require("lspcontainers")
local navic = require("nvim-navic")
local util = require("lspconfig.util")
local coq = require("coq")

local function on_attach(client, buffer)
	navic.attach(client, buffer)
end

lsp_config.bashls.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	cmd = lsp_containers.command("bashls"),
}))

lsp_config.clangd.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	cmd = lsp_containers.command("clangd"),
}))

lsp_config.dockerls.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	cmd = lsp_containers.command("dockerls"),
}))

lsp_config.gopls.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	cmd = lsp_containers.command("gopls"),
}))

lsp_config.jsonls.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	cmd = lsp_containers.command("jsonls"),
}))

lsp_config.pyright.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	cmd = lsp_containers.command("pyright"),
	root_dir = util.root_pattern("settings.toml", "mypy.ini", "requirements.txt", ".git"),
}))

lsp_config.rust_analyzer.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	cmd = lsp_containers.command("rust_analyzer"),
}))

lsp_config.sumneko_lua.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	cmd = lsp_containers.command("sumneko_lua"),
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "use", "util" },
			},
		},
	},
}))

lsp_config.tsserver.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	-- cmd = lsp_containers.command("tsserver"),
}))

lsp_config.yamlls.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	-- cmd = lsp_containers.command("yamlls"),
}))

lsp_config.vuels.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach,
	-- cmd = lsp_containers.command("vuels"),
}))
