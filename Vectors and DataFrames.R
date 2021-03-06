#1.Create a vector different data types(Logical, Numeric, Integer, Complex,Character) and display their class and typeof  each datatype

#Logical
a = 5
b = 10
c = a > b
print(c)
print(class(c))
print(typeof(c))

#Numeric
a = 50
print(a)
print(class(a))
print(typeof(a))

#Integer
a = 25L
print(a)
print(class(a))
print(typeof(a))

#Complex
a = 2 + 4i
print(a)
print(class(a))
print(typeof(a))

#Character
a = "Harshita"
print(a)
print(class(a))
print(typeof(a))

#2.Get and print the current working directory
setwd("D:/MDS/Semester 2/R Programming/R Lab/Lab 2")
getwd()

#3.Create this file using windows notepad by copying and pasting this data. Save the file as student.csv
#4.Save this file in the  current working directory

#5.Read the csv file in your current working directory
student_data <- read.csv("student.csv")
print(student_data)

#6.Check whether your CSV file is a dataframe and also check the number of rows and columns
print(is.data.frame(student_data))
print(ncol(student_data))
print(nrow(student_data))

#7.Apply all the functions sum(),mean(),sqrt() related to dataframe

#sum()
totalMarks = sum(student_data$Total.marks)
print(totalMarks)

#mean()
avgMarks = mean(student_data$Total.marks)
print(avgMarks)

#sqrt()
sqrtMarks = sqrt(student_data$Total.marks)
print(sqrtMarks)

#8.Get the highest marks from the data frame
maxMarks = min(student_data$Total.marks)
print(maxMarks)

#9. Get the details of the person with highest marks
maxMarksDet <- subset(student_data, Total.marks == min(Total.marks))
print(maxMarksDet)

#10.Get all the students in UG degree whose marks is greater than 300
marksDet <- subset(student_data, Total.marks > 300 & Degree == 'UG')
print(marksDet)

#11.Add one more vector  Date_ of_ Joining(DOJ) to the already existing dataframe 
student_data$Date_of_Joining <- c(2015, 2013, 2014, 2016, 2107, 2019, 2020, 2018)
print(student_data)

#12.Get the details of the students who have joined after 2017
dojDet <- subset(student_data, Date_of_Joining > 2017)
print(dojDet)

#13.Write the filtered data into a new file
write.csv(dojDet,"output.csv")
filtered_data <- read.csv("output.csv")
print(filtered_data)

student_data[order(student_data$Total.marks, decreasing = TRUE),]