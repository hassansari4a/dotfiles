return {
	"mbbill/undotree",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{ "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle undo tree" },
	},
}
