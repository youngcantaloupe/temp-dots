local colors = {
  black = "#000000",
  white = "#f2f4f8",
  red = "#ee5396",
  green = "#25be6a",
  blue = "#78a9ff",
  yellow = "#fdd835",
  magenta = "#be95ff",
  cyan = "#08bdba",
  gray = "#5c5c5c",
  darkgray = "#282828",
  lightgray = "#dfdfe0",
  inactivegray = "#3c3c3c",
}

return {
  normal = {
    a = { bg = colors.black, fg = colors.green, gui = "bold" },
    b = { bg = colors.black, fg = colors.green },
    c = { bg = colors.black, fg = colors.green },
  },
  insert = {
    a = { bg = colors.black, fg = colors.white, gui = "bold" },
    b = { bg = colors.black, fg = colors.white },
    c = { bg = colors.black, fg = colors.white },
  },
  visual = {
    a = { bg = colors.black, fg = colors.magenta, gui = "bold" },
    b = { bg = colors.black, fg = colors.magenta },
    c = { bg = colors.black, fg = colors.magenta },
  },
  replace = {
    a = { bg = colors.black, fg = colors.red, gui = "bold" },
    b = { bg = colors.black, fg = colors.red },
    c = { bg = colors.black, fg = colors.red },
  },
  command = {
    a = { bg = colors.black, fg = colors.yellow, gui = "bold" },
    b = { bg = colors.black, fg = colors.yellow },
    c = { bg = colors.black, fg = colors.yellow },
  },
  inactive = {
    a = { bg = colors.black, fg = colors.gray, gui = "bold" },
    b = { bg = colors.black, fg = colors.gray },
    c = { bg = colors.black, fg = colors.gray },
  },
}
