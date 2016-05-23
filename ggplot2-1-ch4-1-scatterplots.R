### Datacamp - ggplot2 Geometries
## https://campus.datacamp.com/courses/data-visualization-with-ggplot2-1/chapter-4-geometries?ex=1

## 37 Geometrics in ggplot
# point, smooth
# line, hline, vline, abline
# bar
# histogram
# boxplot
# area
# ribbon, rug
# map
# segment
# hex
# step
# contour
# text
# quantile
# tile
# density
# ...more

## Shape same as pch in base plotting pkg
## most common
# 1: hollow circle
# 16: med filled circle
# 19: large filled circle
# 20: small filled circle
# 21: hollow circle with fill and color (line) independent

## recommended to optimize alpha, size, and shape of scatterplots

ggplot(mtcars,aes(x=cyl,y=wt))+geom_point()
ggplot(mtcars,aes(x=cyl,y=wt))+geom_jitter()
ggplot(mtcars,aes(x=cyl,y=wt))+geom_jitter(width=0.1) # easy but not reusable
posn.j<- position_jitter(0.1) # reusable object
ggplot(mtcars,aes(x=cyl,y=wt))+geom_jitter(position=posn.j)
ggplot(mtcars,aes(x=cyl,y=wt))+geom_point(position=posn.j)



