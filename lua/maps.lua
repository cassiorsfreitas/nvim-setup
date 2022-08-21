local keymap = vim.keymap

-- Standard operations
keymap.set('n', '<Space>w', '<cmd>w<cr>')
keymap.set('n', '<Space>q', '<cmd>q<cr>')
keymap.set('n', '<Space>h', '<cmd>nohlsearch<cr>')

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Split window
keymap.set('n', '<C-w>s', ':split<Return><C-w>w')
keymap.set('n', '<C-w>v', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')
keymap.set('', '<C-l>', '<C-w>l')

-- Buffer
keymap.set('n', '<Space>c', '<cmd>Bdelete<cr>')
keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>')
keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>')

-- Neo Tree
keymap.set('n', '<Space>e', '<cmd>Neotree toggle<cr>')

-- TODO: Update resize commands
-- Resize window
-- keymap.set('n', '<C-Up>', ':resize -2<CR>')
-- keymap.set('n', '<C-Right>', ':resize +2<CR>')
-- keymap.set('n', '<C-w><up>', '<C-w>+')
-- keymap.set('n', '<C-w><down>', '<C-w>-')
