require('mason').setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require('lspconfig').dartls.setup {
  cmd = { "dart", "language-server", "--protocol=lsp" },
}

require('lspconfig').ltex.setup {
  settings = {
    ltex = {
      enabled = { "bibtex", "gitcommit", "org", "tex", "restructuredtext", "rsweave", "latex", "quarto", "rmd", "context", "mail", "plaintext" }
    }
  }
}

-- require('lspconfig').jdtls.setup {
--   settings = {
--     ltex = {
--       enabled = { "bibtex", "gitcommit", "org", "tex", "restructuredtext", "rsweave", "latex", "quarto", "rmd", "context", "mail", "plaintext" }
--     }
--   }
-- }

require 'lspconfig'.nil_ls.setup {
  settings = {
    ['nil'] = {
      formatting = {
        command = { "nixpkgs-fmt" }
      }
    }
  }
}

require('mason-lspconfig').setup({
  ensure_installed = {}
})
