local status, saga = pcall(require, "lspsaga")
if (not status) then return end
local opts = { noremap = true, silent = true }

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

vim.keymap.set('n', '<C-d>', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', '<S-k>', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<S-t>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'ga', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
