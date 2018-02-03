titan = read.csv(file="train.csv")
titan$Sex = as.factor(titanic$Sex)
titan$Embarked = as.factor(titan$Embarked)
titan$Age[is.na(titan$Age)]<-mean(titan$Age,na.rm = T)

View(titan)
## 75% of the sample size
smp_size <- floor(0.75 * nrow(titan))

## set the seed to make your partition reproductible
set.seed(123)
train_ind <- sample(seq_len(nrow(titan)), size = smp_size)
train <- titan[train_ind, ]
test <- titan[-train_ind, ]

model = glm(Survived ~Pclass+Sex+Age,family = binomial(link = 'logit'),data = train)

result <- predict(model,newdata=test,type='response')
result <- ifelse(result > 0.5,1,0)
library(caret)
confusionMatrix(data=result, reference=test$Survived)

