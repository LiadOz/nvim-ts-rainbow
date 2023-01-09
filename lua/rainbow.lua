local M = {}

function M.init()
  require('nvim-treesitter').define_modules({
    rainbow = {
      module_path = 'rainbow.internal',
      is_supported = function(lang)
        return require('nvim-treesitter.query').get_query(lang, 'parens') ~= nil
      end,
      max_file_lines = nil,
      extended_mode = true,
      colors = {
        '#cc241d',
        '#a89984',
        '#b16286',
        '#d79921',
        '#689d6a',
        '#d65d0e',
        '#458588',
      },
      termcolors = {
        'Red',
        'Green',
        'Yellow',
        'Blue',
        'Magenta',
        'Cyan',
        'White',
      },
    },
  })
end

return M
