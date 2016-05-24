### Datacamp - ggplot2 - 1, ch 4 - geometries - lines

## examples
library(datasets)
str(beaver1)

library(ggplot2)
ggplot(beaver1,aes(x=time,y=temp))+geom_line()
ggplot(beaver1,aes(x=time,y=temp,col=as.factor(activ)))+geom_line()

### EXERCISES
# Print out head of economics
head(economics)

# Plot unemploy as a function of date using a line plot
ggplot(economics, aes(x =date, y = unemploy)) + geom_line()
  
  
  # Adjust plot to represent the fraction of total population that is unemployed
ggplot(economics, aes(x =date, y = unemploy/pop)) + geom_line()

# Expand the following command with geom_rect() to draw the recess periods
## first replicate 'recess' dataset used in Datacamp exercise
begin <- c("1969-12-01","1973-11-01","1980-01-01","1981-07-01","1990-07-01","2001-03-01")
end <- c("1970-11-01","1975-03-01","1980-07-01","1982-11-01","1991-03-01","2001-11-01")
recess <- data.frame(begin,end)

## layer recession periods over time series
## need to transform recess begin and end into dates - can do it in the ggplot function!
ggplot(economics, aes(x = date, y = unemploy/pop)) +
  geom_line()+
  geom_rect(data=recess,inherit.aes=FALSE,aes(xmin=as.Date(begin),xmax=as.Date(end),ymin=-Inf,ymax=+Inf),fill="red",alpha=0.2)
## probably better to transform data type in data frame not within ggplot
recess$begin <- as.Date(recess$begin)
recess$end <- as.Date(recess$end)
str(recess)
ggplot(economics, aes(x = date, y = unemploy/pop)) +
  geom_line()+
  geom_rect(data=recess,inherit.aes=FALSE,aes(xmin=begin,xmax=end,ymin=-Inf,ymax=+Inf),fill="red",alpha=0.2)

## use Hartnagel crime data in car package
## needs to be manipulated to make tidy and then filtered
library(car)
library(tidyr)
library(dplyr)
hn.tidy <- gather(Hartnagel,Type,Commit,-year)
hn2 <- filter(hn.tidy,Type=="ftheft"|Type=="mconvict"|Type=="mtheft")
ggplot(hn2,aes(x=year,y=Commit,col=Type))+geom_line()
