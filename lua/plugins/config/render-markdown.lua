require('render-markdown').setup({
  present = "obsidian",
  file_types = { 'markdown', 'Avante' },
  completions = { lsp = { enabled = true } },
  -- render_modes = { 'n', 'c', 't' },
  render_modes = true,
  latex = {
    enabled = false,
    render_modes = false,
    converter = { 'utftex', 'latex2text' },
    highlight = 'RenderMarkdownMath',
    position = 'center',
    top_pad = 0,
    bottom_pad = 0,
  },
  checkbox = {
    custom = {
      todo = { raw = '[/]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo', scope_highlight = nil },
      canceled = { raw = '[-]', rendered = ' ', highlight = 'RenderMarkdownTodo', scope_highlight = nil },
    },
  },
  link = {
    custom = {
      youtube = { pattern = 'youtube%.com', icon = '󰗃 ' },
      youtube_2 = { pattern = 'youtu%.be', icon = '󰗃 ' },
    },
  },
})
