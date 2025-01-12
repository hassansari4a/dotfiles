return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	-- enabled = false,
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			svelte = { "eslint_d" },
			python = { "pylint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		local linting_enabled = true -- Flag to track linting status

		local function try_lint_if_enabled()
			if linting_enabled then
				lint.try_lint()
			end
		end

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			-- callback = function()
			-- 	lint.try_lint()
			-- end,
			callback = try_lint_if_enabled,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })

		-- Keymap to toggle linting on/off
		vim.keymap.set("n", "<leader>lx", function()
			linting_enabled = not linting_enabled
			if linting_enabled then
				print("Linting enabled")
			else
				print("Linting disabled")
			end
		end, { desc = "Toggle linting on/off" })
	end,
}
