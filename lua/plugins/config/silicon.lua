require('silicon').setup {
  font = "JetBrainsMono Nerd Font Mono:Medium:size=20",
  theme = "DarkNeon",
  background = "#d9d9d9",
  pad_horiz = 50,
  pad_vert = 50,
  to_clipboard = true,
  no_round_corner = true,
  output = function()
    return "/dev/null" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
  end,
}
