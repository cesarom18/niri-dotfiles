return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local ts = require("nvim-treesitter")

      -- Languages you use
      local parsers = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "go",
        "yaml",
        "html",
        "css",
        "python",
        "http",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "java",
        "rust",
        "ron",
      }

      -- Install parsers asynchronously (no-op if already installed)
      ts.install(parsers)

      local group = vim.api.nvim_create_augroup("TreesitterStart", { clear = true })

      vim.api.nvim_create_autocmd("FileType", {
        group = group,
        callback = function(ev)
          local lang =
            vim.treesitter.language.get_lang(ev.match) or ev.match

          -- Start treesitter for this buffer only
          local ok = pcall(vim.treesitter.start, ev.buf, lang)
          if ok then
            -- Treesitter-based indentation
            vim.bo[ev.buf].indentexpr =
              "v:lua.vim.treesitter.indentexpr()"
          end
        end,
      })
    end,
  },

  -- Auto-close and auto-rename tags (depends on treesitter)
  {
    "windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = {
      "html",
      "xml",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
