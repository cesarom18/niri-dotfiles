return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup({
			settings = {
				save_on_toggle = false,
				sync_on_ui_close = false,
			},
		})

		local keymap = vim.keymap.set

		keymap("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add file to harpoon" })
		keymap("n", "<leader>h", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon menu" })
		keymap("n", "<leader>hd", function()
			local idx = tonumber(vim.fn.input("Index to delete: "))
			if idx then
				harpoon:list():remove_at(idx)
			end
		end, { desc = "Delete harpoon item" })

		keymap("n", "<leader>hD", function()
			harpoon:list():clear()
		end, { desc = "Delete harpoon item" })
		keymap("n", "<leader>1", function()
			harpoon:list():select(1)
		end)
		keymap("n", "<leader>2", function()
			harpoon:list():select(2)
		end)
		keymap("n", "<leader>3", function()
			harpoon:list():select(3)
		end)
		keymap("n", "<leader>4", function()
			harpoon:list():select(4)
		end)

		-- Navegación rápida entre archivos
		keymap("n", "<C-n>", function()
			harpoon:list():next()
		end)
		keymap("n", "<C-p>", function()
			harpoon:list():prev()
		end)
	end,
}
