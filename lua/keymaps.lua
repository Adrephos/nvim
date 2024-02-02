local opts = { silent = true }
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

-- nvim-tree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', opts)

-- Notify
vim.keymap.set('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', opts)

-- HopWord
vim.keymap.set('n', '<leader>hw', ':HopWord<CR>', opts)

-- harpoon
vim.keymap.set('n', '<leader>hf', require('harpoon.mark').add_file, opts)
vim.keymap.set('n', '<leader>hl', require('harpoon.ui').toggle_quick_menu, opts)

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

-- Snippets
vim.keymap.set('v', '<Leader>s', ":Silicon<CR>", opts)
vim.keymap.set('n', '<Leader>bs', ':Silicon<CR>', opts)
