keymap('n', <S-h>, ':bprevious<CR>', opts)

keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

keymap('v', '<A-j>', ':m .+1<CR>==', opts)
keymap('v', '<A-k>', ':m .-2<CR>==', opts)

keymap('v', 'p', '"_dP', opts)
keymap('x', '<leader>pp', '"_dP', opts)

keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

keymap('n', '<m-s>', '<cmd>split<cr>', opts)
keymap('n', '<m-v>', '<cmd>vsplit<cr>', opts)
keymap('n', '<m-q>', '<cmd>:q<cr>', opts)
keymap('n', '<esc><esc>', '<cmd>nohlsearch<cr>', opts)
keymap('n', 'gx', [[:silent execute '!#BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], o>

