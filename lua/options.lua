require "nvchad.options"

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- add yours here!
vim.opt.scrolloff = 8 -- минимальное количество строк до края экрана
vim.opt.sidescrolloff = 8 -- для горизонтального скролла
vim.opt.mouse = "a" -- включить скроллинг мышью
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
