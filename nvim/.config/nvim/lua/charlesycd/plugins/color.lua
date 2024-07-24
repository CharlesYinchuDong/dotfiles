return { 
	"ellisonleao/gruvbox.nvim", 
	name = "gruvbox", 
	priority = 1000 , 
	config = function()
		function ColorMyPencils(color)
			-- color = color or "rose-pine"
			color = color or "gruvbox"
			vim.cmd.colorscheme(color)
		end
		vim.opt.termguicolors = true
		vim.opt.background = "dark"
		ColorMyPencils()
	end
}
