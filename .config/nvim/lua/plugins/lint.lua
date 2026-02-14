return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		local eslint = lint.linters.eslint_d

		-- Linters by filetype
		lint.linters_by_ft = {
			javascript = {"biomejs"},
			typescript = {"biomejs"},
			javascriptreact = {"biomejs"},
			typescriptreact = {"biomejs"},
			svelte = { "biomejs" },
			python = { "pylint" },
		}

		lint.linters.pylint.cmd = "python"
		lint.linters.pylint.args = {
			"-m",
			"pylint",
			"-f",
			"json",
		}

		-- Config eslint_d
		eslint.args = {
			"--no-warn-ignored",
			"--format",
			"json",
			"--stdin",
			"--stdin-filename",
			function()
				return vim.fn.expand("%:p")
			end,
		}

		-- Autocmd for lint
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		-- Keymap
		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
