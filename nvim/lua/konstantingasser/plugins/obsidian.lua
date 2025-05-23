return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    'BufReadPre /Users/konstantingasser/obsidian/*.md',
    'BufNewFile /Users/konstantingasser/obsidian/*.md',
  },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies ??
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/obsidian/personal',
      },
      {
        name = 'university',
        path = '~/obsidian/university',
      },
    },

    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },

    ui = {
      enable = true, -- set to false to disable all additional syntax features
      update_debounce = 200, -- update delay after a text change (in milliseconds)
      max_file_length = 5000, -- disable UI features for files with more than this many lines
      -- Define how various check-boxes are displayed
      checkboxes = {
        -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
        -- Replace the above with this if you don't have a patched font:
        [' '] = { char = 'O', hl_group = 'ObsidianTodo' },
        ['x'] = { char = 'X', hl_group = 'ObsidianDone' },

        -- You can also add more custom ones...
      },
      -- Use bullet marks for non-checkbox lists.
      bullets = { char = 'o', hl_group = 'ObsidianBullet' },
      external_link_icon = { char = '@', hl_group = 'ObsidianExtLinkIcon' },
      -- Replace the above with this if you don't have a patched font:
      -- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
      reference_text = { hl_group = 'ObsidianRefText' },
      highlight_text = { hl_group = 'ObsidianHighlightText' },
      tags = { hl_group = 'ObsidianTag' },
      block_ids = { hl_group = 'ObsidianBlockID' },
      hl_groups = {
        -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
        ObsidianTodo = { bold = true, fg = '#f78c6c' },
        ObsidianDone = { bold = true, fg = '#89ddff' },
        ObsidianRightArrow = { bold = true, fg = '#f78c6c' },
        ObsidianTilde = { bold = true, fg = '#ff5370' },
        ObsidianImportant = { bold = true, fg = '#d73128' },
        ObsidianBullet = { bold = true, fg = '#89ddff' },
        ObsidianRefText = { underline = true, fg = '#c792ea' },
        ObsidianExtLinkIcon = { fg = '#c792ea' },
        ObsidianTag = { italic = true, fg = '#89ddff' },
        ObsidianBlockID = { italic = true, fg = '#89ddff' },
        ObsidianHighlightText = { bg = '#75662e' },
      },
    },
  },
  init = function()
    -- Obsidian.nvim keymaps
    vim.keymap.set('n', '<leader>ob', ':ObsidianBacklinks<CR>', { desc = 'List backlinks to note' })
    vim.keymap.set('n', '<leader>of', ':ObsidianFollowLink<CR>', { desc = 'Follow or list links' })
    vim.keymap.set('n', '<leader>ol', ':ObsidianLinks<CR>', { desc = 'List links in note' })
  end,
  -- config = function()
  --   vim.keymap.set('n', '<leader>bl', ':ObsidianBacklinks<CR>', { desc = 'List known backlinks' })
  -- end,
}
