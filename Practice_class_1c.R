
# Ai and Biotechnology/Bioinformatics

# Ai and Omics Research Intership (2025)

# Gbadegesin Hikimat Oyindamola

getwd()

setwd

dir.create(data)

# Syntax in R
   # 1. Variable
   # 2. comments
   # 3. Keywords

# variable
# stores values in R
# <- assignment operator

 gene <- "TP53"

 # To retrive value in console
 gene

 print(gene)

# 2.3, 4.6, 3.6, 7.2, 4.7
 
 # to store these value in one variable
 
 expression_levels <- c(2.3, 4.6, 3.6, 7.2, 4.7)

 # To import data as variable
 raw_data <- read.csv(file.choose())
raw_data 

# Rules

#variable name must start with letter

# can't start with number

gene1 <- "25"

# No space allowed in variable name
# instead of spaces use underscore (_) or dot 
sample_id <- "s01"
sample.id <- "s02" 

# R is case sensitive
Glucose_level <- 110

glucose_level <- 110

# R overwrite variable without warning
glucose_level <- c(110, 90, 120)

data <- raw_data # create a copy of my raw_data

raw_data$patient_id <- NULL # this code will remove patient_id column
 
raw_data

# for data cleaning and transforming create a variable for that data

clean_data <- data[, -1]
# this code delete the patient_id column & it assign a new variable

#comments
# help to understand your code
# comments are for our own understanding R does't consider it as code
# data_2 <- 23
data_2 <- 23  

# pro tip: turn comment to heading
#### Heading 1 ####
#### Heading 2 ####

# Keywords
# these are reserved words in for specific function
# if, else, TRUE, false, and so on.....

help("reserved")
help("mean")
?median

View(raw_data)
# sort values largest to smallest
sorted_age <- sort(raw_data$age, decreasing = TRUE)
sorted_age
raw_data$age

# sort values smallest to largest
sorted_age2 <- sort(raw_data$age, decreasing = FALSE)
sorted_age2

# if & else, which is used for creating logical conditions

gene_expression <- 30

if(gene_expression > 50){
  print("Gene is highly expressed")
}

# here if is the keyword that check the condition if gene_expression > 25
# condition is true in this case
# in case if the condition is false
if(gene_expression > 50){
  print("Gene is highly expressed")
}else {
  print("gene_expression is low")
}

# You can't use keywords as variable name
if <- 28

# for loop: used to repeat same tasks multiple times
# let say we want to convert data type of multiple in of our
str(raw_data)
# gender is categorical data type
# It should be in a factor format
# gender column from char to factor
# diagnosis: cancer/normal it is also a categorical variable
# smoker: chr to factor

# Instaed of manually conversion we will use this for loop function for automatics conversion
# of all these 3 columns with one command

# To convert raw_data column into factor
# I want to save output in clean_data

# create a copy of raw_data with clean_data
clean_data <- raw_data
str(clean_data)

# to convert column automatically into factor
# create for loop function
for (i in 1:ncol(clean_data)) {
  if(is.character(clean_data[[i]])){
    clean_data[[i]] <- as.factor(clean_data[[i]])
  }
}

str(clean_data)
str(raw_data)

save.image(file = "full_workspace.RData")
