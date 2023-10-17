vim.wo.relativenumber = true

require("lvim.lsp.manager").setup('graphql', {
  filetypes = { "graphql", "typescript", "javascript", "javascriptreact", "typescriptreact" },
})

lvim.builtin.telescope.theme = "center"

reload "user.nvim-tree"
reload "user.plugins"
reload "user.eslint"
