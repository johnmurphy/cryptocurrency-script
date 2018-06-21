
#required packages
required_packages = c("crypto", "tidyr", "dplyr")

#install.packages(required_packages)

#attach packages
library(crypto)
library(tidyr)
library(dplyr)


# Getting data
top10_coins <- getCoins(limit = 10) %>% # Get Top 10 coins
              select(name, symbol, date, ranknow, open, high, low, close, market, close_ratio, spread)

save(top10_coins, file="Top10Coins.RData")
write.csv(top10_coins, file = "Top10Coins.csv")