# Adding feature of Vehicle_grp
library(dplyr)
data2 <- mutate(data, Vehicle_Grp = ifelse(grepl("^< 1", data$Vehicle_Age),"new", 
                                            ifelse(grepl("^> 2", data$Vehicle_Age), "old",
                                                    "fresh")))
#change it into factor
data2$Vehicle_Grp <- as.factor(data2$Vehicle_Grp)
data2 <- select(data2, -"Vehicle_Age")
