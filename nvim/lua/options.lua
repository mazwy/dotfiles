local options = {
	encoding = 'utf-8',
	fileencoding = 'utf-8',
	conceallevel = 0,
	pumheight = 5,
	showmode = false,
	showtabline = 0,
	showmatch = true,
	number = true,
	relativenumber = true,
	numberwidth = 4,
	cursorline = true,
	title = true,
	autoindent = true,
	hlsearch = true,
	backup = false,
	showcmd = true,
	cmdheight = 1,
	laststatus = 3,
	expandtab = 2,
	scrolloff = 10,
	shell = 'fish',
	backupskip = '/tmp/*,/private/tmp/*',
	inccomand = 'split',
	ignorecase = true,
	smartcase = true,
	smarttab = true,
	smartindent = true,
	breakindent = true,
	shiftwidth = 4,
	tabstop = 4,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	textwidth = 79,
	ai = true,
	si = true,
	wrap = false,
	backspace = 'start,eol,indent',
	path:append { '**' },
	clipboard = 'unnamedplus',
	allowrevins = true,
	completeopt = { 'menuone', 'noselect' },
	mouse = 'a',
	termguicolors = true,
	timeoutlen = 1000,
	updatetime = 50,
	writebackup = false,
	signcolumn = 'yes',
	sidescrolloff = 8,
	list = true,
	wildmenu = true,
	sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal',
	shortmess:append('c')
}

vim.cmd([[
	setlocal spell spelllang = en
	setlocal spell!
	filetype plugin indent on 
]])

vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd('set whichwrap+=<,>,[,],h,l')
vim.cmd([[set iskeyword+=-]])
