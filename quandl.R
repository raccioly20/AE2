library(Quandl)
library(ggplot2)
library(plotly)
library(dplyr)
infBR <- Quandl("BCB/7449", type = "raw")
glimpse(infBR)
plot_ly(data = infBR, x = ~Date, y = ~Value) %>%
  add_lines(y = infBR$Value) %>%
  layout(xaxis = list(title = "\n Data", titlefont = "Courier New, monospace"), 
         yaxis = list(title = "IGP-M \n", 
                      titlefont = "Courier New, monospace"),
         title = "IGP-M variação Mensal \n") 

desempRJ <- Quandl("BCB/10781", type = "raw")
plot_ly(data = desempRJ, x = ~Date, y = ~Value) %>%
  add_lines(y = desempRJ$Value) %>%
  layout(xaxis = list(title = "\n Data", titlefont = "Courier New, monospace"), 
         yaxis = list(title = "Taxa de Desemprego\n", 
                      titlefont = "Courier New, monospace"),
         title = "Taxa de Desemprego no RJ\n") 
