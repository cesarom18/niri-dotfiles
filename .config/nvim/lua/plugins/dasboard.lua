return {
    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            -- Header
            dashboard.section.header.val = {
                "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
                "████╗  ██║██║   ██║██║████╗ ████║",
                "██╔██╗ ██║██║   ██║██║██╔████╔██║",
                "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
                "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
                "╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
            }

            -- Menu
            dashboard.section.buttons.val = {
                dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
                dashboard.button("g", "󰱼  Live Grep", ":Telescope live_grep<CR>"),
                dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
                dashboard.button("l", "  Lazy", ":Lazy<CR>"),
                dashboard.button("m", "󰙅  Mason", ":Mason<CR>"),
                dashboard.button("L", "  LazyGit", ":LazyGit<CR>"),
                dashboard.button("c", "  Config", ":Telescope find_files cwd=~/.config/nvim<CR>"),
                dashboard.button("q", "󰈆  Quit", ":qa<CR>"),
            }

            alpha.setup(dashboard.opts)
        end,
    },
}
