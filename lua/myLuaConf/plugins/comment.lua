require('lze').load {
  {
    "comment.nvim",
    for_cat = "general",
    keys = {
      { "gcc", desc = "Comment line", mode = "n" },
      { "gcb", desc = "Comment block", mode = "n" },
      { "gcO", desc = "Comment above", mode = "n" },
      { "gco", desc = "Comment below", mode = "n" },
      { "gca", desc = "Comment end of line", mode = "n" },
      { "gc", desc = "Comment", mode = { "n", "v" } },
    },
    after = function()
      require('Comment').setup({
        padding = true,
        sticky = true,
        ignore = '^$',
        toggler = {
          line = 'gcc',     -- Line-comment toggle keymap
          block = 'gcb',    -- Block-comment toggle keymap
        },
        opleader = {
          line = 'gc',      -- Line-comment keymap
          block = 'gcb',    -- Block-comment keymap
        },
        extra = {
          above = 'gcO',    -- Add comment on the line above
          below = 'gco',    -- Add comment on the line below
          eol = 'gca',      -- Add comment at the end of line
        },
        mappings = {
          basic = true,
          extra = true,
        },
      })
    end,
  },
}