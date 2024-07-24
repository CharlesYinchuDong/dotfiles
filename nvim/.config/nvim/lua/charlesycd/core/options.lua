-- Turn the netrw into tree structure.
vim.cmd("let g:netrw_liststyle = 3")

-- For convenience.
local opt = vim.opt

-- Display row number on the left side.
opt.relativenumber = true
opt.number = true
-- Display a vertical line at width 80.
opt.colorcolumn = "80"
-- Highlight current line.
opt.cursorline = true
-- Always show sign column.
opt.signcolumn = "yes"

-- Enable mouse.
opt.mouse = "a"
-- Make sure delete works expected.
opt.backspace = "indent,eol,start"

-- Highlight searches.
opt.hlsearch = true
-- Use case insensitive search, except when using capital letters.
opt.ignorecase = true
opt.smartcase = true
-- Search as characters are entered.
opt.incsearch = true

-- Minimum of lines at the top and bottom.
opt.scrolloff = 10

--  Reduce the timeout length to avoid the lag when using <esc> to switch mode
--  When using tmux, also need to:
--  (1) Put "set -sg escape-time 10" in ".tmux.conf".
--  (2) Put "maptimeout 10" in ".screenrc".
opt.timeout = true
opt.timeoutlen = 1000
opt.ttimeout = true
opt.ttimeoutlen = 0

-- Auto read file changes.
opt.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})
vim.api.nvim_create_autocmd({ "FileChangedShellPost" }, {
  command = 'echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None',
  pattern = { "*" }, 
})
