-- Declare a global function to retrieve the current directory
function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require("oil").get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

require("oil").setup({
  skip_confirm_for_simple_edit = true,
  watch_for_changes = true,
  column = {
    "icon",
    "size",
    "permission"
  },
  view_options = {
    show_hidden = true,
    is_always_hidden = function(name, _)
      return name == '..'
    end,
  },
  win_options = {
    winbar = "%!v:lua.get_oil_winbar()",
    signcolumn = "yes:2",
  },
})
