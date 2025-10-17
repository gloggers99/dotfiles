
return {
    {
        "rebelot/kanagawa.nvim"
    },
    {
        "nvim-telescope/telescope.nvim",
        requires = { {"nvim-lua/plenary.nvim"} },
        keys = {
            { "<leader><leader>", function() require("telescope.builtin").find_files() end, }
        },
        opts = {}
    }
}
