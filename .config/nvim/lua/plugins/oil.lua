return {
	"stevearc/oil.nvim",
	opts = {
		default_file_explorer = false,

		columns = {
			"icon",
		},

		view_options = {
			show_hidden = true,
		},

		keymaps = {
			["<CR>"] = "actions.select",
			["<C-s>"] = "actions.select_vsplit",
			["<C-h>"] = "actions.select_split",
			["<C-t>"] = "actions.select_tab",
			["<C-p>"] = "actions.preview",
			["q"] = "actions.close",
			["-"] = "actions.parent",
			["_"] = "actions.open_cwd",
			["`"] = "actions.cd",
			["~"] = "actions.tcd",
			["g."] = "actions.toggle_hidden",
		},
	},

	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>e", "<cmd>Oil<CR>", desc = "Open Oil explorer" },
	},
	config = function(_, opts)
		require("oil").setup(opts)

		-- abrir oil con "-"
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
