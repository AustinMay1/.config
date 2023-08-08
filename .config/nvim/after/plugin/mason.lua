require('mason').setup()
require('mason-lspconfig').setup {
    ensure_installed = { 'clangd', 'gopls', 'eslint', 'tsserver', 'rust_analyzer' } 
}
