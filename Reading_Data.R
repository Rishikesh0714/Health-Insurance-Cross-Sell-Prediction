# Downloading file
Link = "https://www.kaggle.com/anmolkumar/health-insurance-cross-sell-prediction/download"

if (!file.exists("Data")) {
        dir.create("Data")
        download.file(Link, destfile = "Data.zip")
}

#Read Data
library(readr)
data <- read_csv("Data/train.csv", col_types = "ififdfcfnnif")
test <- read_csv("Data/test.csv",col_types = "ififdfcfnni")

