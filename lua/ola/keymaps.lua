local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<space>", "", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "


--stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", "<", ">gv", opts)


-- window management
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width and height
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current splits" }) -- close current split window

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)




