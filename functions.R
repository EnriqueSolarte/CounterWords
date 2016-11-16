wordsVectorizing<-function(variable){
  variable<-unlist(strsplit(variable," "))
  variable<-variable[nchar(variable)!=0]  
  return(variable)
}


deleteSpaces<-function(variable){
  
  variable<- wordsVectorizing(variable)
  variable<- gsub(pattern = "[[:blank:]]", replacement = "", variable)
  return(variable)
}


filterPuntationMarks<-function(stringVariable){
  
  stringVariable<- gsub(pattern = "[[:punct:]]", replacement = "", stringVariable)
  
  punct<- " 's  \\r \\t \\nBy  \\n"
  punct<-deleteSpaces(punct)
  
  for (i in 1:length(punct)){
    stringVariable<-gsub(punct[i]," ",stringVariable)
  } 
  stringVariable<-wordsVectorizing(stringVariable)
  stringVariable<-deleteSpaces(stringVariable)
  return(stringVariable)
  
  
}
