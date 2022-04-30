# scatter plot and regression analysis(simple linear regression)

library(tidyverse)

state.x77

# we need data in data format.

appdata <- state.x77 %>% 
  as_tibble()  %>% 
  select(Illiteracy,Murder)

appdata

#correlation
cor(appdata)

# scatter plot
plot(appdata)

# with regression line
#  lm(y~x, data = ?)

lm(appdata$Murder ~ appdata$Illiteracy,data = appdata) %>% 
  abline()

# fitting linear regression line

result <- lm(appdata$Murder ~ appdata$Illiteracy,data = appdata)

# summary
summary(result)
