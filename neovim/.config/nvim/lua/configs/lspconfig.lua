require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "pylsp", "cssls", "clangd", "lua-language-server" }
vim.lsp.enable(servers)

