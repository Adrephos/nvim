require("presence"):setup({
    -- General options
    auto_update         = true,
    neovim_image_text   = "I thought I have come to understand emotions better.",
    main_image          = "file",
    client_id           = "793271441293967371",
    log_level           = nil,
    debounce_timeout    = 10,
    enable_line_number  = false,
    blacklist           = {},
    buttons             = true,
    file_assets         = {},
    show_time           = true,

    -- Rich Presence text options
    editing_text        = "📄  %s",
    file_explorer_text  = "🔍  %s",
    git_commit_text     = "📨 Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text        = "Reading %s",
    workspace_text      = "📂  %s",
    line_number_text    = "Line %s/%s",
})
