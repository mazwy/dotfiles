vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.o.conceallever = 0
vim.o.pumheight = 5
vim.o.showmode = false
vim.o.showtabline = true

-- Line numbers & relative numbers:
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 4
vim.o.cursorline = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = false 
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.o.textwidth = 79
-- Auto indent:
vim.opt.ai = true
-- Smart indent:
vim.opt.si = true
-- No wrap lines:
vim.opt.wrap = false
vim.opt.backspace = 'start,eol,indent'
-- Finding files - Search down into subfolders
vim.opt.path:append { '**' }
-- ??? vim.opt.wildignore:append { '*/node_

-- Undercurl #TODO
--vim.cmd([[let &t_Cs = "

vim.opt.allowrevins = true
