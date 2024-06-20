local config = require("chromasync.config")

return string.format([[
%%color-format #6h
%%output-directory %s
{
  "bg": "{background}",
  "fg": "{foreground}",

  "blk": "{color_01}",
  "red": "{color_02}",
  "grn": "{color_03}",
  "ylw": "{color_04}",
  "blu": "{color_05}",
  "mag": "{color_06}",
  "cyn": "{color_07}",
  "wht": "{color_08}",

  "blkh": "{color_09}",
  "redh": "{color_10}",
  "grnh": "{color_11}",
  "ylwh": "{color_12}",
  "bluh": "{color_13}",
  "magh": "{color_14}",
  "cynh": "{color_16}",
  "whth": "{color_16}",

  "bg90fg": "{background:90:foreground}",
  "bg80fg": "{background:80:foreground}",
  "bg70fg": "{background:70:foreground}",
  "bg60fg": "{background:60:foreground}",
  "bg50fg": "{background:50:foreground}",

  "fg90bg": "{foreground:90:background}",
  "fg80bg": "{foreground:80:background}",
  "fg70bg": "{foreground:70:background}",
  "fg60bg": "{foreground:60:background}",
  "fg50bg": "{foreground:50:background}"
}
]], config.CHROMASYNC_OUT_DIR)
