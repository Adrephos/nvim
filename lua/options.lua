local set = vim.opt
local toggle = true

vim.g.R_objbr_auto_start = 2
vim.g.R_auto_start = 2
vim.g.R_objbr_place = 'BOTTOM'

set.number = toggle
set.relativenumber = toggle
set.tabstop = 2
set.softtabstop = 2
set.expandtab = true
set.shiftwidth = 2
set.mouse = ""

set.swapfile = false
set.backup = false
set.wrap = true

set.list = true
set.listchars:append "space:⋅"
set.listchars:append "tab:║⋅"
set.listchars:append "eol:↴"

function Number_toggle()
  vim.o.relativenumber = not toggle
  vim.o.number = not toggle
  toggle = not toggle
end

-- vim.cmd [[colorscheme tokyonight]]
vim.cmd [[colorscheme catppuccin]]

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mkdp_auto_start = 1
vim.g.mkdp_refresh_slow = 1

vim.g.vim_jsx_pretty_colorful_config = 1

vim.notify = require('notify')

vim.g.Hexokinase_highlighters = { 'backgroundfull' }

vim.keymap.set('n', '<F2>', ':lua Number_toggle()<CR>', {})

local function open_nvim_tree(data)
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  vim.cmd.cd(data.file)
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
