local highlight = {
  "ScopeGray",
}

local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "ScopeGray", { fg = "#a0a0B0" })
end)

require("ibl").setup({
  scope = {
    enabled = true,
    highlight = highlight
  },
  indent = {
    -- tab_char = "▍",
    char = "▏"
  }
})
