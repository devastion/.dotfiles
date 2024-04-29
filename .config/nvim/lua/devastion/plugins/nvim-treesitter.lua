return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
        sync_install = true,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        ensure_installed = {
          "javascript",
          "typescript",
          "markdown",
          "json",
          "yaml",
          "html",
          "css",
          "bash",
          "lua",
          "vim",
          "vimdoc",
          "gitignore",
        },
      })
    end
  }
}
