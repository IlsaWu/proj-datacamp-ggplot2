str(mtcars)
head(mtcars)

## base plot for comparison
plot(x=mtcars$wt, y=mtcars$mpg)
plot(x=mtcars$wt, y=mtcars$mpg, col=mtcars$cyl)
mtcars$cyl <- as.factor(mtcars$cyl)

library(ggplot2)
ggplot(mtcars, aes(x=wt,y=mpg,col=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE)

ggplot(mtcars, aes(x=wt,y=mpg,col=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE)

ggplot(mtcars, aes(x = wt, y = mpg, col = cyl))+
  geom_point() +
  geom_smooth(method=lm,se=FALSE) +
  geom_smooth(aes(group=1),method=lm,se=FALSE,linetype=2)

str(iris)
head(iris)
