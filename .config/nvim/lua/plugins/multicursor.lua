return {
	{
		"jake-stewart/multicursor.nvim",
		branch = "1.0",
		event = "VeryLazy",
		config = function()
			local mc = require("multicursor-nvim")
			mc.setup()
			-- Add cursor to the next match
			vim.keymap.set({ "n", "v" }, "<C-d>", function()
				mc.matchAddCursor(1)
			end)
			-- Add cursor to the previous match
			vim.keymap.set({ "n", "v" }, "<C-u>", function()
				mc.matchAddCursor(-1)
			end)
			-- Add cursor on the line below
			vim.keymap.set("n", "<C-j>", function()
				mc.lineAddCursor(1)
			end)
			-- Add cursor on the line above
			vim.keymap.set("n", "<C-k>", function()
				mc.lineAddCursor(-1)
			end)
			-- Clear all cursors
			vim.keymap.set("n", "<Esc>", function()
				mc.clearCursors()
			end)
		end,
	},
}
