require('lze').load {
  {
    "nvim-ufo",
    for_cat = "general",
    dependencies = { "promise-async" },
    event = "BufRead",
    keys = {
      { "zR", desc = "Open all folds" },
      { "zM", desc = "Close all folds" },
      { "zr", desc = "Open folds except kinds" },
      { "zm", desc = "Close folds with" },
      { "zK", desc = "Peek fold" },
    },
    after = function()
      -- Using ufo provider need remap `zR` and `zM`
      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
      
      require('ufo').setup({
        -- Choose your provider priority
        provider_selector = function(bufnr, filetype, buftype)
          return {'treesitter', 'indent'}
        end,
        
        -- Optional: Custom fold text
        fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
          local newVirtText = {}
          local suffix = ('  %d '):format(endLnum - lnum)
          local sufWidth = vim.fn.strdisplaywidth(suffix)
          local targetWidth = width - sufWidth
          local curWidth = 0
          
          for _, chunk in ipairs(virtText) do
            local chunkText = chunk[1]
            local chunkWidth = vim.fn.strdisplaywidth(chunkText)
            if targetWidth > curWidth + chunkWidth then
              table.insert(newVirtText, chunk)
            else
              chunkText = truncate(chunkText, targetWidth - curWidth)
              local hlGroup = chunk[2]
              table.insert(newVirtText, {chunkText, hlGroup})
              chunkWidth = vim.fn.strdisplaywidth(chunkText)
              if curWidth + chunkWidth < targetWidth then
                suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
              end
              break
            end
            curWidth = curWidth + chunkWidth
          end
          
          table.insert(newVirtText, {suffix, 'MoreMsg'})
          return newVirtText
        end,
        
        -- Preview configuration
        preview = {
          win_config = {
            border = {'', '─', '', '', '', '─', '', ''},
            winhighlight = 'Normal:Folded',
            winblend = 0
          },
          mappings = {
            scrollU = '<C-u>',
            scrollD = '<C-d>',
            jumpTop = '[',
            jumpBot = ']'
          }
        },
        
        -- Performance settings
        close_fold_kinds = {'imports', 'comment'},
        enable_get_fold_virt_text = true,
      })
    end,
  },
}