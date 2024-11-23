local colors <const> = {
  black = 0xff585b70,
  white = 0xfff8f8f2,
  red = 0xf1cc3e44,
  green = 0xffa6e3a1,
  blue = 0xff5e81ac,
  yellow = 0xfff9e2af,
  orange = 0xfff4c07b,
  magenta = 0xffcba6f7,
  purple = 0xff796fa9,
  other_purple = 0xff302c45,
  cyan = 0xff80B3B2,
  grey = 0xff2e3440,
  dirty_white = 0xc8cad3f5,
  dark_grey = 0xff2b2736,
  transparent = 0x00000000,
  bar = {
    bg = 0xff222630,
    border = 0xff2c2e34,
  },
  popup = {
    bg = 0xf1151320,
    border = 0xff2c2e34,
  },
  slider = {
    bg = 0xf1151320,
    border = 0xff2c2e34,
  },
  bg1 = 0xff3b4252,
  bg2 = 0xff302c45,

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then return color end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}

return colors
