### Datacamp: Data Visualization with Ggplot2 1, chapter 3 aesthetics
## https://campus.datacamp.com/courses/data-visualization-with-ggplot2-1/chapter-3-aesthetics?ex=1 

## Common aesthetics
# x: x axis position
# y: y axis position
# color: color of dots, outlines of other shapes
# fill: fill color
# size: diameter of dots, thickness of lines
# alpha: transparency (0=transparent, 1=opaque)
# linetype: line dash pattern
# labels: text on plot or axes
# shape: shape of points

str(mtcars)
mtcars2 <- mtcars
mtcars2$cyl <- as.factor(mtcars2$cyl)
str(mtcars2)

library(ggplot2)
ggplot(mtcars2,aes(x=cyl,y=mpg))+geom_point()
ggplot(mtcars2,aes(x=wt,y=mpg,col=cyl))+geom_point()
ggplot(mtcars2, aes(x=wt,y=mpg,col=cyl))+geom_point(shape=1,size=4)
