local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end


-- Autocommand that reloads neovim whenever you save the packer.lua file
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --  TokyoNight theme
    use 'folke/tokyonight.nvim'

    -- Extensible Neovim Scrollbar
    use 'petertriho/nvim-scrollbar'

    --  Highly extendable fuzzy finder over lists
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Useful lua functions used by lots of plugins
    use "nvim-lua/plenary.nvim"

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- Rainbow parentheses for neovim using tree-sitter
    use 'p00f/nvim-ts-rainbow'

    -- Like NERDTree >> Needs more configuration for better visual
    use {
        'nvim-tree/nvim-tree.lua',
    }

    -- The completion plugin
    use 'hrsh7th/nvim-cmp'

    -- nvim-cmp source for neovim's built-in language server client.
    use 'hrsh7th/cmp-nvim-lsp'

    -- nvim-cmp source for filesystem paths.
    use 'hrsh7th/cmp-path'

    -- buffer completions
    use 'hrsh7th/cmp-buffer'

    -- snippet completions
    use 'saadparwaiz1/cmp_luasnip'

    --snippet engine
    use "L3MON4D3/LuaSnip"

    -- a bunch of snippets to use
    use "rafamadriz/friendly-snippets"

    -- Quickstart configs for Nvim LSP
    use 'neovim/nvim-lspconfig'

    -- autopairs for neovim written by lua
    use 'windwp/nvim-autopairs'

    -- Git integration for buffers 
    use 'lewis6991/gitsigns.nvim'

    --  Easily manage multiple terminal windows
    use 'akinsho/toggleterm.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
