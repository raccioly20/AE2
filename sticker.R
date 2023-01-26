library(hexSticker)
library(magick)
library(sysfonts)
library(tidyverse)
serie_img <- image_read("serie.png")

sticker(
  subplot = serie_img,
  package = "AE2",
  s_width = 0.8,
  s_height = 0.8,
  s_x = 1,
  s_y = 0.75,
  p_size = 10,
  p_color = "black",
  h_fill = "white"
  ) %>% print()
