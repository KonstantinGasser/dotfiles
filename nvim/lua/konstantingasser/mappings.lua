vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- just no
vim.keymap.set('n', 'Q', '<nop>')

-- allow C-i to open Explorer
vim.keymap.set('n', '<C-i>', vim.cmd.Ex)

-- move highlighted lines up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- find * and replace * of current word
vim.keymap.set('n', 'S', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- -- Obsidian.nvim keymaps
-- vim.keymap.set('n', '<leader>ob', ':ObsidianBacklinks<CR>', { desc = 'List backlinks to note' })
-- vim.keymap.set('n', '<leader>of', ':ObsidianFollowLink<CR>', { desc = 'Follow or list links' })
-- vim.keymap.set('n', '<leader>ol', ':ObsidianLinks<CR>', { desc = 'List links in note' })
