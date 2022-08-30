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

-- Telescope
keymap.set('n', '<Space>fw', function() require("telescope.builtin").live_grep() end)
keymap.set('n', '<Space>fW', function()
      require("telescope.builtin").live_grep {
        additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
      }
    end)
keymap.set('n', '<Space>ff', function() require("telescope.builtin").find_files() end)
keymap.set('n', '<Space>fF', function() require("telescope.builtin").find_files { hidden = true, no_ignore = true } end)
keymap.set('n', '<Space>fo', function() require("telescope.builtin").oldfiles() end)
keymap.set('n', '<Space>fc', function() require("telescope.builtin").grep_string() end)
keymap.set('n', '<Space>fb', function() require("telescope.builtin").buffers() end)
keymap.set('n', '<Space>gt', function() require("telescope.builtin").git_status() end)
keymap.set('n', '<Space>gb', function() require("telescope.builtin").git_branches() end)
keymap.set('n', '<Space>gc', function() require("telescope.builtin").git_commits() end)

-- GitSigns
-- keymap.set('n', '<Space>gd', function() require("gitsigns").diffthis() end)

-- Diffview
keymap.set('n', '<Space>gd', '<cmd>DiffviewOpen<cr>')
keymap.set('n', '<Space>gq', '<cmd>DiffviewClose<cr>')

-- TODO: Update resize commands
-- Resize window
-- keymap.set('n', '<C-Up>', ':resize -2<CR>')
-- keymap.set('n', '<C-Right>', ':resize +2<CR>')
-- keymap.set('n', '<C-w><up>', '<C-w>+')
-- keymap.set('n', '<C-w><down>', '<C-w>-')
