
set nocompatible "VI compatible mode is disabled so that VIm things work

"===========================================
"           Syntax and indent
"===========================================
"
" Turn on syntax highlighting.
 syntax on

" Shows matching brackets
set showmatch

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Enable file type detection
filetype plugin indent on

" turn on auto-indenting (use this if you turn off the option ':filetype
" plugin indent on')
":set ai

" make auto-indenting 'smarter' (use this if you turn off the option ':filetype
" plugin indent on')
":set si

"===========================================
"       Basic editing config
"===========================================

" Changing the cursor in insert mode
set guicursor=""

" Use 4 spaces instead of tabs during formatting
set expandtab " swap tabs out for spaces
"set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" No long lines wrap
set nowrap

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" This enables relative line numbering mode.
set relativenumber

" Always show the status line at the bottom, even if you only have one
" window open.
set laststatus=2

" Smart case-sensitive search
set ignorecase
set smartcase

" Highlight searches by default
set hlsearch        

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Disable audible bell 
set noerrorbells visualbell t_vb=

" Enable mouse support.
set mouse+=a

" Copy to clipboard
set clipboard=unnamed
set clipboard=unnamedplus

" Allow backspacing over everything
set backspace=indent,eol,start

" Enable the option to edit multiple buffers without saving the modifications
:set hidden

" WARNING
"   If we try to exiting vim, when 'hidden' is enabled, we are going to see
"   two message errors (E67, E162) specifying that we are not allowing to exit
"   from Vim, until we save or discard changes from the mentioned buffer.

" " Always shows the location in file (line#)
set ruler

" Helper to keep lines under 80 characters
set colorcolumn=80
let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
set textwidth=100 "max-width in line 100 
set lbr "linebreak

" Automatically closing: 
""inoremap ( ()<Esc>i
""inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
""inoremap [ []<Esc>i
""inoremap < <><Esc>i
""inoremap ' ''<Esc>i
""inoremap " ""<Esc>i

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Number of screen lines to show around the cursor
set scrolloff=8

" Substitute the word under the cursor.
"https://github.com/jeremyckahn/dotfiles/blob/master/.vimrc
nmap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>


"===========================================
"            Keyboard shortcuts
"===========================================

"""""""""""""""""""""""
"  Moves in modes
"""""""""""""""""""""""

" Movements in normal mode, insert mode, and visual mode (h/j/k/l)
" " In normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" " ...in insert mode...
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
" " ... and in visual mode
vnoremap <Down> <ESC>:echoe "Use j"<CR>
vnoremap <Left> <ESC>:echoe "Use h"<CR>
vnoremap <Right> <ESC>:echoe "Use l"<CR>
vnoremap <Up> <ESC>:echoe "Use k"<CR>

"""""""""""""""""
"  For Splits 
"""""""""""""""""
" Navigation from one split to another
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Maximize the current split:
nnoremap <leader>m <C-W><C-_>

" Return to equalized splits:
nnoremap <leader>= <C-W><C-=>

" Keyboard key combo for :vsplit <current file>
nnoremap <leader>v <C-w>v

" Keyboard key combo for :split <current file>
nnoremap <leader>h <C-w>s

"Change 2 split windows from vertical to horizontal or horizontal to vertical
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K


"""""""""""Have some issues in Tmux"""""""""""""""""

" Decrease the size of current split
nnoremap <silent> <C-Right> :resize -3<CR>

" Increase the size of current split
nnoremap <silent> <C-Left> :resize +3<CR>

" Increase the current split width:
nnoremap <silent> <C-Down> :vertical resize +3<CR>

" Decrease the current split width:
nnoremap <silent> <C-Up> :vertical resize -3<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""
"  For Tabs
"""""""""""""""""

" Keyboard key combo for :tabnew
map <leader>tn :tabnew<cr>

" Keyboard key combo for :tabnex
" (tabnext # << #gt or #gT, where # is the tab position)
map <leader>t<leader> :tabnext

" Keyboard key combo for :tabmove
map <leader>tm :tabmove

" Keyboard key combo for :tabclose
map <leader>tc :tabclose<cr>

" Keyboard key combo for :tabonly
map <leader>to :tabonly<cr>


"===========================================
"               Colors and Fonts
"===========================================

colorscheme sub_mono 
"set background=dark
"set termguicolors

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

"https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
highlight Comment cterm=italic

"let g:materialmonokai_italic=1
"let g:materialmonokai_subtle_spell=1
"let g:materialmonokai_custom_lint_indicators=0


" Enable colors in tmux: https://github.com/tmux/tmux/issues/1246
" This is only necessary if you use set termguicolors.
 if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"===========================================
"            Autocommands
"===========================================

" Jump to last edit position on opening file
"https://github.com/jonhoo/configs/blob/master/editor/.config/nvim/init.vim
if has("autocmd")
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


"===========================================
"               Plugins
"===========================================
" (Plugins with a Vim Plugin Manager: vim-plug)

" (Each time you want to install a plugin, you must enter the name and location
" of the plugin between the plug#begin() and plug#end lines. If the plugin you
" want isn't hosted on GitHub, then you can provide the full URL instead of
" just the GitHub username and project ID. You can even install local plugins
" outside of your ~/.vim directory)

call plug#begin()
    Plug 'itchyny/lightline.vim'
call plug#end()

" Finally, start Vim and prompt vim-plug to install the plugins listed in
"  ~/.vimrc:
" :PlugInstall

" For clean uninstall, remove the name between the plug#begin() and plug#end()
" and run:
" :PlugClean"

" Others plugins to install:
" Plug 'preservim/NERDTree' --> Look this: https://github.com/preservim/nerdtree/issues/1280
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

"""""""""""""""""
"  lightline
"""""""""""""""""

" Remove status information
set noshowmode 

let g:lightline = {
      \ 'colorscheme':'molokai', 
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'LightlineFilename'
      \ },
      \ }

function! LightlineFilename()
      return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction


