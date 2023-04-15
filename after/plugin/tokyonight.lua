local M = {}

local status_ok, tokyonight = pcall(require, 'tokyonight')
if not status_ok then
  return
end

function M.setup()
  tokyonight.setup({
    style = 'night',
    on_colors = function(colors)
      colors.error = '#9000ff'
    end
  })
  vim.cmd([[colorscheme tokyonight]])
end

return M
