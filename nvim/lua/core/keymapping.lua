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

--
--Tab
--
local tmap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--go to 
tmap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
tmap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Goto buffer in position...
tmap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
tmap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
tmap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
tmap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
tmap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
tmap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
tmap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
tmap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
tmap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
tmap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

--close buffer
tmap('n', '<A-c>', '<CMD>BufferClose<CR>',opts)

-- Operations to edit the buffer
tmap('n', '<C-s>', '<CMD>w<CR>', opts)
-- tmap
-- tmap('n', '<C')
