require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "lua-language-server" }
vim.lsp.enable(servers)

