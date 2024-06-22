return {
  {
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
    opts = function()
      local opts = {
        bottom = {
          {
            ft = "toggleterm",
            size = { height = 0.4 },
            filter = function(buf, win)
              return vim.api.nvim_win_get_config(win).relative == ""
            end,
          },
          {
            ft = "noice",
            size = { height = 0.4 },
            filter = function(buf, win)
              return vim.api.nvim_win_get_config(win).relative == ""
            end,
          },
          {
            ft = "lazyterm",
            title = "LazyTerm",
            size = { height = 0.25 },
            filter = function(buf)
              return not vim.b[buf].lazyterm_cmd
            end,
          },
          { ft = "qf", title = "QuickFix" },
          {
            ft = "help",
            size = { height = 20 },
            -- don't open help files in edgy that we're editing
            filter = function(buf)
              return vim.bo[buf].buftype == "help"
            end,
          },
          { title = "Spectre", ft = "spectre_panel", size = { height = 0.4 } },
          { title = "Neotest Output", ft = "neotest-output-panel", size = { height = 15 } },
        },
        right = {
          {
            ft = "trouble",
            pinned = true,
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
        keys = {
          -- increase width
          ["<c-Right>"] = function(win)
            win:resize("width", 2)
          end,
          -- decrease width
          ["<c-Left>"] = function(win)
            win:resize("width", -2)
          end,
          -- increase height
          ["<c-Up>"] = function(win)
            win:resize("height", 2)
          end,
          -- decrease height
          ["<c-Down>"] = function(win)
            win:resize("height", -2)
          end,
        },
      }
      -- for _, pos in ipairs({ "top", "bottom", "left", "right" }) do
      --   opts[pos] = opts[pos] or {}
      --   table.insert(opts[pos], {
      --     ft = "trouble",
      --     filter = function(_buf, win)
      --       return vim.w[win].trouble
      --         and vim.w[win].trouble.position == pos
      --         and vim.w[win].trouble.type == "split"
      --         and vim.w[win].trouble.relative == "editor"
      --         and not vim.w[win].trouble_preview
      --     end,
      --   })
      -- end
      return opts
    end,
  },
}
