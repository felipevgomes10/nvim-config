vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smartindent")
vim.cmd("set smarttab")
vim.cmd("set autoindent")
vim.cmd("set number")
vim.cmd("set nowrap")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate windows left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate windows down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate windows up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate windows right" })

-- Buffer navigation
vim.keymap.set("n", "ll", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "hh", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "cc", ":bdelete<CR>", { desc = "Close buffer" })

-- Resize windows with arrows
vim.keymap.set("n", "H", ":vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "L", ":vertical resize +2<CR>", { silent = true })

-- Better indenting
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Move text up and down
vim.keymap.set("n", "<C-,>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<C-.>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<C-,>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<C-.>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- File operations
vim.keymap.set("n", "w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "Q", ":q!<CR>", { desc = "Quit without saving" })
vim.keymap.set("n", "wq", ":wq<CR>", { desc = "Save and quit" })
vim.keymap.set("n", "wa", ":wa<CR>", { desc = "Save all" })
vim.keymap.set("n", "qq", ":wqa<CR>", { desc = "Save and quit all" })
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear highlights" })

-- Duplicate line
vim.keymap.set("n", "<leader>d", ":t.<CR>", { desc = "Duplicate line and paste below" })
vim.keymap.set("n", "<leader>D", ":t-1<CR>", { desc = "Duplicate line and paste above" })
vim.keymap.set("v", "<leader>d", ":t+1<CR>gv=gv", { desc = "Duplicate selection and paste below" })
vim.keymap.set("v", "<leader>D", ":t-1<CR>gv=gv", { desc = "Duplicate selection and paste above" })

-- Split window
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split horizontally" })

-- Search improvements
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result centered" })

-- Quick pairs
vim.keymap.set("i", '""', '""<left>', { desc = "Add double quotes" })
vim.keymap.set("i", "''", "''<left>", { desc = "Add single quotes" })
vim.keymap.set("i", "()", "()<left>", { desc = "Add parentheses" })
vim.keymap.set("i", "{}", "{}<left>", { desc = "Add curly braces" })
vim.keymap.set("i", "[]", "[]<left>", { desc = "Add square brackets" })
