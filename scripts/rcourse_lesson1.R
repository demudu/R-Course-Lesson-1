# load packages

library(dplyr)
library(ggplot2)

## Read Data and Organise

data = read.table("data/rcourse_lesson1_data.txt", header=TRUE, sep="\t")

# look at data
dim(data)
head(data)
tail(data)
str(data)

xtabs(~group,data)
xtabs(~type,data)


nrow(data)-sum(complete.cases(data))

# create a new data frame with dply code

data_bl = data %>% filter(group=="bilingual")

dim(data_bl)
head(data_bl)
tail(data_bl)
str(data_bl)
xtabs(~group,data_bl)
xtabs(~type,data_bl)

## testing on version control

## Make Figures
# By group

data.plot = ggplot(data, aes(x=group, y=rt)) + geom_boxplot()


data.plot

pdf("figures/data.pdf")
data.plot
dev.off()
