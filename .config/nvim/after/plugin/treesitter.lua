require('nvim-treesitter.configs').setup {
    ensure_installed = {'javascript', 'typescript', 'c', 'cpp', 'lua', 'rust', 'vim'},

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}
