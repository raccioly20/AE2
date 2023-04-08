library(readxl)
temperaturas <- read_excel("semanas/INMET_RIO DE JANEIRO _ JACAREPAGUA.xlsx")
library(lubridate)
library(tsibble)

temperaturas <- as_tsibble(temperaturas, index = data_hora)
str(temperaturas)


library(feasts)
library(dplyr)
library(ggplot2)
c_energ_resid %>% gg_season(log(mwh_residencial))
c_energ_resid %>% gg_subseries(log(mwh_residencial))