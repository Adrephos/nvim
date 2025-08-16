require('avante').setup({
  -- provider = "requesty/gpt",
  -- provider = "requesty/deepseek",
  provider = "requesty/gemini",
  providers = {
    ["requesty/gemini"] = {
      __inherited_from = 'openai',
      endpoint = 'https://router.requesty.ai/v1',
      api_key_name = 'REQUESTY_API_KEY',
      model = 'vertex/google/gemini-2.5-flash@us-west1',
    },
    ["requesty/deepseek"] = {
      __inherited_from = 'openai',
      endpoint = 'https://router.requesty.ai/v1',
      api_key_name = 'REQUESTY_API_KEY',
      model = 'deepinfra/deepseek-ai/DeepSeek-R1-Distill-Llama-70B',
    },
    ["requesty/gpt"] = {
      __inherited_from = 'openai',
      endpoint = 'https://router.requesty.ai/v1',
      api_key_name = 'REQUESTY_API_KEY',
      model = 'openai/gpt-4.1',
    },
  },
})

require('render-markdown').setup({
  file_types = { 'markdown', 'Avante' },
  completions = { lsp = { enabled = true } },
})
