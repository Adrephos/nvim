require("obsidian").setup({
  workspaces = {
    {
      name = "obsidian",
      path = "~/workspace/obsidian",
    },
  },
  legacy_commands = false,
  templates = {
    folder = "Templates",
    date_format = "%Y-%m-%d-%a",
    time_format = "%H:%M",
  },
  notes_subdir = "Zettelkasten",
  ui = { enable = false },
  attachments = {
    img_folder = "",
    img_name_func = function()
      return string.format("Pasted image %s", os.date "%Y%m%d%H%M%S")
    end,
    confirm_img_paste = false,
  },
  note_id_func = function(title)
    return os.date("%Y%m%d%H%M%S")
  end
})
