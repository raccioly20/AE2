library(hexSticker)
library(magick)
library(sysfonts)
library(tidyverse)
serie_img <- image_read("tvaplr.png")

sticker(
  subplot = serie_img,
  package = "TVAPLR",
  s_width = 1.5,
  s_height = 1.2,
  s_x = 1.,
  s_y = 1.,
  p_size = 10,
  p_color = "white",
  h_fill = "grey"
  ) %>% print()
