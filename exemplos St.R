library(forecast)
library(ggplot2)
set.seed(123) # Reprodutibilidade
rb <- ts(rnorm(36)) # Ruido Branco
autoplot(rb, xlab="Tempo")
teste <- Acf(rb, lag.max=10, type="correlation")
teste$acf
ggAcf(rb, lag.max = 10) +
  ggtitle("Amostra da FAC(ACF) para um ruido branco")
Box.test(rb, lag = 10, type = "Box-Pierce", fitdf = 0)
Box.test(rb, lag = 10, type = "Ljung-Box", fitdf = 0)
ggPacf(rb, lag.max = 10) +
  ggtitle("Amostra da FACP(PACF) para um ruido branco")

library(fpp3)
library(fma)

autoplot(pigs/1000) +
 xlab("Ano") +
 ylab("mil") +
 ggtitle("Número de porcos abatidos em Victoria")

Box.test(pigs, lag = 12, type = "Ljung-Box", fitdf = 0)



igpm <- as.ts(infBR)


