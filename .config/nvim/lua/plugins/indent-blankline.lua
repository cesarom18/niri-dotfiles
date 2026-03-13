return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		event = "BufReadPost",
		opts = {
			indent = {
				char = "│",
				tab_char = "│",
			},
			whitespace = {
				remove_blankline_trail = false,
			},
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
				highlight = { "Function", "Label" },
			},
			exclude = {
				filetypes = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
					"lazyterm",
				},
				buftypes = {
					"terminal",
					"nofile",
				},
			},
		},
	},
}
