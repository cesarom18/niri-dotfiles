return {
    -- For all git plugins 
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns
				local function map(mode, l, r, desc)
					vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
				end
				-- Navigation
				map("n", "]h", gs.next_hunk, "Next Hunk")
				map("n", "[h", gs.prev_hunk, "Prev Hunk")
			end,
		},
	},
    -- Lazy git 
    {
        "kdheepak/lazygit.nvim",
        --NOTE: Trying out lazygit in Snacks nvim
        enabled = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- Window border thing
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- Setting up with keys={} allows plugin to load when command runs at the start
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open lazy git" },
        },
    }
}
