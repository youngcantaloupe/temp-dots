return {
  "EdenEast/nightfox.nvim", -- lazy
  init = function()
    vim.cmd("colorscheme carbonfox")
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "#000000" })
  end,
}
