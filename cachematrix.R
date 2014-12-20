## makematrix function takes three inputs , elements of matrices, no of rows 
## and columns. Cachematrix function calculates inverse of the input matrix
## and returns it. If the matrix is input sgain in cachematrix it returns only
## the previously calculated inverse matrix

## makematrix function

 makematrix<-function(x=numeric(),y=numeric(),z=numeric())
 {
 m<-NULL
 get<- matrix(x,y,z)
 setmatrix<-function(matrix){m<<-matrix}
 getmatrix<-function() m
 list(get=get,setmatrix=setmatrix,getmatrix=getmatrix)
 }



## cachematrix function

cachematrix<-function(s){
m<-s$getmatrix()
if(!is.null(m))
{
message("getting cached data")
return(m)
}
newdata<-s$get
m<-solve(newdata)
s$setmatrix(m)
m
}
