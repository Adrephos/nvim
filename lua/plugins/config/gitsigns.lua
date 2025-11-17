require('gitsigns').setup({
  on_attach = function(bufnr)
    local ft = vim.bo[bufnr].filetype
    if ft == 'markdown' then
      vim.schedule(function()
        package.loaded.gitsigns.detach(bufnr)
      end)
      return
    end
  end
})
