-- return {
--   "MeanderingProgrammer/render-markdown.nvim",
--   dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
--   ---@module 'render-markdown'
--   ---@type render.md.UserConfig
--   opts = {},
-- }

return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {

    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = { "saghen/blink.cmp" },
    config = function()
      -- vim.cmd("colorscheme base16-kanagawa-dragon")
      local e = false
      require("markview").setup({
        preview = {
          enable = true,
          hybrid_modes = { "i", "n" },
          -- linewise_hybrid_mode = true,
        },
        latex = {
          enable = e,
          blocks = {
            enable = e,

            hl = "MarkviewCode",
            pad_char = " ",
            pad_amount = 3,

            text = "  LaTeX ",
            text_hl = "MarkviewCodeInfo",
          },
        },
      })
      require("markview.extras.editor").setup()

      local presets = require("markview.presets").headings

      require("markview").setup({
        markdown = {
          headings = presets.arrowed,
        },
      })
    end,
  },
}
