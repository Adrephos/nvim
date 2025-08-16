require('yazi').setup({
  floating_window_scaling_factor = 1,
  yazi_floating_window_border = "single",
  log_level = vim.log.levels.ON,
  hooks = {
    yazi_opened = function()
      vim.defer_fn(function()
        vim.cmd("redraw!")
      end, 50)
    end,
    on_yazi_ready = function()
      vim.defer_fn(function()
        vim.cmd("redraw!")
      end, 50)
    end,
  },
})
