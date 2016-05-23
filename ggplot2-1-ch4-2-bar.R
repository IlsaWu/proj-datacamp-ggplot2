### Histograms and other bars
library(ggplot2)
## for coloring need 'fill' rather than 'col' ('col' will only do outline)

### Histogram examples
ggplot(iris,aes(x=Sepal.Width))+geom_histogram()
## to determine binwidth based on info of 'bins=30'
diff(range(iris$Sepal.Width))/30 # gives 0.08
## to select different width based on number of bins
diff(range(iris$Sepal.Width))/10 # gives 0.24
ggplot(iris,aes(x=Sepal.Width))+geom_histogram(binwidth=0.24)
## to get density - same shape but diff y axis
ggplot(iris,aes(x=Sepal.Width))+geom_histogram(aes(y=..density..),binwidth=0.24)
## identify dimensions
ggplot(iris,aes(x=Sepal.Width, fill=Species))+geom_histogram(binwidth=0.24)
ggplot(iris,aes(x=Sepal.Width, fill=Species))+geom_histogram(binwidth=0.24,position="stack")
## side-by-side but not useful here because can't tell where bins begin/end
ggplot(iris,aes(x=Sepal.Width, fill=Species))+geom_histogram(binwidth=0.24,position="dodge")
## show stack % note y axis still says 'count' - should be proportion
ggplot(iris,aes(x=Sepal.Width, fill=Species))+geom_histogram(binwidth=0.24,position="fill")

### Bar plot examples
str(sleep) # appears to be different sleep dataset than in datacamp!
ggplot(sleep,aes(group))+geom_bar()
## use diamonds instead
str(diamonds)
ggplot(diamonds,aes(cut))+geom_bar() # same as histogram
ggplot(diamonds,aes(cut))+geom_bar(stat="count") # specify the statistic as 'count'
ggplot(diamonds,aes(x=cut,y=price))+
  geom_bar(stat="identity") # stat = identity to show y axis data

### Exercises
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth=1)
ggplot(mtcars,aes(x=mpg))+geom_histogram(aes(y=..density..),binwidth=1)
myBlue <- "#377EB8"
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth=1,aes(y=..density..),fill=myBlue)

ggplot(mtcars,aes(x=as.factor(cyl),fill=as.factor(am)))+geom_bar()
ggplot(mtcars,aes(x=as.factor(cyl),fill=as.factor(am)))+geom_bar(position="stack")
## set to proportion
ggplot(mtcars,aes(x=as.factor(cyl),fill=as.factor(am)))+geom_bar(position="fill")
## side by side
ggplot(mtcars,aes(x=as.factor(cyl),fill=as.factor(am)))+geom_bar(position="dodge")

posn_d <- position_dodge(0.2)
ggplot(mtcars,aes(x=as.factor(cyl),fill=as.factor(am)))+geom_bar(position=posn_d)
ggplot(mtcars,aes(x=as.factor(cyl),fill=as.factor(am)))+geom_bar(position=posn_d,alpha=0.6)

# A basic histogram, add coloring defined by cyl 
ggplot(mtcars, aes(mpg,fill=as.factor(cyl))) +
  geom_histogram(binwidth = 1)

# Change position to identity - stack is default
ggplot(mtcars, aes(mpg,fill=as.factor(cyl))) +
  geom_histogram(binwidth=1,position="identity")

# Change geom to freqpoly (position is identity by default) 
ggplot(mtcars, aes(mpg,col=as.factor(cyl))) +
  geom_freqpoly(binwidth=1,position="identity")

# Example of how to use a brewed color palette
ggplot(mtcars, aes(x = cyl, fill = as.factor(am))) +
  geom_bar() +
  scale_fill_brewer(palette = "Set1")

# switch to diamonds (instead of Vocab used in Datacamp)
# Plot cut on x and color on fill
# Use the default brewed color palette

ggplot(diamonds,aes(x=cut,fill=color))+
  geom_bar(position="fill")+
  scale_fill_brewer()
## will get warning message and incomplete plot if too many levels in color factor
ggplot(diamonds,aes(x=cut,fill=as.factor(depth)))+
  geom_bar(position="fill")+
  scale_fill_brewer()

# Basic histogram plot command
ggplot(mtcars, aes(mpg)) + 
  geom_histogram(binwidth = 1)

# Expand the histogram to fill using am - default position is stack
ggplot(mtcars, aes(mpg,fill=as.factor(am))) + 
  geom_histogram(binwidth = 1)

# Change the position argument to "dodge"
ggplot(mtcars, aes(mpg,fill=as.factor(am))) + 
  geom_histogram(binwidth = 1,position="dodge")

# Change the position argument to "fill" -> creates proportional stack adding up to 1
ggplot(mtcars, aes(mpg,fill=as.factor(am))) + 
  geom_histogram(binwidth = 1,position="fill")

# Change the position argument to "identity" and set alpha to 0.4
ggplot(mtcars, aes(mpg,fill=as.factor(am))) + 
  geom_histogram(binwidth = 1,position="identity",alpha=0.4)


# Change fill to cyl
ggplot(mtcars, aes(mpg,fill=as.factor(cyl))) + 
  geom_histogram(binwidth = 1,position="identity",alpha=0.4)
# back to stack default - seems most useful to me
ggplot(mtcars, aes(mpg,fill=as.factor(cyl))) + 
  geom_histogram(binwidth = 1,position="stack")
ggplot(mtcars, aes(mpg,fill=as.factor(cyl))) + 
  geom_histogram(binwidth = 1,position="fill")