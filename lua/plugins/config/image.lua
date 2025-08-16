require('image').setup {
  backend = 'kitty',
  processor = "magick_cli",
  integrations = {
    markdown = {
      enabled = true,
      clear_in_insert_mode = true,
      download_remote_images = true,
      only_render_image_at_cursor = true,
      floating_windows = true,
      only_render_image_at_cursor_mode = "inline"
    },
  },
  max_width = nil,
  kitty_tmux_warning = true,
  max_height_window_percentage = 70,
  hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
}
