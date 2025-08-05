
# organize project
# data
# script
# result

# creating folders
dir.create("data")
dir.create("script")
dir.create("result")

# importing csv file
data <- read.csv(file.choose())
View(data)
str(data) # check structure

# converting gender into factor
data$gender_fac <- as.factor(data$gender)
str(data)

data$gender_num <-ifelse(data$gender_fac == "Female", 1,0)
class(data$gender_num)

data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)

# converting diagnosis into factor
data$diagnosis_fac <- as.factor(data$diagnosis)
str(data)


data$diagnosis_num <-ifelse(data$diagnosis_fac == "Normal", 0,1)
class(data$diagnosis_num)

data$diagnosis_num <- as.factor(data$diagnosis_num)
str(data)

# converting smoker into factor
data$smoker_fac <- as.factor(data$smoker)
str(data)

data$smoker_num <-ifelse(data$smoker_fac == "Yes", 1,0)
class(data$smoker_num)

data$smoker_num <- as.factor(data$smoker_num)
str(data)

data$age <- as.integer(data$age)

data$patient_id <- as.character(data$patient_id)

data$bmi <- as.numeric(data$bmi)

# cleaning data
colSums(is.na(data))

data <- unique(data)

cat("\nStructure after cleaning\n")
str(data)

# save workspace

# save entire workspace
save.image(file = "full_workspace.RData")

# save specific object
save(data$gender, data$diagnosis, file = "workspace.RData")

