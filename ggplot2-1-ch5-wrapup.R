
## start with purpose and audience

## 2 main things
## grammatical elements
#### every part of chart has graphical information
#### data, aesthetics, geometries
## aesthetic mappings
#### how to map variables onto aesthetics
#### aesthetics = scales = encoding elements
#### which variable?
#### which variable for which aesthetic?
#### choice of data format depends on plot!

## aesthetics depend on continuous or categorical variables
library(ggplot2)
str(ChickWeight)
head(ChickWeight)
ggplot(ChickWeight,aes(x=Time,y=weight,col=Chick))+geom_line()
ggplot(ChickWeight,aes(x=Time,y=weight))+geom_line(aes(group=Chick))
ggplot(ChickWeight,aes(x=Time,y=weight,col=Diet))+geom_line(aes(group=Chick))
ggplot(ChickWeight,aes(x=Time,y=weight,col=Diet))+geom_line(aes(group=Chick),alpha=0.3)+
  geom_smooth(lwd=2,se=FALSE)

## add further elements to clean-up etc
plot1 <- ggplot(ChickWeight,aes(x=Time,y=weight,col=Diet))+geom_line(aes(group=Chick),alpha=0.3)+geom_smooth(lwd=2,se=FALSE)
plot1 + ggtitle("Growth in Chickens by Diet over Time (using Weight)")+theme_classic()+
  scale_x_continuous(expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))