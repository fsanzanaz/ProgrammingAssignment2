## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Funcion que permite ingresar una matriz a la memoria (favor ingresar de 2x2)
makeCacheMatrix <- function(x = matrix()) {
                invertir<-NULL
                config<-function(y){
                  x<<-y
                  invertir<<-NULL
                }
                ingresar<-function(){x}
                configinvertida<-function(invertida){invertir<<-invertida}
                ingresarinvertida<-function(){invertir}
                list(config=config,ingresar=ingresar,configinvertida=configinvertida,ingresarinvertida=ingresarinvertida)
}

## Write a short comment describing this function
##funcion que permite invertir una matriz de 2x2 que esta alojada en la memoria
cacheSolve <- function(x, ...) {
            invertir<-x$ingresarinvertida()
            if(!is.null(invertir)){
              return(invertir)
              message("matriz en memoria")
            }
        ## Return a matrix that is the inverse of 'x'
            matriz<-x$ingresar()
            invertir<-solve(matriz,...)
            x$configinvertida(invertir)
            invertir
}
