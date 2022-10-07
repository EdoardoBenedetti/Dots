vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'vim-airline/vim-airline'
  use 'sainnhe/gruvbox-material'

  use 'preservim/nerdcommenter'
  use 'preservim/nerdtree'
end)
