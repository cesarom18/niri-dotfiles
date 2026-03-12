return {
	"echasnovski/mini.files",
	version = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local mini_files = require("mini.files")

		mini_files.setup({
			options = {
				use_as_default_explorer = true,
			},

			windows = {
				preview = true,
				width_focus = 30,
				width_preview = 30,
			},

			mappings = {
				close = "q",
				go_in = "l",
				go_in_plus = "L",
				go_out = "h",
				go_out_plus = "H",
				reset = "<BS>",
				reveal_cwd = "@",
				show_help = "g?",
				synchronize = "=",
			},
		})

		-- Toggle explorer
		local toggle_mini_files = function()
			if not mini_files.close() then
				mini_files.open(vim.api.nvim_buf_get_name(0))
			end
		end

		vim.keymap.set("n", "<leader>e", toggle_mini_files, { desc = "Explorer" })

		-- Open on root 
		vim.keymap.set("n", "<leader>E", function()
			mini_files.open(vim.uv.cwd())
		end, { desc = "Explorer (cwd)" })
	end,
}
