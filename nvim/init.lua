require("core.packer-config")
require("core.vim-setting")
require("core.finder-config")
require("core.nvim-tree")
require("core.keymapping")
require("core.autoclose")
require("core.terminal")

require("looks.UI-related")
require("looks.lualine")
require("looks.tab")

require("LSP.lsp-config")
--Wanted: Implement a theme changer base on time(logic control flow basically)

--auto change the dir to the current working dir
vim.opt.autochdir = true
