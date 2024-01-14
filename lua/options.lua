local set = vim.opt
local toggle = true

vim.g.R_objbr_auto_start = 2
vim.g.R_auto_start = 2
vim.g.R_objbr_place = 'BOTTOM'

set.number = toggle
set.relativenumber = toggle
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.mouse = ""

set.swapfile = false
set.backup = false
set.clipboard = 'unnamedplus'

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

function compileCFile()
    -- Get the current file path
    local filepath = vim.api.nvim_buf_get_name(0)

    -- Check if the current file is a C file
    if string.match(filepath, "%.c$") then
        -- Modify the compilation command as needed
        local command = "gcc -o " .. vim.fn.fnamemodify(filepath, ":r") .. " " .. filepath

        -- Run the compilation command
        local result = os.execute(command)

        -- Display the compilation result
        if result == 0 then
            print("Compilation successful!")
        else
            print("Compilation failed!")
        end
    else
        print("Not a C file. Compilation aborted.")
    end
end

function compileCPPFile()
    -- Get the current file path
    local filepath = vim.api.nvim_buf_get_name(0)

    -- Check if the current file is a C file
    if string.match(filepath, "%.cpp$") then
        -- Modify the compilation command as needed
        local command = "g++ -o " .. vim.fn.fnamemodify(filepath, ":r") .. " " .. filepath

        -- Run the compilation command
        local result = os.execute(command)

        -- Display the compilation result
        if result == 0 then
            print("Compilation successful!")
        else
            print("Compilation failed!")
        end
    else
        print("Not a C++ file. Compilation aborted.")
    end
end

vim.cmd [[colorscheme dracula]]

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mkdp_auto_start = 1
vim.g.mkdp_refresh_slow = 1

vim.g.vim_jsx_pretty_colorful_config = 1

vim.notify = require('notify')

vim.g.Hexokinase_highlighters = {'backgroundfull'}

vim.keymap.set('n', '<F2>', ':lua Number_toggle()<CR>', {})

vim.keymap.set('n', '<F8>', ':lua compileCFile()<CR>', {})
vim.keymap.set('n', '<F7>', ':lua compileCPPFile()<CR>', {})

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
