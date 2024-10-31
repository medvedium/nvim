require("lint").linters_by_ft = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  javascriptreact = { "eslint_d" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    local file = vim.fn.expand "%"
    if not file:match "%.vue$" then
      require("lint").try_lint()
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "*.js",
  callback = function()
    local file = vim.fn.expand "%"
    if not file:match "%.min%.js$" then
      vim.cmd("silent! !uglifyjs " .. file .. " -o " .. vim.fn.expand "%:r" .. ".min.js")
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.php",
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})

vim.opt.relativenumber = true
