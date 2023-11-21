library(readr)
library(tidyr)
library(dplyr)
df <- read_csv("../datasets/uk_manifestos.csv")
df<- df[sample(nrow(df)),]
df$env <- 0
df$env[df$cmp_code==501] <- 1
df$env <- factor(df$env)