Data

library(tidyverse)

alldata <-Data %>% 
  as_tibble() %>% 
  select(Stock1, Stock4)

alldata

# Correlation
cor(alldata)

# Plot
plot(alldata)

#for regression line.
lm(alldata$Stock4~alldata$Stock1,data = alldata) %>% 
  abline()

# Fitting linear regression line
regression_line <-lm(alldata$Stock4 ~ alldata$Stock1, data = alldata)


#Summary
summary(regression_line)
  