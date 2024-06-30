# Load necessary libraries
library(ggplot2)
library(readr)

# Load the data
data <- read_csv("C:/Users/sanch/Downloads/rproject/AI_Higher_Education_eSurvey.csv")

# Boxplots
par(mfrow=c(2,2))

# Boxplot for Age
boxplot(data$Age, main="Boxplot of Age")

# Boxplot for Improved Learning Outcomes
boxplot(data$ImprovedLearningOutcomes, main="Boxplot of Improved Learning Outcomes")

# Boxplot for Data Privacy Concerns
boxplot(data$DataPrivacyConcerns, main="Boxplot of Data Privacy Concerns")

# Boxplot for Job Displacement Concerns
boxplot(data$JobDisplacementConcerns, main="Boxplot of Job Displacement Concerns")

# Scatter plots
par(mfrow=c(2,2))

# Scatter plot between Age and Improved Learning Outcomes
plot(data$Age, data$ImprovedLearningOutcomes, main="Age vs Improved Learning Outcomes", xlab="Age", ylab="Improved Learning Outcomes")

# Scatter plot between Age and Data Privacy Concerns
plot(data$Age, data$DataPrivacyConcerns, main="Age vs Data Privacy Concerns", xlab="Age", ylab="Data Privacy Concerns")

# Scatter plot between Improved Learning Outcomes and Data Privacy Concerns
plot(data$ImprovedLearningOutcomes, data$DataPrivacyConcerns, main="Improved Learning Outcomes vs Data Privacy Concerns", xlab="Improved Learning Outcomes", ylab="Data Privacy Concerns")

# Scatter plot between Data Privacy Concerns and Job Displacement Concerns
plot(data$DataPrivacyConcerns, data$JobDisplacementConcerns, main="Data Privacy Concerns vs Job Displacement Concerns", xlab="Data Privacy Concerns", ylab="Job Displacement Concerns")

# Bar plots for categorical variables
par(mfrow=c(2,2))

# Bar plot for Gender
ggplot(data, aes(x=Gender)) + 
  geom_bar() + 
  ggtitle("Distribution of Gender") +
  theme_minimal()

# Bar plot for Role
ggplot(data, aes(x=Role)) + 
  geom_bar() + 
  ggtitle("Distribution of Role") +
  theme_minimal()

# Bar plot for Institution Type
ggplot(data, aes(x=InstitutionType)) + 
  geom_bar() + 
  ggtitle("Distribution of Institution Type") +
  theme_minimal()

# Bar plot for Awareness of AI Tools
ggplot(data, aes(x=AwarenessOfAITools)) + 
  geom_bar() + 
  ggtitle("Awareness of AI Tools") +
  theme_minimal()
