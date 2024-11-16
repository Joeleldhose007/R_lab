install.packages("ggplot2")
install.packages("dplyr")
install.packages("titanic")

library(ggplot2)
library(dplyr)
library(titanic)

data("titanic_train")
titanic_data <- titanic_train

ggplot(titanic_data, aes(x = Parch))+
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black")+
  labs(title = "Histogram of Number of Parents/Children Aboard",
       x = "Number of Parents/Children Aboard(Parch)",
       y = "Frequency")+
  theme_minimal()

summary(titanic_data)

titanic_data %>%
  summarise(
    Age_Mean = mean(Age, na.rm = TRUE),
    Age_SD = sd(Age, na.rm = TRUE),
    Fare_Mean = mean(Fare, na.rm =TRUE),
    Fare_SD = sd(Fare, na.rm = TRUE),
    Parch_Mean = mean(Parch, na.rm =TRUE),
    SibSp_Mean = mean(SibSp, na.rm = TRUE)
  )

titanic_data %>%
  group_by(Sex) %>%
  summarise(Survival_Rate = mean(Survived, na.rm = TRUE))

titanic_data %>%
  group_by(Pclass) %>%
  summarise(Survival_Rate = mean(Survived, na.rm = TRUE))

titanic_data %>%
  mutate(Age_Group = cut(Age, breaks = c(0, 12, 18, 35, 60, Inf),
                         labels = c("Child", "Teenager", "Adult", "Middle-Aged", "Senior"))) %>%
  group_by(Age_Group) %>%
  summarise(Survival_Rate = mean(Survived, na.rm = TRUE))

cor(titanic_data %>% select(Age, Fare, SibSp, Parch, Survived), use = "complete.obs")

ggplot(titanic_data, aes(x = factor(Survived), y = Age, fill = factor(Survived)))+
  geom_boxplot()+
  labs(title = "Age Distribution of Survivors and Non-Survivors",
       x = "Survival Status",
       y = "Age")+
  scale_x_discrete(labels = c("Not Survived", "Survived"))+
  scale_fill_manual(values = c("red", "green"))+
  theme_minimal()
