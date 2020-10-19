#IMPORT DATA##
data<-read.csv(file.choose(),header = T)
data
attach(data)

##TO CHECK THE DIMENSION OF THE GIVEN DATA##
str(data)
names(data)
length(Hours)
length(Scores)

##FIT SIMPLE LINEAR REGRESSION TO GIVEN DATA##
##SCORES ARE DEPENDENT VARIABLE AND HOURS ARE INDEPENDENT VARIABLE##
model<-lm(Scores~Hours)
model

##i.e. from the above model parameters##
##SUMMARY OF THE MODEL##
summary(model)

##GRAPHICAL REPRESENTATION OF GIVEN OBSERVATIONS TO CHECK MODEL FIT##
plot(Hours,Scores,main = "scatter plot" , pch=15,col="black")
abline(lm(Scores~Hours),col="red")

##WE ALREADY FIND MODEL PARAMETERS . NOW THE MODEL IS FOLLOWS##
##THE LINEAR EQUATION IS## 
y=2.484+(9.776*9.25)
y

##Intercept(b0)=2.484##
## Regression coefficient(b1)=9.776##

## INTERPRETATION ##
# 1.The p-value is 2.2e-16 which shows that the model is significance.
# 2.When the p-value is less than 0.05 then model is significant.
# 3.adj.R-square=0.9509,the maximum the R-square then the model is significance.
# 4.F-statistic=465.8
# 5.Multiple R-square=0.9529

# CONCLUSION : THE SCORE AT STUDYING 9.25 HOURS IS 92.912 # 


