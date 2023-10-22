lvim.builtin.nvimtree.setup.filters = {
  dotfiles = true,
}

local isWidened = false
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

  vim.keymap.set('n', 'e', function()
    if isWidened then
      view.resize("-50")
      isWidened = false
    else
      view.resize("+50")
      isWidened = true
    end
  end, opts("width size toggle"))
end
