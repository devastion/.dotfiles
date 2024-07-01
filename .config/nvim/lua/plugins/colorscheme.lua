return {
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    lazy = true,
    opts = {
      style = "darker",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
  },

  -- Configure LazyVim to load onedark
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
