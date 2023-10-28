local theme = require("kanagawa.colors").setup().theme
local p = require('kanagawa.colors').setup().palette


local kanagawa = {}

kanagawa.normal = {
  a = { bg = p.lotusTeal2, fg = theme.ui.bg },
  b = { bg = theme.ui.bg_p1, fg = p.lotusTeal2 },
  c = { bg = theme.ui.bg, fg = theme.ui.fg_dim },
}

kanagawa.insert = {
  a = { bg = p.lotusGreen2, fg = theme.ui.bg },
  b = { bg = theme.ui.bg_p1, fg = p.lotusGreen2 },
}

kanagawa.command = {
  a = { bg = p.oniViolet, fg = theme.ui.bg },
  b = { bg = theme.ui.bg, fg = p.oniViolet },
}

kanagawa.visual = {
  a = { bg = p.autumnYellow, fg = theme.ui.bg },
  b = { bg = theme.ui.bg, fg = p.autumnYellow },
}

kanagawa.replace = {
  a = { bg = theme.syn.constant, fg = theme.ui.bg },
  b = { bg = theme.ui.bg, fg = theme.syn.constant },
}

kanagawa.inactive = {
  a = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
  b = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim, gui = "bold" },
  c = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
}

if vim.g.kanagawa_lualine_bold then
  for _, mode in pairs(kanagawa) do
    mode.a.gui = "bold"
  end
end

return kanagawa
