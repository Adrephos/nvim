require('avante').setup({
  provider = "gemini",
  gemini = {
    model = "gemini-2.5-pro-exp-03-25",
    timeout = 30000,
    temperature = 0,
  }
})

require('render-markdown').setup({
  file_types = { 'markdown', 'Avante' },
})
