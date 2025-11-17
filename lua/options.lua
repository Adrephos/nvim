local set = vim.opt
local toggle = true

vim.g.R_objbr_auto_start = 2
vim.g.R_auto_start = 2
vim.g.R_objbr_place = 'BOTTOM'
vim.opt.laststatus = 3
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

set.number = toggle
set.relativenumber = toggle
set.tabstop = 2
set.softtabstop = 2
set.expandtab = true
set.shiftwidth = 2
set.mouse = ""

set.swapfile = false
set.backup = false
set.wrap = false

set.list = true
set.listchars:append "space:⋅"
set.listchars:append "tab:▍⋅"
set.listchars:append "eol:↴"

function Number_toggle()
  vim.o.relativenumber = not toggle
  vim.o.number = not toggle
  toggle = not toggle
end

-- Spell
vim.opt.spell = false
vim.opt.spelllang = { 'en', 'es', 'cjk' }
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "gitcommit" },
  command = "setlocal spell",
})

vim.opt.textwidth = 80
vim.opt.termguicolors = true
vim.cmd [[colorscheme tokyonight]]

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mkdp_auto_start = 1
vim.g.mkdp_auto_close = 0
vim.g.mkdp_combine_preview = 1

vim.g.vim_jsx_pretty_colorful_config = 1

vim.notify = require('notify')

vim.g.Hexokinase_highlighters = { 'virtual' }

vim.keymap.set('n', '<F2>', ':lua Number_toggle()<CR>', {})
