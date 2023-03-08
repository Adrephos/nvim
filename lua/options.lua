local set = vim.opt
local toggle = true

set.number = toggle
set.relativenumber = toggle
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.mouse = ""

set.swapfile = false
set.backup = false
set.wrap = false

function Number_toggle()
	vim.o.relativenumber = not toggle
	vim.o.number = not toggle
	toggle = not toggle
end

local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.cmd [[colorscheme dracula]]

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mkdp_auto_start = 1
vim.g.mkdp_refresh_slow = 1

vim.g.vim_jsx_pretty_colorful_config = 1

vim.notify = require('notify')

vim.keymap.set('n', '<F2>', ':lua Number_toggle()<CR>', {})

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
