library(ggplot2)
str(mtcars)

ggplot(mtcars,aes(x=wt,y=mpg,col=cyl))+geom_point()
my_color <- "#123456"
my_color <- "red"
ggplot(mtcars,aes(x=wt,y=mpg,col=cyl))+geom_point(col=my_color)

ggplot(mtcars, aes(x=wt,y=mpg,fill=cyl))+geom_point(size=10,shape=23,col=my_color)

# Expand to draw points with alpha 0.5
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +geom_point(alpha=0.5)


# Expand to draw points with shape 24 and color yellow
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +geom_point(shape=24,col="yellow")


# Expand to draw text with label x, color red and size 10
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +geom_text(label="x",col="red",size=10)
ggplot(mtcars, aes(x = wt, y = mpg, label = cyl)) +geom_text(col="red",size=10)

