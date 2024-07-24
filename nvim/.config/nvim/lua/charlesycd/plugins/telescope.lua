return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require('telescope.builtin')
    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>pr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Find string in cwd" })
    keymap.set("n", "<leader>pc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
    keymap.set('n', '<leader>pa', function()
	    builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
  end,
}
