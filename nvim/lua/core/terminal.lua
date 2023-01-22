require("toggleterm").setup{
    size = 20,
    open_mapping = [[<c-\>]],
    hide_number = true,
    start_in_insert = true,
    shell = "/bin/fish",
    direction = "float",

    close_on_exit = true, -- close the terminal window when the process exits
    auto_scroll = true, -- automatically scroll to the bottom on terminal output


    autochdir = false,

    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        }
    }
}
