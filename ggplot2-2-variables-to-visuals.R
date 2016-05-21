str(iris)
head(iris)
library(tidyr)

iris.tidy <- iris %>%
  gather(key, Value, -Species ) %>%
  separate(key, c("Part","Measure"),"\\.")

library(ggplot2)
ggplot(iris.tidy, aes(x = Species, y = Value, col = Part)) +
  geom_jitter() +
  facet_grid(. ~ Measure)

iris$Flower <- 1:nrow(iris)

iris.wide <- iris %>%
  gather(key, value, -Species,-Flower) %>%
  separate(key, c("Part","Measure"),"\\.") %>%
  spread(Measure, value)