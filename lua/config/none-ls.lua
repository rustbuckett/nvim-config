local none_ls = require("null-ls")

none_ls.setup({
    sources = {
        none_ls.builtins.formatting.prettier.with({
            extra_args = { "--html-whitespace-sensitivity", "strict" }
        }),
    },
})
