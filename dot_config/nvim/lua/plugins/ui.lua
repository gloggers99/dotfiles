vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 3
vim.opt.wrap = false

-- Tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Remove the default squiggles at the end of a buffer.
vim.opt.fillchars = { eob = " " }

vim.keymap.set("n", "<C-s>", "<cmd>vsplit<CR><C-w>w")
vim.keymap.set("n", "<C-t>", "<cmd>vsplit<CR><C-w>w<cmd>terminal<CR>i")

return {
    {
        "folke/snacks.nvim",
        opts = {
            statuscolumn = { enabled = true },
            picker = { enabled = true },
            image = { enabled = true },
        },
        keys = {
            { "<leader><leader>", function() Snacks.picker.files()   end, desc = "File picker" },
            { "<leader>,",        function() Snacks.picker.buffers() end, desc = "Buffer picker" }
        }
    },
    {
        "rebelot/kanagawa.nvim"
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {}
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    },
    {
        "folke/which-key.nvim",
        opts = {
            preset = "helix"
        }
    },
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        config = function()
            vim.keymap.set("n", "<Leader>mp", "<Plug>MarkdownPreview", { desc = "Markdown Preview" })
        end,
    }
}
