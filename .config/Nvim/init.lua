-- NeoVim config

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true
vim.opt.syntax = 'on'
vim.opt.mouse = 'a'
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.termguicolors = true

-- disable nerd fonts for barbar
vim.g.barbar_auto_setup = false
require'barbar'.setup {
	icons = {
		filetype = {
			enabled = false
		}
	}
}

-- empty setup using defaults
require("nvim-tree").setup()
