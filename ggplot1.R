### Lessons from Datacamp: Data Visualization with GGplot2 (pt 1)
## Chapter 1 Intro

## get mammals data
library(MASS)
mammals
## examine / explore the data
str(mammals)
summary(mammals)
## get animals into col instead of just rownames
## easy with dplyr
library(dplyr)
mammals2 <- mammals
mammals2 <- add_rownames(mammals2,"animal")
## add_rownames may not work :[
mammals2$animals <- rownames(mammals2)
rownames(mammals2) <- c(1:nrow(mammals2))

## visualize the data
hist(mammals$body)
hist(mammals$brain)
plot(body~brain,mammals)
cor(mammals$body,mammals$brain)
cor.test(mammals$body,mammals$brain)
mlm <- lm(body~brain,mammals)
summary(mlm)

## identify the large animals
library(dplyr)
mlg <- mammals2 %>% filter(brain>4000,body>2000)
mlg
## aha! its the elephants!

## remove some outliers at the large end of the scale
msm <- mammals %>% filter(brain<1000,body<2000)
## examine / explore the new data
summary(msm)
hist(msm$brain)
hist(msm$body)
plot(body~brain,msm)
cor(msm$body,msm$brain)
cor.test(msm$body,msm$brain)
msmlm <- lm(body~brain,msm)
summary(msmlm)

### DATACAMP!
library(ggplot2)
ggplot(mammals,aes(x=body,y=brain))+geom_point()
## add regression line
ggplot(mammals,aes(x=body,y=brain))+geom_point()+
  stat_smooth(method="lm",col="red")
## remove standard error shading if desired
ggplot(mammals,aes(x=body,y=brain))+geom_point()+
  stat_smooth(method="lm",col="red",se=FALSE)
## doesn't look like good model due to how data is spread out
ggplot(mammals,aes(x=body,y=brain))+
  geom_point(alpha=1)+
  coord_fixed()+
  scale_x_log10()+
  scale_y_log10()+
  stat_smooth(method="lm",
              col="red",
              se=FALSE,
              size=2)
### FINISHED PRODUCT
ggplot(mammals,aes(x=body,y=brain))+
  annotation_logticks()+
  geom_point(alpha=1)+
  coord_fixed(xlim=c(10^-3,10^4),ylim=c(10^-1,10^4))+
  scale_x_log10(expression("Body weight (log"["10"]*"(Kg))"),
                breaks=trans_breaks("log10",function(x) 10^x),
                labels=trans_format("log10",math_format(10^.x)))+
  scale_y_log10(expression("Brain weight (log"["10"]*"(g))"),
                breaks=trans_breaks("log10",function(x) 10^x),
                labels=trans_format("log10",math_format(10^.x)))+
  stat_smooth(method="lm",
              col="red",
              se=FALSE,
              size=2)+
  theme_classic()

## had to remove breaks and labels due to errors - scales ugly as result
ggplot(mammals,aes(x=body,y=brain))+
  annotation_logticks()+
  geom_point(alpha=1)+
  coord_fixed(xlim=c(10^-3,10^4),ylim=c(10^-1,10^4))+
  scale_x_log10(expression("Body weight (log"["10"]*"(Kg))"))+
  scale_y_log10(expression("Brain weight (log"["10"]*"(g))"))+
  stat_smooth(method="lm",
              col="red",
              se=FALSE,
              size=2)+
  theme_classic()