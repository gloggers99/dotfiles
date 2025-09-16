vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = true,
    inlay_hints = true
})

return {
    {
        "folke/lazydev.nvim",
        opts = {}
    },
    {
        "folke/trouble.nvim",
        opts = {},
        keys = {
            { "<leader>td", "<cmd>Trouble diagnostics toggle<CR>", desc = "Toggle diagnostics window" }
        }
    },
    {
        "neovim/nvim-lspconfig"
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "pylsp" },
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "j-hui/fidget.nvim",
        opts = {}
    },
    {
        "nvimdev/lspsaga.nvim",
        event = "LspAttach",
        opts = {
            lightbulb = {
                enable = false
            },
            symbol_in_winbar = {
                enable = false
            },
            ui = {
                code_action = "!"
            }
        },
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
        keys = {
            { "<leader>?",    "<cmd>Lspsaga hover_doc<CR>",       desc = "Open hover documentation" },
            { "<leader><CR>", "<cmd>Lspsaga code_action<CR>",     desc = "Open code action menu" },
            { "<leader>p",    "<cmd>Lspsaga peek_definition<CR>", desc = "Peek definition at the cursor" },
            { "<leader>gd",   "<cmd>Lspsaga goto_definition<CR>", desc = "Go to definition"}
        }
    },
    { "neovim/nvim-lspconfig" },
}
