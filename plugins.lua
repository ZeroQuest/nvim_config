local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "rust-analyzer",
        "clangd",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    -- config = function (_, _)
      -- require("core.utils").load_mappings("trouble")
    -- end
  }
}
return plugins
