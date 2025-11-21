return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'tomorrow_night', -- 👈 any built-in theme name here
        icons_enabled = true,
        section_separators = { left = '', right = '' },
        -- component_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
          {
            'filetype',
            colored = true,
            icon_only = true,
          },
          'filename',
        },
        lualine_x = { '' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      extensions = { 'neo-tree', 'trouble' },
    }
  end,
}
