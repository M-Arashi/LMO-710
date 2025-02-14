A<-matrix(c(2,0,1,1,3,1),nrow=3,ncol=2,byrow=TRUE)
A
library(MASS)
invA1<-ginv(A)
invA1

# Check
result <- all.equal(A%*%invA1%*%A, A)
print(result)

# Moore-Penrose inverse
install.packages("pracma")
library(pracma)
invA2<-pinv(A)
invA2

# Example of linear regression y=Xbeta

X <- matrix(c(7,6,4,8,10,11,12,9,3,5,1,2), 3, 4)
X
y <- apply(X, 1, sum)
y
beta <- pinv(X) %*% y
X %*% beta
