require("toggleterm").setup{
    size = 20,
    open_mapping = [[<c-\>]],
    hide_number = true,
    start_in_insert = true,
    shell = "/bin/zsh",
    direction = "float",

    close_on_exit = true, -- close the terminal window when the process exits
    auto_scroll = true, -- automatically scroll to the bottom on terminal output

    autochdir = true, -- when neovim changes it current directory the terminal will change it's own when next it's opened

    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },

    winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
}
