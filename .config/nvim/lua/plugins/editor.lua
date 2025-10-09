return {
	"tpope/vim-sleuth",
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			term_colors = true,
			transparent_background = false,
			color_overrides = {
				mocha = {
					base = "#000000",
					mantle = "#000000",
					crust = "#000000",
				},
			},
		},
	},
	{ "folke/which-key.nvim",  opts = {} },
	{ "numToStr/Comment.nvim", opts = {} },
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-sleuth" },
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"f-person/auto-dark-mode.nvim",
		opts = {},
	},
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
			{ "<leader>?",       "<cmd>Telescope oldfiles<cr>",                      { desc = "[?] Find recently opened files" } },
			{ "<leader><space>", "<cmd>Telescope buffers<cr>",                       { desc = "[ ] Find existing buffers" } },
			{ "<leader>ff",      "<cmd>Telescope find_files<cr>",                    { desc = "[S]earch [F]iles" } },
			{ "<leader>fg",      "<cmd>Telescope git_files show_untracked=true<cr>", { desc = "[S]earch [F]iles" } },
			{ "<leader>sh",      "<cmd>Telescope help_tags<cr>",                     { desc = "[S]earch [H]elp" } },
			{ "<leader>sw",      "<cmd>Telescope grep_string<cr>",                   { desc = "[S]earch current [W]ord" } },
			{ "<leader>sg",      "<cmd>Telescope live_grep<cr>",                     { desc = "[S]earch by [G]rep" } },
			{ "<leader>sd",      "<cmd>Telescope diagnostics bufnr=0<cr>",           { desc = "[S]earch [D]iagnostics" } },
			{ "<leader>ss",      "<cmd>Telescope current_buffer_fuzzy_find <cr>",    { desc = "[S]earch [D]iagnostics" } },
		},
	},
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		version = false,
		opts = {
			provider = "ollama",
			providers = {
				ollama = {
					model = "gemma3:12b",
				},
			},
		},
		build = "make",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"stevearc/dressing.nvim",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"echasnovski/mini.pick",
			"nvim-telescope/telescope.nvim",
			{
				-- Make sure to set this up properly if you have lazy=true
				"MeanderingProgrammer/render-markdown.nvim",
				opts = {
					file_types = { "markdown", "Avante" },
				},
				ft = { "markdown", "Avante" },
			},
		},
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		main = 'nvim-treesitter.configs',
		opts = {
			ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
			auto_install = true,
			highlight = { enable = false },
			indent = { enable = true, disable = { 'ruby' } },
		},
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier", "eslint_d" },
				html = { "prettierd", "prettier", "eslint_d" },
			},
			format_on_save = function(bufnr)
				-- Disable with a global or buffer-local variable
				if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
					return
				end
				return { timeout_ms = 500, lsp_fallback = true }
			end,
		},
	},
	{
		"mfussenegger/nvim-lint",
		config = function()
			local lint = require("lint")
			lint.linters_by_ft = {
				javascript = { "prettierd", "eslint_d" },
				typescript = { "prettierd", "eslint_d" },
				javascriptreact = { "prettierd", "eslint_d" },
				typescriptreact = { "prettierd", "eslint_d" },
				html = { "prettierd", "eslint_d" },
				htmldjango = { "djlint" },
			}
			vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost" }, {
				callback = function()
					local lint_status, lint = pcall(require, "lint")
					if lint_status then
						lint.try_lint()
					end
				end,
			})
		end,
	},
}
