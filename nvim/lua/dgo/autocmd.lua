-- Jump to last edit position on opening file
-- https://github.com/jonhoo/configs/blob/master/editor/.config/nvim/init.vim
vim.cmd([[if has("autocmd")
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
]])
