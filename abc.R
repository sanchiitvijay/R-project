# Load necessary libraries
library(ggplot2)
library(readr)

# Load the data
data <- read_csv("C:/Users/sanch/Downloads/rproject/AI_Higher_Education_eSurvey.csv")

# Boxplots
par(mfrow=c(2,2))


# Boxplot of Age by Role
ggplot(data, aes(x=Role, y=Age)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title="Boxplot of Age by Role", x="Role", y="Age")

# Boxplot of Perceived Impact by Role
ggplot(data, aes(x=Role, y=factor(PerceivedImpact, levels=c('Low', 'Moderate', 'High')))) +
  geom_boxplot() +
  theme_minimal() +
  labs(title="Boxplot of Perceived Impact by Role", x="Role", y="Perceived Impact")




# Scatter plot of Age vs. Perceived Impact
ggplot(data, aes(x=Age, y=factor(PerceivedImpact, levels=c('Low', 'Moderate', 'High')))) +
  geom_jitter(width = 0.2) +
  theme_minimal() +
  labs(title="Scatter Plot of Age vs. Perceived Impact", x="Age", y="Perceived Impact")

# Scatter plot of Age vs. Automation Efficiency
ggplot(data, aes(x=Age, y=factor(AutomationEfficiency, levels=c('Low', 'Moderate', 'High')))) +
  geom_jitter(width = 0.2) +
  theme_minimal() +
  labs(title="Scatter Plot of Age vs. Automation Efficiency", x="Age", y="Automation Efficiency")



# Histogram of Age
ggplot(data, aes(x=Age)) +
  geom_histogram(binwidth=5, fill="blue", color="black", alpha=0.7) +
  theme_minimal() +
  labs(title="Histogram of Age", x="Age", y="Frequency")

# Histogram of Perceived Impact
ggplot(data, aes(x=factor(PerceivedImpact, levels=c('Low', 'Moderate', 'High')))) +
  geom_bar(fill="green", color="black", alpha=0.7) +
  theme_minimal() +
  labs(title="Histogram of Perceived Impact", x="Perceived Impact", y="Frequency")



# Bar graph of Role
ggplot(data, aes(x=Role)) +
  geom_bar(fill="purple", color="black", alpha=0.7) +
  theme_minimal() +
  labs(title="Bar Graph of Role", x="Role", y="Count")

# Bar graph of Gender
ggplot(data, aes(x=Gender)) +
  geom_bar(fill="orange", color="black", alpha=0.7) +
  theme_minimal() +
  labs(title="Bar Graph of Gender", x="Gender", y="Count")



# Prepare data for heatmap
heatmap_data <- data %>%
  select(UsageOfABTs, PerceivedImpact, DataProtectionConcerns, BiasConcerns, TrainingNeeds, AutomationEfficiency) %>%
  mutate_all(~as.numeric(factor(.)))

# Correlation matrix
cor_matrix <- cor(heatmap_data, use="complete.obs")

# Heatmap
ggplot(melt(cor_matrix), aes(Var1, Var2, fill=value)) +
  geom_tile() +
  scale_fill_gradient2(low="blue", high="red", mid="white", midpoint=0) +
  theme_minimal() +
  labs(title="Heatmap of Survey Responses Correlation", x="", y="")
