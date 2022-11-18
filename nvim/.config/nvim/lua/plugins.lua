local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'hoob3rt/lualine.nvim' -- Status line
  use 'L3MON4D3/LuaSnip' -- Snippet
  use 'onsails/lspkind-nvim' -- Vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- Nvim-cmp source for buffer
  use 'hrsh7th/cmp-nvim-lsp' -- Nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
end)
