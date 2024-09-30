return {
  -- Active indent guide and indent text objects. When you're browsing
  -- code, this highlights the current level of indentation, and animates
  -- the highlighting.
  {
    'echasnovski/mini.indentscope',
    version = false, -- wait till new 0.7.0 release to put it back on semver
    opts = {
      -- symbol = "▏",
      symbol = '│',
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd('FileType', {
        pattern = {
          'alpha',
          'dashboard',
          'fzf',
          'help',
          'lazy',
          'lazyterm',
          'mason',
          'neo-tree',
          'notify',
          'toggleterm',
          'Trouble',
          'trouble',
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
  },
}

--return {
--  { -- Add indentation guides even on blank lines
--    'lukas-reineke/indent-blankline.nvim',
--    -- Enable `lukas-reineke/indent-blankline.nvim`
--    -- See `:help ibl`
--    main = 'ibl',
--    opts = {},
--    config = function()
--      require('ibl').setup()
--    end,
--  },
--}
