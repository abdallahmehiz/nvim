local servers = {
  -- LSPs
	"lua_ls", -- Lua LSP
  "jdtls", -- Java LSP
  "html", -- Html LSP
  "clangd", -- C LSP
  "cssls", -- CSS LSP
  "cssmodules_ls", -- CSS Modules LSP
  "emmet_ls", -- Emmet LSP
  "eslint", -- Eslint LSP
--  "jqls", -- JQuery LSP
  "jsonls", -- JSON LSP
  "kotlin_language_server", -- Kotlin LSP
  "marksman", -- Markdown LSP
  "pylsp", -- Python LSP
  "sqls", -- SQL LSP
  "texlab", -- LaTeX LSP
--  "vuels", -- Vue LSP
  "tsserver", -- TS LSP
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}
-- Vue language options (volar)
lspconfig.volar.setup {
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' }
}
for _, server in pairs(servers) do
	opts = {
		on_attach = require("abdallah.lsp.handlers").on_attach,
		capabilities = require("abdallah.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]
	local conf_opts = {}
	local require_ok
	conf_opts = pcall(require, "abdallah.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
