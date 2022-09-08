-- Note: This config file must be used with NvChad

-- Options
vim.opt.ignorecase = true
vim.opt.wrap = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.updatetime = 100

--------------
-- Autocmds --
--------------

-- Neovim resizing
local window_size = vim.api.nvim_create_augroup("WindowSize", {})
vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Automatically resize Neovim when started from a script",
  group = window_size,
  command = "silent exec '!kill -s SIGWINCH $PPID'",
})
