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
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

-- Set colorscheme
-- Some Good Options 
-- for base16
-- {base16-ayu-mirage base16-everforest base16-tomorrow-night}
-- {dark   : base16-rose-pine , base16-eighties}
-- {lighter: }
-- {light  : base16-google-light }

---{options for nightfoxs(that I liked): nordfox,dawnfox(lighter)}
vim.o.termguicolors = true
vim.cmd 'colorscheme base16-material-lighter'
