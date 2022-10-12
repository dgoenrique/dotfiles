local Remap = require("dgo.keymap")
local nnoremap = Remap.nnoremap

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
            { key = "u", action = "dir_up" }, --  navigate up to the parent directory of the current file/directory
            { key = ";v", action = "vsplit" }, --  open the file in a vertical split
            { key = ";h", action = "split" }, --  open the file in a horizontal split
            { key = ";t", action = "tabnew" },-- open the file in a new tab
            { key = "<TAB>", action = "preview" }, --  open the file as a preview (keeps the cursor in the tree)
            { key = ";r", action = "full_rename" },-- rename a file and omit the filename on input
            { key = "a", action = "create" }, -- add a file; leaving a trailing `/` will add a directory
            { key = "d", action = "remove" } -- delete a file (will prompt for confirmation)
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  git = {
    enable = true, 
    ignore = false,
    show_on_dirs = true,
    timeout = 400
  }
})

-- Open or close the tree.
nnoremap("<leader>n", ":NvimTreeToggle<cr>")

