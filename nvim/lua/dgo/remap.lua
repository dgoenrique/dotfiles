local nnoremap = require("dgo.keymap").nnoremap

-- Auto indent pasted text
vim.cmd([[nnoremap p p=`]<C-o>]])
vim.cmd([[nnoremap P P=`]<C-o>]])

-- Substitute the word under the cursor.
-- https://github.com/jeremyckahn/dotfiles/blob/master/.vimrc
vim.cmd([[nmap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--"""""""""""""""""
--    For Splits 
--"""""""""""""""""

-- Navigation from one split to another
nnoremap("<C-J>","<C-W><C-J>")
nnoremap("<C-K>","<C-W><C-K>")
nnoremap("<C-L>","<C-W><C-L>")
nnoremap("<C-H>","<C-W><C-H>")

-- Maximize the current split:
nnoremap("<leader>m","<C-W><C-_>")

-- Return to equalized splits:
nnoremap("<leader>=","<C-W><C-=>")

-- Keyboard key combo for :vsplit <current file>
nnoremap("<leader>v","<C-w>v")

-- Keyboard key combo for :split <current file>
nnoremap("<leader>h","<C-w>s")

-- Change 2 split windows from vertical to horizontal or horizontal to vertical
vim.keymap.set("n","<leader>th","<C-w>t<C-w>H")
vim.keymap.set("n","<leader>tk","<C-w>t<C-w>K")

--"""""""""""""""""""""""""""""
--  Fixing some issues on Tmux
--"""""""""""""""""""""""""""""

-- Decrease the size of current split
nnoremap("<C-Right>",":resize -3<CR>")

-- Increase the size of current split
nnoremap("<C-Left>",":resize +3<CR>")

-- Increase the current split width:
nnoremap("<C-Down>",":vertical resize +3<CR>")

-- Decrease the current split width:
nnoremap("<C-Up>",":vertical resize -3<CR>")

--"""""""""""""""""
--    For Tabs
--"""""""""""""""""

-- Keyboard key combo for :tabnew
vim.keymap.set("n","<leader>tn",":tabnew<cr>")

-- Keyboard key combo for :tabnex
-- (tabnext # << #gt or #gT, where # is the tab position)
vim.keymap.set("n","<leader>t<leader>",":tabnext")

-- Keyboard key combo for :tabmove
vim.keymap.set("n","<leader>tm",":tabmove")

-- Keyboard key combo for :tabclose
vim.keymap.set("n","<leader>tc",":tabclose<cr>")

-- Keyboard key combo for :tabonly
vim.keymap.set("n","<leader>to",":tabonly<cr>")


-- Automatically closing: 
--vim.keymap.set("i","{<CR>","{<CR>}<Esc>O")
--vim.keymap.set("i","(<CR>","(<CR>)<Esc>O")
--vim.keymap.set("i","[<CR]","[<CR>]<Esc>O")
--vim.keymap.set("i","{<CR}","{<CR>}<Esc>O")
--vim.keymap.set("i","{","{}<Esc>i")
--vim.keymap.set("i","(","()<Esc>i")
--vim.keymap.set("i","[","[]<Esc>i")
--vim.keymap.set("i","\"","\"\"<Esc>i")
--vim.keymap.set("i","<","<><Esc>i")
--vim.keymap.set("i","'","''<Esc>i")
