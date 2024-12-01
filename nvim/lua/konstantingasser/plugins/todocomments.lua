return {
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false, merge_keywords = true, keywords = { QUESTION = { icon = '?', color = 'info' } } },
  },
}
