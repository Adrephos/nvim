require("tokyonight").setup({
  style = "night",
  light_style = "day",
  transparent = true,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "transparent",
  },
  day_brightness = 0.3,
  dim_inactive = false,
  lualine_bold = false,
})
