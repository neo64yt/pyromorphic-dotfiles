-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "yoru",
    transparency = false,
}

M.plugins = require "custom.plugins"

return M
