#load packages
library("tidyr")
library("reshape2")

#read activity labels
activity.labels=read.table("activity_labels.txt")[,2]

#read features
features=read.table("features.txt")[,2]

#extract features
extract.mean.std=grepl("mean|std",features)

#read in test data
x_test=read.table('X_test.txt')
y_test=read.table('y_test.txt')
subject.test=read.table('subject_test.txt')

#rename columns
names(x_test)=features

#filter for only focused features
x.test=x_test[,extract.mean.std]

#set activity labels for y test
y_test[,2]=activity.labels[y_test[,1]]
names(y_test)=c("Activity Code","Activity")
names(subject.test)="subject"

#create one table for test data
test.table=cbind(subject.test,y_test,x.test)

#load data for training data
x_train=read.table("X_train.txt")
y_train=read.table("y_train.txt")
subject_train=read.table('subject_train.txt')

#repeat cleansing steps for training data
names(x_train)=features
x.train=x_train[,extract.mean.std]
y_train[,2]=activity.labels[y_train[,1]]
names(y_train)=c("Activity Code","Activity")
train.table=cbind(subject_train,y_train,x.train)
colnames(train.table)[1]="subject"


#bind the data together
df=rbind(test.table,train.table)


#melt the variables in data frame
df.1=df[,-2]
df.2=gather(df.1, variable, value, -subject, -Activity)

#create tidy data set with average values
df.3=dcast(df.2,subject+Activity~variable,fun.aggregate = mean)

#write out table
write.table(df.3,file="tidydataset.txt")
