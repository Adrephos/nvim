require('nvim-treesitter.configs').setup {
	ensure_installed = { "eex", "heex", "html", "surface", "go" },
	auto_install = false,
	highlight = { enable = true },
	ignore_install = { "all" }
}
