return {
  'olexsmir/gopher.nvim',
  ft = 'go',
  config = function(_, opts)
    require('gopher').setup(opts)
    local group = vim.api.nvim_create_augroup('gopher_keymaps', { clear = true })
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'go',
      group = group,
      callback = function(event)
        vim.keymap.set('n', '<leader>ge', '<Cmd>GoIfErr<CR>', { buffer = event.buf, desc = 'Insert go if err snippet', silent = true })
      end,
    })
  end,
  build = function()
    vim.cmd 'silent! GoInstallDeps'
  end,
}
