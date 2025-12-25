return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'RRethy/base16-nvim',
  },
  config = function()
    vim.cmd('colorscheme base16-kanagawa-dragon')
    require('lualine').setup({

      options = {
        theme = 'base16',
      },
    })
  end,
}
