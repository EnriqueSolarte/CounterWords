#Object Oriented Programing 221841
#Assignment No.1
#ID: 105AG8410
#Name: Bol�var Solarte
#Date:18/11/2016

#setwd(choose.dir(getwd(), "Select your working folder"))

source("functions.R")

#fileName <- 'test.txt'
fileName <- 'article.txt'

article<-readChar(fileName, file.info(fileName)$size);rm(fileName)

words<-wordsVectorizing(article)
words<-filterPuntationMarks(words)

listWords<-counterWords(words)

cat('', file = 'listWords.txt')
sink("listWords.txt")
print(listWords)
sink()

barplot(listWords[c(1:10)])

