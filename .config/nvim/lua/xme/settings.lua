--- @type vim.Version
local version = vim.version()

local o = vim.opt

o.smartindent = true

o.expandtab = true -- Convert Tab to spaces
o.shiftwidth = 4 -- Number of spaces inserted each indent
o.tabstop = 4 -- Insert 4 Spaces for a tab
o.softtabstop = 4

o.cursorline = true
o.relativenumber = true
o.scrolloff = 8
o.swapfile = false

o.termguicolors = true

o.completeopt = "menu,menuone,noselect"
o.cmdheight = 1

o.updatetime = 50

if version.minor >= 10 then
	o.smoothscroll = true
end

o.grepprg = "rp --vimgrep"

o.mousemoveevent = true

o.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)

vim.keymap.set({ "n", "i" }, "<C-s>", vim.cmd.w, {})

if vim.g.neovide then
	vim.g.neovide_transparency = 0.9
	vim.g.neovide_scale_factor = 1 * (1 / 1.1)
	vim.g.neovide_cursor_animation_length = 0.05

	vim.keymap.set("n", "<C-=>", function()
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.1
	end)
	vim.keymap.set("n", "<C-->", function()
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * (1 / 1.1)
	end)
end
