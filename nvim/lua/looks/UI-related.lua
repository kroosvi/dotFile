-- Set lualine as statusline
-- See `:help lualine.txt`
require('lualine').setup {
  options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        --component_separators = { left = '╲', right = '╱' },
        section_separators = { left = '', right = ''},
        --section_separators = { left = '', right = '' },
        disabled_filetypes = { 'NvimTree' },
        always_divide_middle = true,
        globalstatus = false,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat'},
        lualine_y = {'filetype'},
        lualine_z = {{'os.date("%-I:%M %p")', color = {gui='NONE'}}}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}

-- Enable Comment.nvim
require('Comment').setup()

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
require('indent_blankline').setup {
  char = '┊',
  show_trailing_blankline_indent = false,
}

-- Gitsigns
-- See `:help gitsigns.txt`
require('gitsigns').setup {
  signs = {
    add = { text = '' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd 'colorscheme material'

--Everforest
require("everforest").setup({
  -- Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
  -- Default is "medium".
  background = "hard",
  -- How much of the background should be transparent. Options are 0, 1 or 2.
  -- Default is 0.
  --
  -- 2 will have more UI components be transparent (e.g. status line
  -- background).
  transparent_background_level = 2,
})

--material
require('material').setup({
  terminal = true,
  sidebar  = true,
  floating_windows = true,
  cursor_line = true,

  styles = { -- Give comments style such as bold, italic, underline etc.
      comments = { --[[ italic = true ]] },
      strings = { --[[ bold = true ]] },
      keywords = { --[[ underline = true ]] },
      functions = { --[[ bold = true, undercurl = true ]] },
      variables = {},
      operators = {},
      types = {},
    },

  plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        -- "dashboard",
        "gitsigns",
        -- "hop",
        "indent-blankline",
        -- "lspsaga",
        -- "mini",
        -- "neogit",
        "nvim-cmp",
        -- "nvim-navic",
        "nvim-tree",
        -- "nvim-web-devicons",
        -- "sneak",
        "telescope",
        -- "trouble",
        -- "which-key",
  },

  high_visibility = {
      lighter = true, -- Enable higher contrast text for lighter style
      darker = true    -- Enable higher contrast text for darker style
    },

  async_loading = true,
})

--Options {darker lighter oceanic palenight deep ocean}
vim.g.material_style = "darker"
