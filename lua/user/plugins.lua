lvim.plugins = {
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require 'hop'.setup {}
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end
  },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      require("gitblame").setup { enabled = false }
    end,
  },
  { 'mg979/vim-visual-multi' },
  {
    -- Automatically provides suggestions type : /
    -- need UpdateRemotePlugins
    'gelguy/wilder.nvim',
    after = ':UpdateRemotePlugins',
    config = function()
      -- config goes here
    end,
  },
  {
    -- show nvim-lsp status right bottom
    'j-hui/fidget.nvim',
    tag = 'legacy',
  },
  {
    'roxma/nvim-yarp'
  },
  {
    'roxma/vim-hug-neovim-rpc'
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  {
    "RRethy/nvim-treesitter-textsubjects",
    after = "nvim-treesitter",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  {
    -- Create annotations with one keybind, and jump your cursor in the inserted annotation
    "danymat/neogen",
    config = function()
      require("neogen").setup {
        enable = true,
        input_after_command = true,
      }
    end,
    dependencies = "nvim-treesitter/nvim-treesitter",
  }
}
