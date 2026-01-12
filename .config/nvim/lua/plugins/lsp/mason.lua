return {
    "williamboman/mason.nvim",
    lazy = false,
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "neovim/nvim-lspconfig",
    },
    config = function()
        -- Import Mason modules
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        -- Setup Mason with icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        -- Setup Mason LSP Config
        mason_lspconfig.setup({
            automatic_enable = false,
            ensure_installed = {
                "lua_ls",                    -- Lua
                "ts_ls",                     -- TypeScript / JavaScript
                "html",                      -- HTML
                "cssls",                     -- CSS
                "tailwindcss",               -- TailwindCSS
                "angularls",                 -- Angular
                "emmet_ls",                  -- Emmet
                "emmet_language_server",     -- Alternative Emmet
                "marksman",                  -- Markdown
                "pyright",                   -- Python LSP
            },
        })

        -- Setup Mason Tool Installer (formatters, linters)
        mason_tool_installer.setup({
            ensure_installed = {
                "prettier", -- JS/TS/HTML/CSS formatter
                "stylua",   -- Lua formatter
                "isort",    -- Python import sorter
                "pylint",   -- Python linter
                "black",    -- Python formatter
                "clangd",   -- C/C++ LSP
                "denols",   -- Deno
            },
        })
    end,
}
