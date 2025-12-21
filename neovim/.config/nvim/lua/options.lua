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
o.arabicshape = false

if g.neovide then
    o.guifont = "JetBrainsMono Nerd Font:h11"
    g.neovide_opacity = 0.9
    g.neovide_normal_opacity = 0.9
    g.neovide_confirm_quit = true
end

--------------
-- Autocmds --
--------------

-- Restart xsettingsd when changed
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "xsettingsd.conf",
    command = "!pkill -HUP xsettingsd",
})
