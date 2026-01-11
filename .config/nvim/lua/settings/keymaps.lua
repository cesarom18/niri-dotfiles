-- Set Options
local opts = { noremap = true, silent = true }
-- Set Key Map Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Set Keymaps
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Moves lines up in visual selection" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Moves lines down in visual selection" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move down in buffer with cursor centered" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Move to the next search result centered"})
vim.keymap.set("n", "N", "Nzzzv", { desc = "Move to the previous search result centered"})
vim.keymap.set("v", "<", "<gv", opts ) -- Indent selected lines to left
vim.keymap.set("v", ">", ">gv", opts) -- Indent selected lines to right 
vim.keymap.set("x", "<leader>p", [["_dp]], { desc = "Paste without replacing clipboard content" })
vim.keymap.set("v", "p", '"_dp', opts) -- Paste without replacing clipboard content (It's the same but changing the default action)
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete text without change the clipboard" })
vim.keymap.set("n", "x", '"_x', opts) -- Delete character without save it in clipboard
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlight words in normal mode", silent = true })
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word cursor matches is on current buffer/file" })
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open a new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Got to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current tab in a new one" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
vim.keymap.set("n", "<A-h>", ":vertical resize -3<CR>")
vim.keymap.set("n", "<A-l>", ":vertical resize +3<CR>")
vim.keymap.set("n", "<A-j>", ":resize +3<CR>")
vim.keymap.set("n", "<A-k>", ":resize -3<CR>")
