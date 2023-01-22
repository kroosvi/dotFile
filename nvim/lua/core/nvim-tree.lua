-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  auto_reload_on_write = true,

  hijack_netrw = true,


  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },

  renderer = {
    group_empty = true,
  },

  filters = {
    dotfiles = false,
  },

  git = {
    enable = true,
    ignore = false,
    timeout = 400,
  },

  icons = {
    git = {
              unstaged = "✗",
              staged =   "✓",
              unmerged = "",
              renamed =  "➜",
              untracked ="★",
              deleted =  "",
              ignored =  "◌",
          },
  },
})
