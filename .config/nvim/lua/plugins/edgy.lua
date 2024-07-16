return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>ue",
      function()
        require("edgy").toggle()
      end,
      desc = "Edgy Toggle",
    },
    -- stylua: ignore
    { "<leader>uE", function() require("edgy").select() end, desc = "Edgy Select Window" },
  },
  init = function()
    vim.opt.laststatus = 3
    vim.opt.splitkeep = "screen"
  end,
  opts = {
    bottom = {
      { ft = "qf", title = "QuickFix" },
      {
        ft = "help",
        size = { height = 20 },
        -- only show help buffers
        filter = function(buf)
          return vim.bo[buf].buftype == "help"
        end,
      },
      { ft = "spectre_panel", size = { height = 0.4 } },
    },
    right = {
      {
        ft = "trouble",
        pinned = false,
        title = "Diagnostics",
        size = { height = 0.4 },
        filter = function(_buf, win)
          return vim.w[win].trouble.mode == "diagnostics"
        end,
        open = "Trouble diagnostics focus=false filter.severity=vim.diagnostic.severity.ERROR",
      },
      {
        ft = "trouble",
        pinned = true,
        title = "Symbols",
        size = { height = 0.6 },
        filter = function(_buf, win)
          return vim.w[win].trouble.mode == "symbols"
        end,
        open = "Trouble symbols position=left focus=false filter.buf=0",
      },
    },
  },
}
