require('avante').setup({
  provider = "openrouter",
  behaviour = {
    enable_fastapply = true, -- Enable Fast Apply feature
  },
  providers = {
    morph = {
      model = "morph-v3-large",
    },
    openrouter = {
      __inherited_from = 'openai',
      endpoint = 'https://openrouter.ai/api/v1',
      api_key_name = 'OPENROUTER_API_KEY',
      model = 'google/gemini-2.5-flash',
    },
  }
})
