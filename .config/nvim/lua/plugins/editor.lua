return {
	{ "catppuccin/nvim" },
	{ "morhetz/gruvbox" },
	{ "navarasu/onedark.nvim" },
	{ "folke/which-key.nvim", opts = {} },
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				icons_enabled = false,
				theme = "auto",
				component_separators = "|",
				section_separators = "",
			},
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			indent = { char = "┊" },
			whitespace = { remove_blankline_trail = false },
		},
	},
	{ "numToStr/Comment.nvim", opts = {} },
}
