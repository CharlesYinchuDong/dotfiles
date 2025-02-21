return {
	"nvim-lua/plenary.nvim",
	"benmills/vimux",
	"nvim-tree/nvim-web-devicons",
  {
    "tpope/vim-commentary",
    config = function()
      vim.cmd([[autocmd FileType cpp setlocal commentstring=//\ %s]])
      vim.cmd([[autocmd FileType proto setlocal commentstring=//\ %s]])
    end,
  }
}
