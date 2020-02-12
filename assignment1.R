library(ggplot2)


mpg <- as.data.frame(ggplot2::mpg)
mpg

mpg$mpg_total <- (mpg$cty + mpg$hwy)/2
mpg$mpg_total

mpg_산술평균 <- mean(mpg_total/2)
mpg_산술평균



mpg_중위수 <- median(mpg_total/2)
mpg_중위수

qplot(data = mpg, y = mpg_total, geom = "boxplot")

summary(mpg$mpg_total)

library(dplyr)

df_fixed = filter(mpg, mpg_total <= 35.5)

summary(df_fixed$mpg_total)

qplot(data = df_fixed, y = mpg_total, geom = "boxplot")
