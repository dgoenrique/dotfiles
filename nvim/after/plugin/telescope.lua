local Remap = require("dgo.keymap")
local nnoremap = Remap.nnoremap

-- Lists files in your current working directory, respects .gitignore
nnoremap("<leader>f", "<cmd>lua require('telescope.builtin').find_files()<CR>")

-- Fuzzy search through the output of git ls-files command, respects .gitignore
nnoremap("<leader>fgf", "<cmd>lua require('telescope.builtin').git_files()<cr>")

-- Search for a string in your current working directory and get results live as you type, respects .gitignore
nnoremap("<leader>lg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")

-- Lists open buffers in current neovim instance
nnoremap("<leader>lb", "<cmd>lua require('telescope.builtin').buffers()<cr>")

-- Lists vim marks and their value
nnoremap("<leader>lm", "<cmd>lua require('telescope.builtin').marks()<cr>")

-- Lists available help tags and opens a new window with the relevant help info on <cr>
nnoremap("<leader>lm", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- Lists Diagnostics for current buffer.
nnoremap("<leader>ld", "<cmd>lua require('telescope.builtin').diagnostics()<cr>")
