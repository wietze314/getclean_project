#load datafiles

testset <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
test_Y <- read.table("UCI HAR Dataset/test/Y_test.txt", header = FALSE)
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)

trainset <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
train_Y <- read.table("UCI HAR Dataset/train/Y_train.txt", header = FALSE)
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)

features <- read.table("UCI HAR Dataset/features.txt", header = FALSE)

act <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

#set column names from features file
names(testset) <- features[,2]
names(trainset) <- features[,2]


#add activity as a factor
testset$activity <- factor(test_Y[,1],levels = act[,1], labels = act[,2])
trainset$activity <- factor(train_Y[,1],levels = act[,1], labels = act[,2])

#add info subjects
testset$subject <- test_subjects[,1]
trainset$subject <- train_subjects[,1]

#add info source data
trainset$set <- "train"
testset$set <- "test"

#combine both sets
comb <- rbind(testset, trainset)

#make set a factor variable
comb$set <- as.factor(comb$set)

#only keep columns with mean() or std() values
colidx <- which(grepl("mean\\(\\)",names(comb)) | grepl("std\\(\\)",names(comb)))
combclean <- comb[,c(which(names(comb) %in% c("subject","set","activity")),colidx)]

#remove special characters from names
names(combclean) <- gsub("\\(\\)","",names(combclean))
names(combclean) <- gsub("-","_",names(combclean))

# calculate means over every column (exept subject and activity)
combsp <- split(combclean,list(combclean[,"subject"],combclean[,"activity"]))
avgclean <- as.data.frame(t(sapply(combsp,function(x) c(x["subject"][1,1],x["activity"][1,1],colMeans(x[,-(1:3)])))))

#name first 2 columns
colnames(avgclean)[1:2] <- c("subject","activity")

#change activity to factor
avgclean$activity <- factor(avgclean$activity,levels = act[,1], labels = act[,2])

#write result to table for uploading to coursera
write.table(avgclean, "avgclean_tidy.txt",row.names = FALSE)


