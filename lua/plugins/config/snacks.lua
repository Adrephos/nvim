require("snacks").setup {
  image = {
    enabled = true,
    doc = {
      max_height = 20,
    },
    convert = {
      magick = {
        default = { "{src}[0]", "-scale", "1920x1080>" },
        vector = { "-density", 192, "{src}[0]" },
        math = { "-density", 192, "{src}[0]", "-trim" },
        pdf = { "-density", 192, "{src}[0]", "-background", "white", "-alpha", "remove", "-trim" },
      },
    },
    math = {
      enabled = true,
      latex = {
        font_size = "large",
      },
    },
    resolve = function(path, src)
      if require("obsidian.api").path_is_note(path) then
        return require("obsidian.api").resolve_image_path(src)
      end
    end,
  },
}
