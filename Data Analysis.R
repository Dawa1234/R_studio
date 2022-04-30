Rain

newappdata <- Rain %>% 
  as_tibble() %>% 
  select(Rainfall,Temprature)

newappdata

# correlation
cor(newappdata)

# scatter plot
plot(newappdata)

# regression module

x <- newappdata$Rainfall
y <- newappdata$Temprature

lm(y~x) %>% 
  abline()

# fitting the regression module

model1 <- lm(y~x)

summary(model1)

# prediction

input <- data.frame(x=4.4)
output <- predict(model1, input)
output
