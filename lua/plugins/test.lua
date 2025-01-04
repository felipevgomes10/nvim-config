return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-jest",
		"marilari88/neotest-vitest",
		"thenbe/neotest-playwright",
		dependencies = "nvim-telescope/telescope.nvim",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-jest")({
					jestCommand = "npm test --",
					cwd = function()
						return vim.fn.getcwd()
					end,
				}),
				require("neotest-vitest"),
				require("neotest-playwright").adapter({
					options = {
						persist_project_selection = true,
						enable_dynamic_test_discovery = true,
					},
				}),
			},
		})

		vim.keymap.set("n", "<leader>tr", ":Neotest run<CR>", { desc = "Run test" })
		vim.keymap.set("n", "<leader>tc", ":Neotest stop<CR>", { desc = "Stop test" })
		vim.keymap.set("n", "<leader>ts", ":Neotest summary<CR>", { desc = "Test summary" })
		vim.keymap.set("n", "<leader>to", ":Neotest output<CR>", { desc = "Test output" })
		vim.keymap.set("n", "<leader>tp", ":Neotest output-panel toggle<CR>", { desc = "Test output panel" })
	end,
}
