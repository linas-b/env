
vim.o.encoding=utf8
vim.o.guifont=DejaVu\ Sans\ Mono\ 11
-- set guifont=Hack\ Regular\ 11

-- Show line numbers
vim.wo.number
vim.wo.relativenumber

-- Center cursor
:set scrolloff=100

-- Pretty color
vim.o.termguicolors = true 

-- Set proper tabs
vim.o.expandtab = true                                                     -- Use regular spaces
vim.o.shiftwidth = 2                                                  -- Normal mode spaces
vim.o.softtabstop = 2                                                 -- Insert mode spaces
vim.o.smarttab = true

-- Show max char line
vim.o.colorcolumn = 120

-- Auto reaload file if it has been changed by outside
vim.o.autoread = true

-- Faster scrolling
vim.o.lazyredraw = true

-- Split management
-- set splitbelow
-- set splitright

-- Jump to next/previous line when at the end/start of line
set whichwrap+=<,>,h,l,[,]

-- Default tags + vendor for fasting reloading
set tags+=tags,tags.vendors

-- Smart case sensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Persistent undo
vim.opt.undofile = true
vim.opt.undodir = $HOME/.config/nvim/undo

vim.opt.undolevels = 1000
vim.opt.undoreload = 10000
