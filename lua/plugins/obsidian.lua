local HOME = os.getenv("HOME")
return {
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    event = {
      -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
      -- refer to `:h file-pattern` for more examples
      "BufReadPre "
        .. HOME
        .. "/Documents/obsidian-notes/*.md",
      "BufNewFile " .. HOME .. "/Documents/obsidian-notes/*.md",
    },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
      "ibhagwan/fzf-lua",

      -- see below for full list of optional dependencies 👇
    },
    ui = { enable = false },
    opts = {
      workspaces = {
        {
          name = "work",
          path = HOME .. "/Documents/obsidian-notes",
        },
      },
      picker = {
        name = "fzf-lua",
      },
    },
  },
}
