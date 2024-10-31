local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascriptreact = { "prettier" },
    vue = { "prettier" },
  },

  format_on_save = {
    enabled = true,
    timeout_ms = 10000,
    lsp_fallback = true,

    filter = function()
      local bufnr = vim.api.nvim_get_current_buf()
      local filename = vim.api.nvim_buf_get_name(bufnr)
      if filename:match "%.min%.js$" then
        return false
      end
      return true
    end,
  },
}

require("conform").setup(options)
