require("obsidian").setup({
  workspaces = {
    {
      name = "obsidian",
      path = "~/workspace/obsidian",
      overrides = {
        frontmatter = { enabled = true },
        footer = { enabled = true },
      },
    },
    {
      name = "blog",
      path = "~/workspace/github.com/Adrephos/blog",
      overrides = {
        frontmatter = { enabled = false },
        footer = { enabled = true },
        notes_subdir = "blog",
        templates = {
          enabled = false,
          folder = "templates",
          date_format = "%Y-%m-%d",
          time_format = "%H:%M",
        },
      },
    },
    {
      name = "default",
      path = "~/note",
      overrides = {
        frontmatter = { enabled = false },
        footer = { enabled = false },
      },
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
  checkbox = {
    enabled = true,
    create_new = true,
    order = { " ", "/", "x", "-" },
  },
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
