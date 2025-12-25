return {
  "echasnovski/mini.nvim",
  config = function()
    local surround = require("mini.surround")
    surround.setup({})

    local icons = require("mini.icons")
    icons.setup({})
    MiniIcons.mock_nvim_web_devicons()
  end,
}
