
## compare 3 plot systems
plot(mpg~wt,data=mtcars)
library(ggplot2)
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
qplot(data=mtcars,x=wt,y=mpg)

str(mtcars)
## various aesthetic characteristics
ggplot(mtcars,aes(x=wt,y=mpg,size=cyl))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg,size=gear))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg,col=hp))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg,col=qsec))+geom_point()
## same as above but qplot
qplot(data=mtcars,x=wt,y=mpg,size=cyl)
qplot(data=mtcars,x=wt,y=mpg,size=gear)
qplot(data=mtcars,x=wt,y=mpg,col=hp)
qplot(data=mtcars,x=wt,y=mpg,col=qsec)

## adding jitter
qplot(data=mtcars,x=factor(cyl))
qplot(data=mtcars,x=factor(cyl),y=factor(vs))
qplot(data=mtcars,x=factor(cyl),y=factor(vs))+geom_jitter()
qplot(data=mtcars,x=factor(cyl),y=factor(vs),geom="jitter")

ggplot(mtcars,aes(x=cyl,y=wt,fill=factor(am)))+geom_dotplot()
ggplot(mtcars,aes(x=cyl,y=wt,fill=factor(am)))+geom_dotplot(stackdir="center",binaxis="y")
qplot(data=mtcars,x=cyl,y=wt,fill=factor(am),geom="dotplot",stackdir="center",binaxis="y")



