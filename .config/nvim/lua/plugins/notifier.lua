return {
	{
		"y3owk1n/notifier.nvim",
		config = function(_, opts)
			local notifier = require("notifier")
			notifier.setup({
				-- Notification timeout in milliseconds
				default_timeout = 3000,

				-- Debounce time for window resize events
				resize_debounce_ms = 150,

				-- Border style for floating windows
				border = "solid", -- "none", "single", "double", "rounded", "solid", "shadow"

				-- Winblend for floating windows
				winblend = 0, -- 0-100 transparency

				-- Padding around notification content
				padding = {
					top = 0,
					right = 0,
					bottom = 0,
					left = 0,
				},

				-- Default notification group
				default_group = "bottom-right",

				-- Group positioning configurations
				group_configs = {
					["top-left"] = {
						anchor = "NW",
						row = function()
							return 0
						end,
						col = function()
							return 0
						end,
						winblend = 0, -- overrides global winblend
					},
					["top-center"] = {
						anchor = "NW",
						row = function()
							return 0
						end,
						col = function()
							return vim.o.columns / 2
						end,
						center_mode = "horizontal", -- Center horizontally only
					},
					["top-right"] = {
						anchor = "NE",
						row = function()
							return 0
						end,
						col = function()
							return vim.o.columns
						end,
					},
					["left-center"] = {
						anchor = "NW",
						row = function()
							return (vim.o.lines - vim.o.cmdheight - (vim.o.laststatus > 0 and 1 or 0)) / 2
						end,
						col = function()
							return 0
						end,
						center_mode = "vertical", -- Center vertically only
					},
					["center"] = {
						anchor = "NW",
						row = function()
							return (vim.o.lines - vim.o.cmdheight - (vim.o.laststatus > 0 and 1 or 0)) / 2
						end,
						col = function()
							return vim.o.columns / 2
						end,
						center_mode = "true", -- Center both horizontally and vertically
					},
					["right-center"] = {
						anchor = "NE",
						row = function()
							return (vim.o.lines - vim.o.cmdheight - (vim.o.laststatus > 0 and 1 or 0)) / 2
						end,
						col = function()
							return vim.o.columns
						end,
						center_mode = "vertical", -- Center vertically only
					},
					["bottom-left"] = {
						anchor = "SW",
						row = function()
							return vim.o.lines - vim.o.cmdheight - (vim.o.laststatus > 0 and 1 or 0)
						end,
						col = function()
							return 0
						end,
					},
					["bottom-center"] = {
						anchor = "SW",
						row = function()
							return vim.o.lines - vim.o.cmdheight - (vim.o.laststatus > 0 and 1 or 0)
						end,
						col = function()
							return vim.o.columns / 2
						end,
						center_mode = "horizontal", -- Center horizontally only
					},
					["bottom-right"] = {
						anchor = "SE",
						row = function()
							return vim.o.lines - vim.o.cmdheight - (vim.o.laststatus > 0 and 1 or 0)
						end,
						col = function()
							return vim.o.columns
						end,
					},
				},

				-- Width configuration
				width = {
					min_width = 20, -- Minimum notification width
					max_width = nil, -- Maximum width (nil = auto-calculate)
					preferred_width = 50, -- Preferred width when content fits
					max_width_percentage = 0.4, -- Maximum width as percentage of screen
					adaptive = true, -- Automatically adjust width based on content
					wrap_text = true, -- Enable text wrapping for long lines
					wrap_at_words = true, -- Wrap at word boundaries when possible
				},

				-- Icons for different log levels
				icons = {
					[vim.log.levels.TRACE] = "󰔚 ",
					[vim.log.levels.DEBUG] = " ",
					[vim.log.levels.INFO] = " ",
					[vim.log.levels.WARN] = " ",
					[vim.log.levels.ERROR] = " ",
				},

				-- Formatters
				notif_formatter = require("notifier").formatters.default_notif,
				notif_history_formatter = require("notifier").formatters.default_history,

				-- Animation
				animation = {
					enabled = false, -- animation is off by default
					fade_in_duration = 300,
					fade_out_duration = 300,
				},
			})

			vim.notify = notifier.notify
		end,
	},
}
