local lsp_config = require("lspconfig")
local lsp_containers = require("lspcontainers")
local util = require("lspconfig.util")
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local navic = require("nvim-navic")

function OnAttachKeys(client, buffer)
	vim.api.nvim_buf_set_option(buffer, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = buffer }
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set("n", "<leader>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
end

function OnAttachNavic(client, buffer)
	navic.attach(client, buffer)
end

local function get_typescript_server_path(root_dir)
	local global_ts = "/home/[yourusernamehere]/.npm/lib/node_modules/typescript/lib/tsserverlibrary.js"
	-- Alternative location if installed as root:
	-- local global_ts = '/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js'
	local found_ts = ""
	local function check_dir(path)
		found_ts = util.path.join(path, "node_modules", "typescript", "lib", "tsserverlibrary.js")
		if util.path.exists(found_ts) then
			return path
		end
	end
	if util.search_ancestors(root_dir, check_dir) then
		return found_ts
	else
		return global_ts
	end
end

lsp_config.bashls.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	-- cmd = lsp_containers.command("bashls"),
})

lsp_config.clangd.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	-- cmd = lsp_containers.command("clangd", { image = "clangd-lsp:v0.3.0" }),
})

lsp_config.dockerls.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	-- cmd = lsp_containers.command("dockerls"),
})

lsp_config.gopls.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	-- cmd = lsp_containers.command("gopls"),
})

lsp_config.pylsp.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	root_dir = util.root_pattern("settings.toml", "mypy.ini", "requirements.txt", ".git"),
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					maxLineLength = 100,
				},
			},
		},
	},
})

lsp_config.rust_analyzer.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	settings = {
		["rust-analyzer"] = { checkOnSave = { command = "clippy" } },
	},
})

lsp_config.lua_ls.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	-- cmd = lsp_containers.command("lua_ls"),
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "use", "util" },
			},
		},
	},
})

lsp_config.tsserver.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	-- cmd = lsp_containers.command("tsserver"),
})

lsp_config.yamlls.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	-- cmd = lsp_containers.command("yamlls"),
})

lsp_config.volar.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	-- cmd = lsp_containers.command("volar"),
	-- init_options = {
	-- 	typescript = {
	-- 		tsdk = "/home/tobi/.nvm/versions/node/v16.14.0/lib/node_modules/typescript/lib",
	-- 	},
	-- },
	on_new_config = function(new_config, new_root_dir)
		new_config.init_options.typescript.serverPath = get_typescript_server_path(new_root_dir)
	end,
})

lsp_config.cucumber_language_server.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
	root_dir = util.root_pattern(".behaverc", "requirements.txt", ".git"),
	settings = {
		glue = { "steps/**/*.py" },
	},
})

lsp_config.marksman.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
})

lsp_config.cmake.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
})

lsp_config.tailwindcss.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
		OnAttachNavic(client, buffer)
	end,
})

lsp_config.emmet_ls.setup({
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
	end,
	capabilities = capabilities,
	filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
	init_options = {
		html = {
			options = {
				-- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
				["bem.enabled"] = true,
			},
		},
	},
})

capabilities.textDocument.completion.completionItem.snippetSupport = true
lsp_config.jsonls.setup({
	capabilities = capabilities,
	on_attach = function(client, buffer)
		OnAttachKeys(client, buffer)
	end,
})
