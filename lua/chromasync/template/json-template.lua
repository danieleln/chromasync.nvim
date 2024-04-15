local config = require("chromasync.config")

return string.format([[
@fmt: #hex
@dir: %s
{
  "bg": "{BG}",
  "fg": "{FG}",

  "blk": "{BLK}",
  "red": "{RED}",
  "grn": "{GRN}",
  "ylw": "{YLW}",
  "blu": "{BLU}",
  "mag": "{MAG}",
  "cyn": "{CYN}",
  "wht": "{WHT}",

  "blkh": "{BLKH}",
  "redh": "{REDH}",
  "grnh": "{GRNH}",
  "ylwh": "{YLWH}",
  "bluh": "{BLUH}",
  "magh": "{MAGH}",
  "cynh": "{CYNH}",
  "whth": "{WHTH}",

  "bg90fg": "{BG:90:FG}",
  "bg80fg": "{BG:80:FG}",
  "bg70fg": "{BG:70:FG}",
  "bg60fg": "{BG:60:FG}",
  "bg50fg": "{BG:50:FG}",

  "fg90bg": "{FG:90:BG}",
  "fg80bg": "{FG:80:BG}",
  "fg70bg": "{FG:70:BG}",
  "fg60bg": "{FG:60:BG}",
  "fg50bg": "{FG:50:BG}"
}
]], config.CHROMASYNC_OUT_DIR)
