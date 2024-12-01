return {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

      -- local autogroup = vim.api.nvim_create_augroup("fugitive_autogroup", {})
    end,
  },
}
