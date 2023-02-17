-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

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
    indent_width = 2,

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
      },

      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        modified = "●",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged= "✗",
          staged  = "✓",
          unmerged= "",
          renamed = "➜",
          untracked="★",
          deleted = "",
          ignored = "◌",
        },
      },
    },

    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
    symlink_destination = true,

  },

  filters = {
    dotfiles = false,
  },

  git = {
    enable = true,
    ignore = false,
    timeout = 400,
  },
})

