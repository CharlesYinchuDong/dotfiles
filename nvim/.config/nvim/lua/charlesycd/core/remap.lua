vim.g.mapleader = " "

-- For convenience.
local keymap = vim.keymap

-- Buffer navigation.
keymap.set("n", "<leader>l", ":ls<CR>:b<space>", {desc = "List all buffers."})
keymap.set("n", "<leader><tab>", ":b#<CR>", {desc = "Previous buffer."})

-- Go to previous buffer (ctrl-6 is hard to reach).
keymap.set("n", "<C-j>", ":b#<CR>", {desc = "Previous buffer."})

keymap.set("n", "<leader>cf", ":let @*=expand('%:t')<CR>", {desc = "Copy file name."})
keymap.set("n", "<leader>ci", ":call setreg('', '#include \"'.expand('%:p:.').'\"', 'l')<CR>", {desc = "Yank include statement."})
keymap.set("n", "<leader>cp", ":let @*=expand('%:p:.')<CR>", {desc = "Copy file path."})
keymap.set("n", "<leader>cv", "VaBo0y$%o<Esc>p", {desc = "Copy everything in the curly bracket."})

keymap.set("n", "<leader>o", ":only<CR>", {desc = "Keep only the current window."})

keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Return to netrw."})

keymap.set("n", "C-l", ":noh<CR>", {desc = "Clear search hightlight."})
