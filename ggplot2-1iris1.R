str(iris)
head(iris)

#### ACTUALLY ITS DIAMONDS
str(diamonds)
head(diamonds)

ggplot(diamonds,aes(x=carat,y=price))+
  geom_point()+
  geom_smooth()

ggplot(diamonds,aes(x=carat,y=price))+
  geom_smooth()

## smoothing line broken out by col
ggplot(diamonds,aes(x=carat,y=price,col=clarity))+
  geom_smooth()

## alpha for size (40% of normal)
ggplot(diamonds,aes(x=carat,y=price,col=clarity))+
  geom_point(alpha=0.4)

# Create the object containing the data and aes layers: dia_plot
dia_plot <- ggplot(diamonds,aes(x=carat,y=price))

# Add a geom layer with + and geom_point()
dia_plot+geom_point()

# Add the same geom layer, but with aes() inside
dia_plot+geom_point(aes(col=clarity))

# The dia_plot object has been created for you
dia_plot <- ggplot(diamonds, aes(x = carat, y = price))

# Expand dia_plot by adding geom_point() with alpha set to 0.2
dia_plot <- dia_plot+geom_point(alpha=0.2)


# Plot dia_plot with additional geom_smooth() with se set to FALSE
dia_plot <- dia_plot+geom_smooth(se=FALSE)

# Copy the command from above and add aes() with the correct mapping to geom_smooth()
dia_plot <- dia_plot+geom_smooth(se=FALSE,aes(col=clarity))
dia_plot
