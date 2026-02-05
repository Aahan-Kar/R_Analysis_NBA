# Analysis of NBA Round Pick Statistics

One question of interest was whether height is associated with round pick status in the NBA. This analysis does not account for potential confounding variables, such as basketball performance or skill level.

---

![image](https://github.com/user-attachments/assets/4bf560fc-8381-4272-bab9-a270c9016c95)

The data set is representative of all NBA players.  
The shapes of the group round picks are homogenous and the histogram of the residuals is approximately normal, fulfilling normality.  
The population standard deviations are similar.

---

### Visual Comparisons

| ![image](https://github.com/user-attachments/assets/2d8fb73c-83ab-47c6-8702-d92235fc6809) | ![image](https://github.com/user-attachments/assets/f6da6264-5c46-4309-b105-297ef65b3d63) |
|:---:|:---:|

---

With a p-value lower than alpha (0.05), there is evidence to suggest player height for one of the round picks is different from the other.

![image](https://github.com/user-attachments/assets/4b6534ee-66b0-42c7-b2e8-637ef7ca71fd)

---

### Pairwise Comparisons

![image](https://github.com/user-attachments/assets/702e14ae-1a3f-4866-9257-7482cc45a48d)

### Confidence Intervals

![image](https://github.com/user-attachments/assets/2cadd377-8bcc-4b38-b1d3-3d4060decc42)

As none of the confidence intervals contain 0, all comparisions show there is evidence that group picks are affected by height.

---

This remains, even with Bonferroni to account for multiple unplanned comparisons.

| ![image](https://github.com/user-attachments/assets/cb4666cd-b654-4858-a981-b6a0fe2e8368) | ![image](https://github.com/user-attachments/assets/fb215763-8e2c-4455-b739-ab2d44403bbb) |
|:---:|:---:|

## Data Source

The data used in this project comes from:

**Cirtautas (2023). NBA Players Data.**  
[Kaggle Dataset Link](https://www.kaggle.com/datasets/justinas/nba-players-data)

