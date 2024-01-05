require("formatter").setup({
	filetype = {
		python = {
			-- black
			function()
				return {
					exe = "black", -- Ensure black is in your PATH
					args = { "-", "--line-length", "78" },
					stdin = true,
				}
			end,
		},
		lua = {
			-- stylua
			function()
				return {
					exe = "stylua", -- Make sure stylua is in your PATH
					args = { "-" },
					stdin = true,
				}
			end,
		},
	},
})
