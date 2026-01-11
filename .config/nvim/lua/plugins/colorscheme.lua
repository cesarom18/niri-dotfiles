return {
    {
        "shaunsingh/nord.nvim",
        lazy = false,
        priority = 1000,

        config = function()
            -- Theme Options
            vim.g.nord_contrast = false           -- Enable contrast split borders/popups
            vim.g.nord_borders = true             -- Enable split window borders
            vim.g.nord_disable_background = false -- Disable background (for transparent terminals)
            vim.g.nord_cursorline_transparent = false -- Transparent cursorline
            vim.g.nord_enable_sidebar_background = true -- Keep sidebar backgrounds
            vim.g.nord_italic = true              -- Enable italic text
            vim.g.nord_uniform_diff_background = true -- Unified diff background
            vim.g.nord_bold = true                -- Enable bold text

            -- Apply Theme
            vim.cmd("colorscheme nord")
        end,
    },
}
