return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                -- Ignore files
                file_ignore_patterns = { "node_modules" },
                -- Layout 
                layout_config = {
                    horizontal = {
                        preview_width = 0.55,
                    },
                },
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
            },
        })
        local keymap = vim.keymap.set
        local builtin = require("telescope.builtin")
        -- Set keymaps
        keymap("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
        keymap("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
        keymap("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
        keymap("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Find keymaps" })
        keymap("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
    end,
}
