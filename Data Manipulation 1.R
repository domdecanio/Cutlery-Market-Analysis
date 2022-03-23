
File extraction:
```{r setup, include=FALSE}
setwd("C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/diary19") 

library(dplyr)
library(haven)

path = "C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/open_these/"
files <- list.files(path=path, pattern="*.sas7bdat")
for(file in files)
{
perpos <- which(strsplit(file, "")[[1]]==".")
assign(
gsub(" ","",substr(file, 1, perpos-1)), 
read_sas(paste(path,file,sep=""), NULL))
}

```


List of files to access:
```{r setup, include=FALSE}
#exp_files = list(expd191, expd192, expd193, expd194)
```


Sub-setting data to only include the customer unit's (household's) id, and their expenditure:
```{r setup, include=FALSE}
#expd191
numeric_NEWID = as.numeric(expd191$NEWID)
numeric_UCC = as.numeric(expd191$UCC)
expd191 = cbind(expd191, numeric_UCC)
expd191 = expd191[, c("NEWID", "COST", "numeric_UCC")]
expd191 = filter(expd191, numeric_UCC==320380)

#expd192
numeric_NEWID = as.numeric(expd192$NEWID)
numeric_UCC = as.numeric(expd192$UCC)
expd192 = cbind(expd192, numeric_UCC)
expd192 = expd192[, c("NEWID", "COST", "numeric_UCC")]
expd192 = filter(expd192, numeric_UCC==320380)

#expd193
numeric_NEWID = as.numeric(expd193$NEWID)
numeric_UCC = as.numeric(expd193$UCC)
expd193 = cbind(expd193, numeric_UCC)
expd193 = expd193[, c("NEWID", "COST", "numeric_UCC")]
expd193 = filter(expd193, numeric_UCC==320380)

#expd194
numeric_NEWID = as.numeric(expd194$NEWID)
numeric_UCC = as.numeric(expd194$UCC)
expd194 = cbind(expd194, numeric_UCC)
expd194 = expd194[, c("NEWID", "COST", "numeric_UCC")]
expd194 = filter(expd194, numeric_UCC==320380)
```


File check
```{r setup, include=FALSE}
#expd191
#expd192
#expd193
#expd194
```


File check
```{r setup, include=FALSE}
#expd191
last <- nrow(expd191)
penu <- nrow(expd191) - 1
expd191$ContainsKeyword <- FALSE
expd191$ContainsKeyword[grep("keyword", expd191$NEWID)] <- TRUE
expd191$TripletFound <- NA
   for (i in 1:last){
     expd191$TripletFound[i] <- {expd191$NEWID[i] == expd191$NEWID[i+1]}}
expd191 =  na.omit(expd191)
for(i in 1:last){
   if(expd191$TripletFound[i] == TRUE){expd191$COST[i] = expd191$COST[i] + expd191$COST[i + 1]}}
expd191 = aggregate(x = expd191, by = list(expd191$NEWID), FUN = function(x) 
na.omit(x)[1])[,-1]
#expd191

#expd192
last <- nrow(expd192)
penu <- nrow(expd192) - 1
expd192$ContainsKeyword <- FALSE
expd192$ContainsKeyword[grep("keyword", expd192$NEWID)] <- TRUE
expd192$TripletFound <- NA
   for (i in 1:last){
     expd192$TripletFound[i] <- {expd192$NEWID[i] == expd192$NEWID[i+1]}}
expd192 =  na.omit(expd192)
for(i in 1:last){
   if(expd192$TripletFound[i] == TRUE){expd192$COST[i] = expd192$COST[i] + expd192$COST[i + 1]}}
expd192 = aggregate(x = expd192, by = list(expd192$NEWID), FUN = function(x) 
na.omit(x)[1])[,-1]
#expd192

#expd193
last <- nrow(expd193)
penu <- nrow(expd193) - 1
expd193$ContainsKeyword <- FALSE
expd193$ContainsKeyword[grep("keyword", expd193$NEWID)] <- TRUE
expd193$TripletFound <- NA
   for (i in 1:last){
     expd193$TripletFound[i] <- {expd193$NEWID[i] == expd193$NEWID[i+1]}}
expd193 =  na.omit(expd193)
for(i in 1:last){
   if(expd193$TripletFound[i] == TRUE){expd193$COST[i] = expd193$COST[i] + expd193$COST[i + 1]}}
expd193 = aggregate(x = expd193, by = list(expd193$NEWID), FUN = function(x) 
na.omit(x)[1])[,-1]
#expd193

#expd194
last <- nrow(expd194)
penu <- nrow(expd194) - 1
expd194$ContainsKeyword <- FALSE
expd194$ContainsKeyword[grep("keyword", expd194$NEWID)] <- TRUE
expd194$TripletFound <- NA
   for (i in 1:last){
     expd194$TripletFound[i] <- {expd194$NEWID[i] == expd194$NEWID[i+1]}}
expd194 =  na.omit(expd194)
for(i in 1:last){
   if(expd194$TripletFound[i] == TRUE){expd194$COST[i] = expd194$COST[i] + expd194$COST[i + 1]}}
expd194 = aggregate(x = expd194, by = list(expd194$NEWID), FUN = function(x) 
na.omit(x)[1])[,-1]
#expd194

```



Income numbers
```{r setup, include=FALSE}
#dtbd191
numeric_NEWID = as.numeric(dtbd191$NEWID)
numeric_UCC = as.numeric(dtbd191$UCC)
dtbd191 = cbind(dtbd191, numeric_UCC)
dtbd191 = dtbd191[, c("NEWID", "AMOUNT", "numeric_UCC")]
dtbd191 = filter(dtbd191, numeric_UCC==900000)

#dtbd192
numeric_NEWID = as.numeric(dtbd192$NEWID)
numeric_UCC = as.numeric(dtbd192$UCC)
dtbd192 = cbind(dtbd192, numeric_UCC)
dtbd192 = dtbd192[, c("NEWID", "AMOUNT", "numeric_UCC")]
dtbd192 = filter(dtbd192, numeric_UCC==900000)

#dtbd193
numeric_NEWID = as.numeric(dtbd193$NEWID)
numeric_UCC = as.numeric(dtbd193$UCC)
dtbd193 = cbind(dtbd193, numeric_UCC)
dtbd193 = dtbd193[, c("NEWID", "AMOUNT", "numeric_UCC")]
dtbd193 = filter(dtbd193, numeric_UCC==900000)

#dtbd194
numeric_NEWID = as.numeric(dtbd194$NEWID)
numeric_UCC = as.numeric(dtbd194$UCC)
dtbd194 = cbind(dtbd194, numeric_UCC)
dtbd194 = dtbd194[, c("NEWID", "AMOUNT", "numeric_UCC")]
dtbd194 = filter(dtbd194, numeric_UCC==900000)
```


File check:
```{r setup, include=FALSE}
#expd191
#expd192
#expd193
#expd194

#dtbd191
#dtbd192
#dtbd193
#dtbd194
```


File segmentation:
```{r setup, include=FALSE}
expd191 = expd191[,c("NEWID", "COST")]
expd192 = expd192[,c("NEWID", "COST")]
expd193 = expd193[,c("NEWID", "COST")]
expd194 = expd194[,c("NEWID", "COST")]

dtbd191 = dtbd191[,c("NEWID", "AMOUNT")]
dtbd192 = dtbd192[,c("NEWID", "AMOUNT")]
dtbd193 = dtbd193[,c("NEWID", "AMOUNT")]
dtbd194 = dtbd194[,c("NEWID", "AMOUNT")]
```



File MERGING:
```{r setup, include=FALSE}
Q1 = merge(expd191, dtbd191, by="NEWID")
Q2 = merge(expd192, dtbd192, by="NEWID")
Q3 = merge(expd193, dtbd193, by="NEWID")
Q4 = merge(expd194, dtbd194, by="NEWID")

Q1
Q2
Q3
Q4
```


Saving to CSV!
```{r setup, include=FALSE}
write.csv(Q1,"C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/Q1_data.csv", row.names = FALSE)
write.csv(Q2,"C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/Q2_data.csv", row.names = FALSE)
write.csv(Q3,"C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/Q3_data.csv", row.names = FALSE)
write.csv(Q4,"C:/Users/Dom/Desktop/College/STAT 3080 (from data to knowledge)/Project/diary19/Q4_data.csv", row.names = FALSE)

```
