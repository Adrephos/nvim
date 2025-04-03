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

-- Oil
vim.keymap.set('n', '<C-n>', '<CMD>Oil<CR>', opts)

-- Notify
vim.keymap.set('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', opts)

-- HopWord
vim.keymap.set('n', '<leader>hw', ':HopWord<CR>', opts)

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

-- Copilot
vim.api.nvim_set_keymap('i', '<C-l>', "copilot#Accept('<CR>')", { expr = true, silent = true })
vim.keymap.set('i', '<C-j>', '<Plug>(copilot-next)', opts)
vim.keymap.set('i', '<C-k>', '<Plug>(copilot-previous)', opts)
vim.g.copilot_no_tab_map = true

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

-- Tabs
--
local map = vim.api.nvim_set_keymap
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Pin/unpin buffer
map('n', '<A-t>', '<Cmd>BufferPin<CR>', opts)

-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

-- Magic buffer-picking mode
map('n', '<C-i>', '<Cmd>BufferPick<CR>', opts)

-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
