return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ft = "markdown",
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in the next major release
    new_notes_location='current_dir',
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "100_staging/",
    },
    picker = {
      name = "snacks.pick",
    },
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/Obsidian Vault/",
      },
      -- {
      --   name = "work",
      --   path = "~/vaults/work",
      -- },
    },
  },
}
