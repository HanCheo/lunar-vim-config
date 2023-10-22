vim.wo.relativenumber = true

require("lvim.lsp.manager").setup('graphql', {
  filetypes = { "graphql", "typescript", "javascript", "javascriptreact", "typescriptreact" },
})

reload "user.nvim-tree"
reload "user.plugins"
reload "user.eslint"
reload "user.wilder"
reload "user.tree-sitter"
