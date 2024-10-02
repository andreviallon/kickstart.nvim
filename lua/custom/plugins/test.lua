return {
  'vim-test/vim-test',
  dependencies = {
    'preservim/vimux',
  },
  config = function()
    vim.keymap.set('n', '<leader>tr', ':TestNearest<CR>', { desc = 'Run nearest' })
    vim.keymap.set('n', '<leader>tt', ':TestFile<CR>', { desc = 'Run file' })
    vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>', { desc = 'Run suite' })
    vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { desc = 'Run last' })
    vim.keymap.set('n', '<leader>tv', ':TestVisit<CR>', { desc = 'Visit' })
    vim.cmd "let test#strategy = 'vimux'"
  end,
}
