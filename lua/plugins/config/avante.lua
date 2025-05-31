require('avante').setup({
  provider = "gemini",
  gemini = {
    model = "gemini-2.5-flash-preview-05-20",
    timeout = 30000,
    temperature = 0,
  }
})

require('render-markdown').setup({
  file_types = { 'markdown', 'Avante' },
})
