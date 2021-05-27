local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd([[packadd packer.nvim]])

vim.cmd([[autocmd BufWritePost plugins.lua PackerCompile ]])

return require('packer').startup(function()
  use {
    'wbthomason/packer.nvim',
    opt = true,
  }

  use {
    'tpope/vim-surround',
    event = 'BufRead *',
    requires = 'tpope/vim-repeat',
  }

  use {
    'npxbr/gruvbox.nvim',
    requires = {'rktjmp/lush.nvim'},
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  }

  use {
    'hoob3rt/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    }
  }

  use {
    'junegunn/fzf',
    hook = fn['fzf#install'],
  }
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  use {"folke/todo-comments.nvim"}

  use {'jelera/vim-javascript-syntax'}

  use {'NikolayFrantsev/jshint2.vim'}

  use {'digitaltoad/vim-pug'}

  use {'mfussenegger/nvim-dap'}

  use {'dart-lang/dart-vim-plugin'}

  use {'thosakwe/vim-flutter'}

  use {'edluffy/specs.nvim'}

  use {'tpope/vim-fugitive'}

  use {'ziglang/zig.vim'}

  use {'udalov/kotlin-vim'}

  use {'slashmili/alchemist.vim'}

  use {'elixir-editors/vim-elixir'}

  use {'yuezk/vim-js'}

  use {'leafgarland/typescript-vim'}

  use {'tpope/vim-sensible'}

  use {'alvan/vim-closetag'}

  use {'herringtondarkholme/yats.vim'}

  use {'mxw/vim-jsx'}

  use {'maxmellon/vim-jsx-pretty'}

  use {'jiangmiao/auto-pairs'}

  use {'fatih/vim-go'}

  use {'rust-lang/rust.vim'}

  use {'jparise/vim-graphql'}

  use {'hashivim/vim-terraform'}

  use {'kabouzeid/nvim-lspinstall'}

  use {'junegunn/fzf.vim'}

  use {'neovim/nvim-lspconfig'}

  use {'nvim-lua/completion-nvim'}

  use {'steelsojka/completion-buffers'}

  use {'nvim-treesitter/nvim-treesitter'}

  use {'nvim-treesitter/completion-treesitter'}

  use {'kristijanhusak/completion-tags'}

  use {'tpope/vim-dadbod'}

  use {'kristijanhusak/vim-dadbod-completion'}

  use {'kristijanhusak/vim-dadbod-ui'}

  use {'mhinz/vim-signify'}

end)
