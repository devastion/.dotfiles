return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    config = function()
      require("onedark").setup({
        style = "darker"
      })
      vim.cmd.colorscheme("onedark")
    end
  }
}
