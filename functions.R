wordsVectorizing<-function(variable){
  variable<-unlist(strsplit(variable," "))
  variable<-variable[nchar(variable)!=0]  
  return(variable)
}
#function Ok

deleteSpaces<-function(variable){
  
  variable<- wordsVectorizing(variable)
  variable<- gsub(pattern = "[[:blank:]]", replacement = "", variable)
  return(variable)
}
#function OK

filterPuntationMarks<-function(stringVariable){
  
  punct<- " \\r \\t \\nBy  \\n"
  punct<-deleteSpaces(punct)
  
  for (i in 1:length(punct)){
    stringVariable<-gsub(punct[i]," ",stringVariable)
  } 
  stringVariable<-wordsVectorizing(stringVariable)
  stringVariable<-deleteSpaces(stringVariable)
  
  punct<- " : , 's ' -- - --- "
  punct<-deleteSpaces(punct)
  
  for (i in 1:length(punct)){
    stringVariable<-gsub(punct[i]," ",stringVariable)
  }
  
  stringVariable<- gsub(pattern = "[[:punct:]]", replacement = "", stringVariable)
  
  stringVariable<-wordsVectorizing(stringVariable)
  stringVariable<-deleteSpaces(stringVariable)
  
  return(stringVariable)
  
  
}
#function Ok

counterWords<-function(wordsf){

  listWordsf<-list()
  
  while(length(wordsf)>0){
    aux<-grep(wordsf[1], wordsf, ignore.case = TRUE)
    aux<-aux[nchar(wordsf[aux])==nchar(wordsf[1])]
      listWordsf[wordsf[1]]<-length(aux)
      wordsf<-wordsf[-aux]
  }
  listWordsf<-sort(unlist(listWordsf),decreasing = TRUE)
  
  return(listWordsf)
}
#funtion OK
