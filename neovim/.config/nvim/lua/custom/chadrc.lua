-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "vscode_dark",
    transparency = false,
}

M.plugins = require "custom.plugins"

return M
