### Datacamp - ch 3 position

library(ggplot2)

cyl.am <- ggplot(mtcars, aes(x = factor(cyl), fill = factor(am)))
cyl.am + geom_bar() # defaults to stack
cyl.am + geom_bar(position="fill")
cyl.am + geom_bar(position="dodge")

## sweet formatting cleanup!
val = c("#E41A1C", "#377EB8")
lab = c("Manual", "Automatic")
cyl.am +
  geom_bar(position = "dodge") +
  scale_x_discrete("Cylinders") + 
  scale_y_continuous("Number") +
  scale_fill_manual("Transmission", 
                       values = val,
                       labels = lab) 

## stack as alternative view
cyl.am +
  geom_bar(position = "stack") +
  scale_x_discrete("Cylinders") + 
  scale_y_continuous("Number") +
  scale_fill_manual("Transmission", 
                    values = val,
                    labels = lab) 

## Univariate plots
ggplot(mtcars,aes(x=mpg))+geom_point() # error because need to specify y
mtcars$group <- 0
head(mtcars)
ggplot(mtcars, aes(x=mpg,y=group))+geom_jitter()
ggplot(mtcars, aes(x=mpg,y=group))+geom_jitter()+scale_y_continuous(limits=c(-2,2))

### Overplotting

ggplot(mtcars,aes(x=wt,y=mpg,col=as.factor(cyl)))+geom_point(size=4)
ggplot(mtcars,aes(x=wt,y=mpg,col=as.factor(cyl)))+geom_point(size=4,shape=1)
ggplot(mtcars, aes(x=wt,y=mpg,col=as.factor(cyl)))+geom_point(size=4,alpha=0.6)

ggplot(diamonds,aes(x=carat, y=price, col=clarity))+geom_point()
ggplot(diamonds,aes(x=carat, y=price, col=clarity))+geom_point(alpha=0.5)

ggplot(diamonds,aes(x=clarity,y=carat,col=price))+geom_point(alpha=0.5)
ggplot(diamonds,aes(x=clarity,y=carat,col=price))+geom_point(alpha=0.5,position="jitter")