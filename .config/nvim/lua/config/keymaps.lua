-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode then
  -- Folding normal mode
  vim.api.nvim_set_keymap(
    "n",
    "za",
    '<Cmd>call VSCodeNotify("editor.toggleFold")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "zR",
    '<Cmd>call VSCodeNotify("editor.unfoldAll")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap("n", "zM", '<Cmd>call VSCodeNotify("editor.foldAll")<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "zo", '<Cmd>call VSCodeNotify("editor.unfold")<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap(
    "n",
    "zO",
    '<Cmd>call VSCodeNotify("editor.unfoldRecursively")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap("n", "zc", '<Cmd>call VSCodeNotify("editor.fold")<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap(
    "n",
    "zC",
    '<Cmd>call VSCodeNotify("editor.foldRecursively")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "z1",
    '<Cmd>call VSCodeNotify("editor.foldLevel1")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "z2",
    '<Cmd>call VSCodeNotify("editor.foldLevel2")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "z3",
    '<Cmd>call VSCodeNotify("editor.foldLevel3")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "z4",
    '<Cmd>call VSCodeNotify("editor.foldLevel4")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "z5",
    '<Cmd>call VSCodeNotify("editor.foldLevel5")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "z6",
    '<Cmd>call VSCodeNotify("editor.foldLevel6")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "z7",
    '<Cmd>call VSCodeNotify("editor.foldLevel7")<CR>',
    { noremap = true, silent = true }
  )

  -- Folding visual mode
  vim.api.nvim_set_keymap(
    "x",
    "zV",
    '<Cmd>call VSCodeNotify("editor.foldAllExcept")<CR>',
    { noremap = true, silent = true }
  )
end
