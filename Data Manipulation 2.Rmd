
Setup
```{r setup, include=FALSE}
library(tidyverse)
```


File Extraction:
```{r setup, include=FALSE}
getwd()
setwd("C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19")
Q1 = read.csv("C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/Q1_data.csv")
Q2 = read.csv("C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/Q2_data.csv")
Q3 = read.csv("C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/Q3_data.csv")
Q4 = read.csv("C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/Q4_data.csv")

Q1_data = data.frame(Q1)
Q2_data = data.frame(Q2)
Q3_data = data.frame(Q3)
Q4_data = data.frame(Q4)

```


Splitting the customer units (households) up by income quintiles:
```{r setup, include=FALSE}

Q1_data_bin1 = filter(Q1_data, AMOUNT<10000 | AMOUNT==10000)
Q1_data_bin2 = filter(Q1_data, AMOUNT>100001.5 | AMOUNT<40000.5)
Q1_data_bin3 = filter(Q1_data, AMOUNT>400001.5 | AMOUNT<85000.5)
Q1_data_bin4 = filter(Q1_data, AMOUNT>85000.5 | AMOUNT<160000.5)
Q1_data_bin5 = filter(Q1_data, AMOUNT>160000)

income_1_Q1 = summarize(Q1_data_bin1, mean(COST))
income_2_Q1 = summarize(Q1_data_bin2, mean(COST))
income_3_Q1 = summarize(Q1_data_bin3, mean(COST))
income_4_Q1 = summarize(Q1_data_bin4, mean(COST))
income_5_Q1 = summarize(Q1_data_bin5, mean(COST))


Q2_data_bin1 = filter(Q2_data, AMOUNT<10000 | AMOUNT==10000)
Q2_data_bin2 = filter(Q2_data, AMOUNT>100001.5 | AMOUNT<40000.5)
Q2_data_bin3 = filter(Q2_data, AMOUNT>400001.5 | AMOUNT<85000.5)
Q2_data_bin4 = filter(Q2_data, AMOUNT>85000.5 | AMOUNT<160000.5)
Q2_data_bin5 = filter(Q2_data, AMOUNT>160000)

income_1_Q2 = summarize(Q2_data_bin1, mean(COST))
income_2_Q2 = summarize(Q2_data_bin2, mean(COST))
income_3_Q2 = summarize(Q2_data_bin3, mean(COST))
income_4_Q2 = summarize(Q2_data_bin4, mean(COST))
income_5_Q2 = summarize(Q2_data_bin5, mean(COST))


Q3_data_bin1 = filter(Q3_data, AMOUNT<10000 | AMOUNT==10000)
Q3_data_bin2 = filter(Q3_data, AMOUNT>100001.5 | AMOUNT<40000.5)
Q3_data_bin3 = filter(Q3_data, AMOUNT>400001.5 | AMOUNT<85000.5)
Q3_data_bin4 = filter(Q3_data, AMOUNT>85000.5 | AMOUNT<160000.5)
Q3_data_bin5 = filter(Q3_data, AMOUNT>160000)

income_1_Q3 = summarize(Q3_data_bin1, mean(COST))
income_2_Q3 = summarize(Q3_data_bin2, mean(COST))
income_3_Q3 = summarize(Q3_data_bin3, mean(COST))
income_4_Q3 = summarize(Q3_data_bin4, mean(COST))
income_5_Q3 = summarize(Q3_data_bin5, mean(COST))


Q4_data_bin1 = filter(Q4_data, AMOUNT<10000 | AMOUNT==10000)
Q4_data_bin2 = filter(Q4_data, AMOUNT>100001.5 | AMOUNT<40000.5)
Q4_data_bin3 = filter(Q4_data, AMOUNT>400001.5 | AMOUNT<85000.5)
Q4_data_bin4 = filter(Q4_data, AMOUNT>85000.5 | AMOUNT<160000.5)
Q4_data_bin5 = filter(Q4_data, AMOUNT>160000)

income_1_Q4 = summarize(Q4_data_bin1, mean(COST))
income_2_Q4 = summarize(Q4_data_bin2, mean(COST))
income_3_Q4 = summarize(Q4_data_bin3, mean(COST))
income_4_Q4 = summarize(Q4_data_bin4, mean(COST))
income_5_Q4 = summarize(Q4_data_bin5, mean(COST))
```


Collating the resulting income quintile bins by quarter:
```{r}
Q1_done = matrix(c(income_1_Q1, income_2_Q1, income_3_Q1, income_4_Q1, income_5_Q1), nrow=5, ncol=1, byrow=TRUE)
Q2_done = matrix(c(income_1_Q2, income_2_Q2, income_3_Q2, income_4_Q2, income_5_Q2), nrow=5, ncol=1, byrow=TRUE)
Q3_done = matrix(c(income_1_Q3, income_2_Q3, income_3_Q3, income_4_Q3, income_5_Q3), nrow=5, ncol=1, byrow=TRUE)
Q4_done = matrix(c(income_1_Q4, income_2_Q4, income_3_Q4, income_4_Q4, income_5_Q4), nrow=5, ncol=1, byrow=TRUE)
```


Final Dataframe!
```{r setup, include=FALSE}
Data_final = cbind(Q1_done, Q2_done, Q3_done, Q4_done)
write.csv(Data_final,"C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/Data_final.csv", row.names = FALSE)
```