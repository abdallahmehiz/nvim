local status_ok, _ = pcall(require, "lspconfig")

if not status_ok then
  return
end
require "abdallah.lsp.mason"
require("abdallah.lsp.handlers").setup()
require "abdallah.lsp.null-ls"
