
-- Change the cursor in insert mode
vim.opt.guicursor = ""

-- Changing the leader
vim.g.mapleader = " "

-- Use 4 spaces instead of tabs during formatting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- No long lines wrap
vim.opt.wrap = false

-- Disable the default Vim startup message.
vim.opt.shortmess:append("c")

-- Show line numbers.
vim.opt.number = true

-- This enables relative line numbering mode.
vim.opt.relativenumber = true

-- Always show the status line at the bottom, even if you only have one
-- window open.
vim.opt.laststatus = 2

-- Smart case-sensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Dont highlight searches by default
vim.opt.hlsearch = false 

-- Enable searching as you type, rather than waiting till you press enter.
vim.opt.incsearch = true

-- Disable audible bell 
vim.opt.errorbells = false

-- Enable mouse support.
vim.opt.mouse:append("a")

-- Copy to clipboard
vim.opt.clipboard=unnamed
vim.opt.clipboard=unnamedplus

-- Always shows the location in file (line#)
vim.opt.ruler = true

-- Helper to keep lines under 80 characters
vim.opt.colorcolumn = "80"
vim.cmd[[let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)]]
vim.cmd[[set textwidth=100 ]] -- max-width in line 100 
vim.cmd[[set lbr ]] -- linebreak

-- Column used for sings
vim.opt.signcolumn = "yes"

-- Nvim understand environment variables 
vim.opt.isfname:append("@-@")

-- Open new split panes to right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Number of screen lines to show around the cursor
vim.opt.scrolloff = 8

-- Working with swap files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Setting the termguicolors
vim.opt.termguicolors = true

-- Shows matching brackets
vim.opt.showmatch = true

-- Enable the option to edit multiple buffers without saving the modifications
vim.cmd([[:set hidden]])

-- WARNING
--   If we try to exiting vim, when 'hidden' is enabled, we are going to see
--   two message errors (E67, E162) specifying that we are not allowing to exit
--   from Vim, until we save or discard changes from the mentioned buffer.
