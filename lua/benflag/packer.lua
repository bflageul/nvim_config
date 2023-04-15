local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
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
        return require('packer.util').float({ border = 'shadow' })
      end
    }
  }
)

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'

  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
   
  use 'nvim-tree/nvim-web-devicons' -- optional, for file icons
--  use { 'rose-pine/neovim',
--    as = 'rose-pine',
--    config = function()
--      vim.cmd('colorscheme rose-pine')
--    end
--  }
  
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
--  use 'kyazdani42/nvim-web-devicons' 
--  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
--  use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins
----  use {'folke/tokyonight.nvim',
----  config = function()
----    require('plugins.tokyonight').setup()
----  end
----}

  -- automatically set up your configuration after cloning packer.nvim
  -- put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
