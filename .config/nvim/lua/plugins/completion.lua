-- TODO: check snippets 
return {
  "saghen/blink.cmp",
  dependencies = {
    "rafamadriz/friendly-snippets",
    "onsails/lspkind.nvim",
  },
  version = "*",
  build = "cargo build --release",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "default",
      ["<C-l>"] = {
        "snippet_forward",
        "fallback",
      },
      ["<C-h>"] = { "snippet_backward", "fallback" },

    },

    appearance = {
      nerd_font_variant = "mono",
    },

    signature = { enabled = true },

    completion = {
      menu = {
        auto_show = false,
        draw = {
          components = {
            kind_icon = {
              text = function(ctx)
                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                  local mini_icon, _ = require("mini.icons").get(ctx.item.data.type, ctx.label)
                  if mini_icon then
                    return mini_icon .. ctx.icon_gap
                  end
                end

                local icon = require("lspkind").symbolic(ctx.kind, { mode = "symbol" })
                return icon .. ctx.icon_gap
              end,
              highlight = function(ctx)
                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                  local mini_icon, mini_hl = require("mini.icons").get(ctx.item.data.type, ctx.label)
                  if mini_icon then
                    return mini_hl
                  end
                end
                return ctx.kind_hl
              end,
            },
            kind = {
              -- Optional, use highlights from mini.icons
              highlight = function(ctx)
                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                  local mini_icon, mini_hl = require("mini.icons").get_icon(ctx.item.data.type, ctx.label)
                  if mini_icon then
                    return mini_hl
                  end
                end
                return ctx.kind_hl
              end,
            },
          },
        },
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
