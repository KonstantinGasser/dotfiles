return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    -- 'savq/melange-nvim',
    'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
      -- Load the colorscheme here.
      -- list highlight groups and description:
      -- so $VIMRUNTIME/syntax/hitest.vim

      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.opt.termguicolors = true
      vim.cmd.colorscheme 'github_dark'
      vim.cmd 'hi Normal guibg=#2e383e'
      vim.cmd 'hi NormalFloat guibg=#2e373e'
      vim.cmd 'hi NormalNC guibg=#2e383e'
      vim.cmd 'hi WinBar guibg=#2e383e'
      vim.cmd 'hi WinBarNC guibg=#2e383e'
      vim.cmd 'hi Pmenu guibg=#2e373e guifg=#abb2bf'
      vim.cmd 'hi PmenuSel guibg=#3e4451 guifg=#ffffff'
      vim.cmd 'hi PmenuSbar guibg=#282c34 guifg=#3e4451'
      vim.cmd 'hi PmenuThumb guibg=#61afef guifg=#282c34'
      vim.cmd 'hi Statement guifg=#da6362'
      vim.cmd 'hi Operator guifg=#da6362'
      vim.cmd 'hi Conditional guifg=#da6362'
      vim.cmd 'hi PreProc guifg=#da6362'
      vim.cmd 'hi Type guifg=#d77f48'
    end,
  },
}
