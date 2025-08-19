require('lze').load {
  {
    "comment.nvim",
    for_cat = "general",
    keys = {
      { "<C-/>", desc = "Toggle comment", mode = { "n", "v" } },
      { "gcc", desc = "Comment line", mode = "n" },
      { "gc", desc = "Comment", mode = { "n", "v" } },
    },
    after = function()
      require('Comment').setup({
        -- Add padding between comment and content
        padding = true,
        -- Keep cursor position after commenting
        sticky = true,
        -- Ignore empty lines
        ignore = '^$',
        -- LHS of toggle mappings in NORMAL mode
        toggler = {
          line = '<C-/>', -- Line-comment toggle keymap
          block = 'gbc',  -- Block-comment toggle keymap
        },
        -- LHS of operator-pending mappings in NORMAL and VISUAL mode
        opleader = {
          line = '<C-/>', -- Line-comment keymap
          block = 'gb',   -- Block-comment keymap
        },
        -- LHS of extra mappings
        extra = {
          above = 'gcO', -- Add comment on the line above
          below = 'gco', -- Add comment on the line below
          eol = 'gcA',   -- Add comment at the end of line
        },
        -- Enable keybindings
        mappings = {
          basic = true,    -- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
          extra = true,    -- Extra mapping; `gco`, `gcO`, `gcA`
        },
        -- Function to call before (un)comment
        pre_hook = nil,
        -- Function to call after (un)comment
        post_hook = nil,
      })
    end,
  },
}