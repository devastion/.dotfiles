return {
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    lazy = true,
    opts = {
      style = "darker",
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
