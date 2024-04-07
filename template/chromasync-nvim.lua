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
}
