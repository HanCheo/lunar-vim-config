lvim.builtin.nvimtree.setup.filters = {
  dotfiles = true,
  gitignore = true,
}

lvim.builtin.nvimtree.setup.on_attach = function(bufnr)
  local api = require "nvim-tree.api"
  local view = require "nvim-tree.view"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))

  local resized = false
  vim.keymap.set('n', 'e', function()
    if resized then
      view.resize("-50")
      resized = false
    else
      view.resize("+50")
      resized = true
    end
  end, opts("width size toggle"))
end
