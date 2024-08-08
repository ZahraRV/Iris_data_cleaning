data(iris)
head(iris)
str(iris)
colSums(is.na(iris))
iris$Species<-as.factor(iris$Species)
str(iris)
names(iris)<- tolower(names(iris))
?gsub
names(iris)<-gsub("\\.","_",names(iris))
iris<- iris[!duplicated(iris),]
iris<-  mutate(iris,petal_length_width_ratio=petal_length/petal_width)

install.packages("dplyr")
library("dplyr")
iris<-  mutate(iris,petal_length_width_ratio=petal_length/petal_width)
View(iris)
summary(iris)
str(iris)
View(iris)

write.csv(iris,"cleaned_iris_data.csv",row.names = FALSE)
