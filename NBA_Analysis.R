library(ggplot2)      
library(dplyr)
library(pairwiseCI)

data <- read.csv(file.choose(), na.strings = c("","NA"))


data$draft_round <- as.character(data$draft_round)

data$draft_round <- factor(data$draft_round,
                           levels = c("Undrafted", "1", "2"),
                           labels = c("Undrafted", "1st Round", "2nd Round"))

data <- data %>% 
  filter(!is.na(draft_round) & !is.na(player_height))

table(data$draft_round)

data %>%
  group_by(draft_round) %>%
  summarise(
    mean = mean(player_height),
    sample_size = length(player_height),
    sd = sd(player_height)
  )

summary(aov(player_height ~ draft_round, data = data))

ggplot(data, aes(x = draft_round, y = player_height, fill = draft_round)) +
  geom_boxplot() +
  labs(title = "Boxplot of Player Height by Draft Round", x = "Draft Round", y = "Player Height") +
  theme_minimal() +
  coord_flip()

hist(residuals(aov(player_height ~ draft_round, data = data)), 
     breaks = 20, main = "Histogram of Residuals", xlab = "Residuals", col = "lightblue", border = "black")

pairwiseCI(player_height ~ draft_round, data = data,
           method = "Param.diff", conf.level = 0.95, var.equal = TRUE)
attach(data)
pairwise.t.test(player_height, draft_round, p.adj = "none")

pairwiseCI(player_height ~ draft_round, data = data,
           method = "Param.diff", conf.level = 1-0.05/2, var.equal=TRUE)
attach(data)
pairwise.t.test(player_height, draft_round, p.adj = "bonferroni")
