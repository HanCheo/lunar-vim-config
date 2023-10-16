vim.wo.relativenumber = true

require("lvim.lsp.manager").setup('graphql', {
  filetypes = { "graphql", "javascriptreact", "typescriptreact" },
})

reload "user.nvim-tree"
reload "user.plugins"
reload "user.eslint"
