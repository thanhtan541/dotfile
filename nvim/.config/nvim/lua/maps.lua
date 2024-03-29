local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>',  { silent = true })

-- New window
keymap.set('n', 'ss', ':split<Return><C-w>w',  { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w',  { silent = true })

-- Move window
keymap.set('n', '<Space>', '<C-w>w',  { silent = true })
keymap.set('n', 'sh', '<C-w>h',  { silent = true })
keymap.set('n', 'sk', '<C-w>k',  { silent = true })
keymap.set('n', 'sj', '<C-w>j',  { silent = true })
keymap.set('n', 'sl', '<C-w>l',  { silent = true })

-- Resize window
keymap.set('n', '<C-w>h', '<C-w><',  { silent = true })
keymap.set('n', '<C-w>l', '<C-w>>',  { silent = true })
keymap.set('n', '<C-w>k', '<C-w>+',  { silent = true })
keymap.set('n', '<C-w>j', '<C-w>-',  { silent = true })

