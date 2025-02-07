require "nvchad.options"
local o = vim.o
local g = vim.g

-------------
-- Options --
-------------
o.cursorline = true
o.cursorlineopt = "both"
o.cursorcolumn = true
o.ignorecase = true
o.wrap = true
o.number = true
o.relativenumber = true
o.termguicolors = true
o.expandtab = true
o.smarttab = true
o.tabstop = 4
o.shiftwidth = 4
o.updatetime = 100

--------------
-- Autocmds --
--------------

-- Restart xsettingsd when changed
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "xsettingsd.conf",
    command = "!pkill -HUP xsettingsd",
})
