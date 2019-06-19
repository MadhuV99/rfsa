#rfsa_2_2.R
rm(list=ls())
setwd('~/pj/rfsa')
getwd()
sink()
sink('rfsa2_O.Rout', append=TRUE, split=TRUE)
dev.off()
#jpeg('rfsa_2_1.jpg')
#pdf('rfsa_2_1.pdf')
#dev.off()
# x <- installed.packages()
# x <- as.data.frame(x)
# y <- paste(x$Package,x$LibPath)
# y <- sort(y)
# head(y, 20)
# install.packages("dplyr")
# library(dplyr)
# y <- x %>% 
#   group_by(LibPath) %>%
#   summarize(Packages=n())
#  
sessionInfo()

?MASS
?openssl
?mean
library(MASS)
edit(anorexia)
anorexia$Postwt-anorexia$Prewt
t.test(anorexia$Postwt-anorexia$Prewt, mu=0)

library("ggplot2")
# read.<format>(“File Name”, arg1, arg2, ...)

# write.<format>(dataframe, “File Name”, arg1, arg2, ...)

library(xlsx)
scores_frame <- read.xlsx("Scores.xlsx", sheetName="Sheet1")
scores_frame$Math_Score[4]

anorexia
write.xlsx(anorexia,"anorexia.xlsx")
write.csv(anorexia,"anorexia.csv")

read.csv("Scores.csv")

write.table(anorexia, "anorexia.txt",
            quote = FALSE, sep = "\t")

read.xlsx("Scores.xlsx","Sheet1")

