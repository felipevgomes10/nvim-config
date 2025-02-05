return {
	"rmagatti/auto-session",
	lazy = false,
	keys = {
		{ "<leader>wr", "<cmd>SessionSearch<CR>", desc = "Session search" },
		{ "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session" },
		{ "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
	},
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		session_lens = {
			load_on_setup = true,
			previewer = false,
			mappings = {
				delete_session = { "i", "<C-D>" },
				alternate_session = { "n", "<C-S>" },
				copy_session = { "i", "<C-Y>" },
			},
			theme_conf = {
				border = true,
			},
		},
	},
}
