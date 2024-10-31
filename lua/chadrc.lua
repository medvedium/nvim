-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "kanagawa",
  theme_toggle = { "kanagawa", "one_light" },
  -- transparency = true,
  statusline = {
    -- theme = "vscode_colored",
  },
  nvdash = {
    load_on_startup = true,
    header = {
      "NvChad",
    },
  },
  hl_override = {
    -- Comment = { italic = true, fg = "#33e771", bg = "#33e771" },
    -- ["@comment"] = { italic = true, fg = "#33e771" },
    DiffChange = {
      bg = "#464414",
      fg = "none",
    },
    DiffAdd = {
      bg = "#103507",
      fg = "none",
    },
    DiffRemoved = {
      bg = "#461414",
      fg = "none",
    },
  },
}

return M
