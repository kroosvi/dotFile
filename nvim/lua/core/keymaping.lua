-- Functional wrapper for mapping custom keybindings
function Map(mode, keybindings, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, keybindings, rhs, options)
end

-- open nvim tree
Map('n', '<leader>tt', ':NvimTreeToggle<CR>',{silent=true}) --Open/close(toggle)
Map('n', '<leader>ttf',':NvimTreeFocus<CR>',{silent=true})  --focus the nvim tree
