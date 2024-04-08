@fmt: #hex
-- TODO: find a better way to source the palette file. Hard
--       coding the filepath is not the best way
-- TODO: maybe define an ENV variable like CHROMASYNC_OUT_DIR
--       and allow template to source it, like
--       @out: $CHROMASYNC_OUT_DIR/path/to/file
-- TODO: change chromasync to allow out specs to be just
--       directories, not only files

return {
  bg = "{BG}",
  fg = "{FG}",

  blk = "{BLK}",
  red = "{RED}",
  grn = "{GRN}",
  ylw = "{YLW}",
  blu = "{BLU}",
  mag = "{MAG}",
  cyn = "{CYN}",
  wht = "{WHT}",

  blkh = "{BLKH}",
  redh = "{REDH}",
  grnh = "{GRNH}",
  ylwh = "{YLWH}",
  bluh = "{BLUH}",
  magh = "{MAGH}",
  cynh = "{CYNH}",
  whth = "{WHTH}",

  bg10fg = "{BG:10:FG}",
  bg20fg = "{BG:20:FG}",
  bg30fg = "{BG:30:FG}",
  bg40fg = "{BG:40:FG}",
  bg50fg = "{BG:50:FG}",

  fg10bg = "{FG:10:BG}",
  fg20bg = "{FG:20:BG}",
  fg30bg = "{FG:30:BG}",
  fg40bg = "{FG:40:BG}",
  fg50bg = "{FG:50:BG}",
}
