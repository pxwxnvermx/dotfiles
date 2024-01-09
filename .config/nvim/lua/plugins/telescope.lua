return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
				config = function()
					pcall(require("telescope").load_extension, "fzf")
				end,
			},
		},
		opts = {
			defaults = {
				mappings = {
					i = {
						["<C-u>"] = false,
						["<C-d>"] = false,
					},
				},
			},
		},
		keys = {

			{ "<leader>?", "<cmd>Telescope oldfiles<cr>", { desc = "[?] Find recently opened files" } },
			{ "<leader><space>", "<cmd>Telescope buffers<cr>", { desc = "[ ] Find existing buffers" } },
			{
				"<leader>ff",
				function()
					local builtin = require("telescope.builtin")
					builtin.find_files()
				end,
				{ desc = "[S]earch [F]iles" },
			},
			{
				"<leader>fg",
				function()
					local builtin = require("telescope.builtin")
					builtin.git_files({ show_untracked = true })
				end,
				{ desc = "[S]earch [F]iles" },
			},
			{ "<leader>sh", "<cmd>Telescope help_tags<cr>", { desc = "[S]earch [H]elp" } },
			{ "<leader>sw", "<cmd>Telescope grep_string<cr>", { desc = "[S]earch current [W]ord" } },
			{ "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "[S]earch by [G]rep" } },
			{ "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "[S]earch [D]iagnostics" } },
		},
	},
}
