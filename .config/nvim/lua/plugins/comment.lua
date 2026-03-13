return {
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		opts = {
			padding = true, -- Add blank space between comment and code
			sticky = true, -- Keep cursor 
			ignore = "^$", -- Ignore blank lines
			toggler = {
				line = "gcc", -- Comment line
				block = "gbc", -- Comment block
			},
			opleader = {
				line = "gc", -- Comment lines with operator 
				block = "gb", -- Comment block with operator
			},
			mappings = {
				basic = true,
				extra = true,
			},
		},
	},
}
