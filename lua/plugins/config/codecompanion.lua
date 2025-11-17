require("codecompanion").setup({
  opts = { log_level = "DEBUG" },
  adapters = {
    http = {
      gemini_openrouter = function()
        return require("codecompanion.adapters").extend("openai_compatible", {
          env = {
            url = "https://openrouter.ai/api",
            api_key = "OPENROUTER_API_KEY",
            chat_url = "/v1/chat/completions",
          },
          schema = {
            model = {
              default = "google/gemini-2.5-flash",
            },
          },
        })
      end,
    },
  },
  strategies = {
    background = { adapter = "gemini_openrouter" },
    chat = { adapter = "gemini_openrouter" },
    inline = { adapter = "gemini_openrouter" },
    cmd = { adapter = "gemini_openrouter" },
  }
})
