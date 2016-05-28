
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

str(ChickWeight)
head(ChickWeight)
ggplot(ChickWeight,aes(x=Time,y=weight,col=Chick))+geom_line()
ggplot(ChickWeight,aes(x=Time,y=weight))+geom_line(aes(group=Chick))
ggplot(ChickWeight,aes(x=Time,y=weight,col=Diet))+geom_line(aes(group=Chick))
ggplot(ChickWeight,aes(x=Time,y=weight,col=Diet))+geom_line(aes(group=Chick),alpha=0.3)+geom_smooth(lwd=2,se=FALSE)
