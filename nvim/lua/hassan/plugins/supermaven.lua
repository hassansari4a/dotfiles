return {
	"supermaven-inc/supermaven-nvim",
	-- event = { "BufReadPre", "BufNewFile" },
	event = "InsertEnter",
	config = function()
		require("supermaven-nvim").setup({
			ignore_filetypes = { "log" },
		})
	end,
}
