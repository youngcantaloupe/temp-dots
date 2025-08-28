-- Stolen from LazyVim/LazyVim by Folke
local function augroup(name)
    return vim.api.nvim_create_augroup('local_' .. name, { clear = true })
end

-- Highlight on Yank - Thanks Folke
vim.api.nvim_create_autocmd('TextYankPost', {
    group = augroup('highlight_yank'),
    callback = function()
        vim.highlight.on_yank()
    end
})
