-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/gleipnir/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/gleipnir/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/gleipnir/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/gleipnir/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gleipnir/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["async.vim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/async.vim",
    url = "https://github.com/prabirshrestha/async.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["auto-session"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["avante.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\15avante_lib\frequire\0" },
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/avante.nvim",
    url = "https://github.com/yetone/avante.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["data-viewer.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/data-viewer.nvim",
    url = "https://github.com/vidocqh/data-viewer.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["global-note.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/global-note.nvim",
    url = "https://github.com/backdround/global-note.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/smoka7/hop.nvim"
  },
  ["image.nvim"] = {
    config = { "\27LJ\2\n€\2\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\17integrations\rmarkdown\1\0\1\rmarkdown\0\1\0\6\27download_remote_images\2\25clear_in_insert_mode\2\fenabled\2%only_render_image_at_cursor_mode\vinline\21floating_windows\2 only_render_image_at_cursor\2\1\0\6\fbackend\nkitty\23kitty_tmux_warning\2\15max_height\3\30\14max_width\0\17integrations\0\14processor\15magick_cli\nsetup\nimage\frequire\0" },
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/image.nvim",
    url = "https://github.com/3rd/image.nvim"
  },
  ["img-clip.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/img-clip.nvim",
    url = "https://github.com/HakonHarnes/img-clip.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nc\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0B\0\1\1K\0\1\0\27mock_nvim_web_devicons\nsetup\15mini.icons\frequire\0" },
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.icons"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/mini.icons",
    url = "https://github.com/echasnovski/mini.icons"
  },
  ["noice.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-popcorn"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nvim-popcorn",
    url = "https://github.com/javiorfo/nvim-popcorn"
  },
  ["nvim-spinetta"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nvim-spinetta",
    url = "https://github.com/javiorfo/nvim-spinetta"
  },
  ["nvim-springtime"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nvim-springtime",
    url = "https://github.com/javiorfo/nvim-springtime"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["oil-git-status.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19oil-git-status\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/opt/oil-git-status.nvim",
    url = "https://github.com/refractalize/oil-git-status.nvim"
  },
  ["oil.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  ["render-markdown.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["vim-arsync"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/vim-arsync",
    url = "https://github.com/kenn7/vim-arsync"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/vim-elixir",
    url = "https://github.com/elixir-editors/vim-elixir"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-hexokinase"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/vim-hexokinase",
    url = "https://github.com/rrethy/vim-hexokinase"
  },
  ["vim-js"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/vim-js",
    url = "https://github.com/yuezk/vim-js"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
    url = "https://github.com/MaxMEllon/vim-jsx-pretty"
  },
  ["vim-mix-format"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/vim-mix-format",
    url = "https://github.com/mhinz/vim-mix-format"
  },
  ["vim-react-snippets"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/vim-react-snippets",
    url = "https://github.com/mlaursen/vim-react-snippets"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["wilder.nvim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/home/gleipnir/.local/share/nvim/site/pack/packer/start/yats.vim",
    url = "https://github.com/HerringtonDarkholme/yats.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nc\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0B\0\1\1K\0\1\0\27mock_nvim_web_devicons\nsetup\15mini.icons\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: avante.nvim
time([[Config for avante.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\15avante_lib\frequire\0", "config", "avante.nvim")
time([[Config for avante.nvim]], false)
-- Config for: image.nvim
time([[Config for image.nvim]], true)
try_loadstring("\27LJ\2\n€\2\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\17integrations\rmarkdown\1\0\1\rmarkdown\0\1\0\6\27download_remote_images\2\25clear_in_insert_mode\2\fenabled\2%only_render_image_at_cursor_mode\vinline\21floating_windows\2 only_render_image_at_cursor\2\1\0\6\fbackend\nkitty\23kitty_tmux_warning\2\15max_height\3\30\14max_width\0\17integrations\0\14processor\15magick_cli\nsetup\nimage\frequire\0", "config", "image.nvim")
time([[Config for image.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd oil.nvim ]]
vim.cmd [[ packadd oil-git-status.nvim ]]

-- Config for: oil-git-status.nvim
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19oil-git-status\frequire\0", "config", "oil-git-status.nvim")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
