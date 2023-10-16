local lspconfig = require "lspconfig"

lspconfig.eslint.setup({
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
  root_dir = function()
    return vim.fn.getcwd()
  end,
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    name = "eslint",
  }
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    name = "eslint",
  }
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    name = "eslint",
  },
}

lvim.format_on_save.enabled = true
