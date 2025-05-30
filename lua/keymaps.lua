local opts = { silent = true }
-- lsp & diagnostic
vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
vim.keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.keymap.set('n', '<leader>gp', '<cmd>lua vim.lsp.buf.format { async = true }<CR>', opts)
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>gi', builtin.git_files, opts)
vim.keymap.set('n', '<leader>fi', builtin.find_files, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)

-- vim-fugitive
vim.keymap.set('n', '<leader>gs', ':Git<CR>', opts)
vim.keymap.set('n', '<leader>gj', ':diffget //3<CR>', opts)
vim.keymap.set('n', '<leader>gf', ':diffget //2<CR>', opts)
vim.keymap.set('n', '<leader>gk', ':Git commit<CR>', opts)
vim.keymap.set('n', '<leader>gvd', ':Gvdiffsplit!<CR>', opts)
vim.keymap.set('n', '<leader>gnh', ':Gitsigns prev_hunk<CR>', opts)
vim.keymap.set('n', '<leader>gph', ':Gitsigns next_hunk<CR>', opts)

-- Oil
vim.keymap.set('n', '<C-n>', '<CMD>Oil<CR>', opts)

-- Notify
vim.keymap.set('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', opts)

-- HopWord
vim.keymap.set('n', '<leader>hw', ':HopWord<CR>', opts)

-- Harpoon
local hp = require('harpoon')
vim.keymap.set('n', '<leader>hf', function() hp:list():add() end, opts)
vim.keymap.set('n', '<leader>hl', function() hp.ui:toggle_quick_menu(hp:list()) end, opts)

vim.keymap.set('n', '<C-h>', function() hp:list():select(1) end, opts)
vim.keymap.set('n', '<C-j>', function() hp:list():select(2) end, opts)
vim.keymap.set('n', '<C-k>', function() hp:list():select(3) end, opts)
vim.keymap.set('n', '<C-l>', function() hp:list():select(4) end, opts)

vim.keymap.set("n", "<leader>hk", function() hp:list():prev() end)
vim.keymap.set("n", "<leader>hj", function() hp:list():next() end)

-- Gitsigns
local gs = require('gitsigns')
vim.keymap.set('n', '<leader>hb', function() gs.blame_line { full = true } end, opts)
vim.keymap.set('n', '<leader>hd', gs.toggle_deleted, opts)

-- treesitter
local tsc = require('treesitter-context')
vim.keymap.set('n', ']c', function() tsc.go_to_context(vim.v.count1) end, opts)

-- Custom
vim.keymap.set('n', 'K', ':m .-2<CR>==', opts)
vim.keymap.set('n', 'J', ':m .+1<CR>==', opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('n', 'j', "gj", opts)
vim.keymap.set('n', 'k', "gk", opts)

vim.keymap.set('n', '<leader>l', ':noh<CR>', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)

-- Clipboard
-- Copy to clipboard
vim.api.nvim_set_keymap('x', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>yy', '"+yy', { noremap = true, silent = true })
-- Paste from clipboard
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>p', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>P', '"+P', { noremap = true, silent = true })

-- DataViewer
vim.keymap.set('n', '<Leader>dv', ":DataViewer<CR>", opts)
vim.keymap.set('n', '<Leader>dvc', ":DataViewerClose<CR>", opts)

-- Global Note
local gn = require('global-note')
vim.keymap.set('n', '<leader>gn', function() gn.toggle_note() end, opts)
