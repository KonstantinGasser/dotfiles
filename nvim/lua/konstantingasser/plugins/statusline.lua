return {
  {
    'itchyny/lightline.vim',
    config = function()
      -- Optional: Add any custom lightline configuration here
      vim.g.lightline = {
        colorscheme = 'wombat', -- Set lightline colorscheme
        active = { left = { { 'mode', 'paste' }, { 'readonly', 'filename', 'modified' } } },
        component_function = {
          filename = 'LightlineFilename',
        },
      }
    end,
  },
}
