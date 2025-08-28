-- Makes space the leader
vim.g.mapleader = " "

-- Makes the cursor a block always
vim.opt.guicursor = "a:block"

-- Enables relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Makes tab width 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Automatically indents
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = true

-- Shows search as you're typing not after
vim.opt.incsearch = true
vim.opt.hlsearch = false -- Shows search as you're typing not after
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Enables true color support
vim.opt.termguicolors = true

-- Highlights the line the cursor is on
vim.opt.cursorline = true

-- Leaves 8 lines above/below cursor while scrolling
vim.opt.scrolloff = 8

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = "unnamedplus"

-- Conceallevel for Obsidian interactive keys
vim.opt.conceallevel = 1

-- Configure Diagnostics
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
  virtual_text = false,
  update_in_insert = false,
  signs = true,
  underline = true,
  float = {
    border = "rounded",
  },
})

vim.opt.cmdheight = 1
vim.opt.lazyredraw = false
vim.opt.showmode = false
