return {
	"ThePrimeagen/harpoon",
	enabled = false,
	keys = {
		vim.keymap.set(
			"n",
			"<leader>ha",
			"<cmd>lua require('harpoon.mark').add_file()<CR>",
			{ desc = "Add file to harpoon" }
		),
		vim.keymap.set(
			"n",
			"<C-e>",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			{ desc = "toggle harpoon quick menu" }
		),
		vim.keymap.set(
			"n",
			"<leader>jq",
			"<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
			{ desc = "goto file 1 in harpoon" }
		),
		vim.keymap.set(
			"n",
			"<leader>jw",
			"<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
			{ desc = "goto file 2 in harpoon" }
		),
		vim.keymap.set(
			"n",
			"<leader>je",
			"<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
			{ desc = "goto file 3 in harpoon" }
		),
		vim.keymap.set(
			"n",
			"<leader>jr",
			"<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
			{ desc = "goto file 4 in harpoon" }
		),
	},
}
