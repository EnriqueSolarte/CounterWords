deleteSpaces<-function(variable){
  
  #return vector with each word in "variable" taking off extras spaces. "varaiable"
  #can be a vector of charaters
  
  variable<-unlist(strsplit(variable," "))
  variable<-variable[nchar(variable)!=0]
  return(variable)
}

filterPuntationMarks<-function(stringVariable){
  
  stringVariable<- gsub(pattern = "[[:punct:]]", replacement = "", stringVariable)
  
  punct<- " 's  \\r \\t \\nBy  \\n"
  punct<-deleteSpaces(punct)
  
  for (i in 1:length(punct)){
    stringVariable<-gsub(punct[i],"",stringVariable)
  } 
  stringVariable<-deleteSpaces(stringVariable)
  return(stringVariable)
  
  
}
