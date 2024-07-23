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
  opts = function()
    local opts = {
      bottom = {
        {
          ft = "noice",
          size = { height = 0.4 },
          filter = function(buf, win)
            return vim.api.nvim_win_get_config(win).relative == ""
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
      },
      right = {
        {
          title = "Neo-Tree",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "filesystem"
          end,
          size = { height = 0.4 },
          pinned = true,
          open = "Neotree"
        },
        {
          ft = "trouble",
          pinned = true,
          title = "Diagnostics",
          size = { height = 0.3 },
          filter = function(_buf, win)
            return vim.w[win].trouble.mode == "diagnostics"
          end,
          open = "Trouble diagnostics focus=false",
        },
        {
          ft = "trouble",
          pinned = true,
          title = "Symbols",
          size = { height = 0.3 },
          filter = function(_buf, win)
            return vim.w[win].trouble.mode == "symbols"
          end,
          open = "Trouble symbols focus=false filter.buf=0",
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

    return opts
  end,
}
