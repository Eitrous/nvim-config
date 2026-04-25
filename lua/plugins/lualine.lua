local has_nerd_font = vim.g.have_nerd_font == true

require('lualine').setup({
  options = {
  theme = 'tokyonight',
  icons_enabled = has_nerd_font,
  section_separators = has_nerd_font and { left = '', right = '' } or { left = '|', right = '|' },
  component_separators = has_nerd_font and { left = '', right = '' } or { left = '|', right = '|' },
  }
})
