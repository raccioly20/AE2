library(readxl)
consumo_energ <- read_excel("semanas/consumo_residencial.xlsx", )
library(lubridate)
library(tsibble)
str(consumo_energ)
consumo_energ$data <- yearmonth(consumo_energ$data)
c_energ_resid <- as_tsibble(consumo_energ)

library(feasts)
library(dplyr)
library(ggplot2)
c_energ_resid %>% gg_season(log(mwh_residencial))
c_energ_resid %>% gg_subseries(log(mwh_residencial))


c_energ_resid %>% ACF(log(mwh_residencial)) %>% autoplot()

c_energ_resid_04_07 <- c_energ_resid %>% filter_index( ~ "2007-12")
c_energ_resid_04_07 %>% ACF(log(mwh_residencial)) %>% autoplot()
