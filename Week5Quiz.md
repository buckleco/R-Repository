Week 5 - R Quiz
========================================================

Question 1
--------------------

```r
A <- matrix(c(1,-1,-1,-1), nrow=2)
A
```

```
##      [,1] [,2]
## [1,]    1   -1
## [2,]   -1   -1
```

```r
B <- matrix(c(2,-1,3,-2), nrow=2)
B
```

```
##      [,1] [,2]
## [1,]    2    3
## [2,]   -1   -2
```

```r
C <- matrix(c(1,0,0,0), nrow=2)
C
```

```
##      [,1] [,2]
## [1,]    1    0
## [2,]    0    0
```

```r
D <- matrix(c(0,1,0,1,0,0,0,0,1), nrow=3)
D
```

```
##      [,1] [,2] [,3]
## [1,]    0    1    0
## [2,]    1    0    0
## [3,]    0    0    1
```

```r
E <- matrix(c(1,0,0,0,0,1,0,1,0), nrow=3)
E
```

```
##      [,1] [,2] [,3]
## [1,]    1    0    0
## [2,]    0    0    1
## [3,]    0    1    0
```

Question 2
--------------------

An idempotent matrix is a matrix which, when multiplied by itself, yields itself. Therefore, only matrix C is idempotent as demonstrated below:



```r
A %*% A # Not idempotent
```

```
##      [,1] [,2]
## [1,]    2    0
## [2,]    0    2
```

```r
B %*% B # Not idempotent
```

```
##      [,1] [,2]
## [1,]    1    0
## [2,]    0    1
```

```r
C %*% C # Idempotent
```

```
##      [,1] [,2]
## [1,]    1    0
## [2,]    0    0
```

```r
D %*% D # Not idempotent
```

```
##      [,1] [,2] [,3]
## [1,]    1    0    0
## [2,]    0    1    0
## [3,]    0    0    1
```

```r
E %*% E # Not idempotent
```

```
##      [,1] [,2] [,3]
## [1,]    1    0    0
## [2,]    0    1    0
## [3,]    0    0    1
```


Question 3
--------------------

A matrix is orthogonal if its transpose is equal to its inverse. Therefore, matrices D & E are orthogonal as demonstrated below:


```r
t(A) # Not orthogonal
```

```
##      [,1] [,2]
## [1,]    1   -1
## [2,]   -1   -1
```

```r
solve(A)
```

```
##      [,1] [,2]
## [1,]  0.5 -0.5
## [2,] -0.5 -0.5
```

```r
t(B) # Not orthogonal
```

```
##      [,1] [,2]
## [1,]    2   -1
## [2,]    3   -2
```

```r
solve(B)
```

```
##      [,1] [,2]
## [1,]    2    3
## [2,]   -1   -2
```

```r
t(C) # Not orthogonal (C is a singular matrix so it does not have an inverse)
```

```
##      [,1] [,2]
## [1,]    1    0
## [2,]    0    0
```

```r
solve(C)
```

```
## Error: Lapack routine dgesv: system is exactly singular: U[2,2] = 0
```

```r
t(D) # Orthogonal
```

```
##      [,1] [,2] [,3]
## [1,]    0    1    0
## [2,]    1    0    0
## [3,]    0    0    1
```

```r
solve(D)
```

```
##      [,1] [,2] [,3]
## [1,]    0    1    0
## [2,]    1    0    0
## [3,]    0    0    1
```

```r
t(E) # Orthogonal
```

```
##      [,1] [,2] [,3]
## [1,]    1    0    0
## [2,]    0    0    1
## [3,]    0    1    0
```

```r
solve(E)
```

```
##      [,1] [,2] [,3]
## [1,]    1    0    0
## [2,]    0    0    1
## [3,]    0    1    0
```

Question 4
--------------------


```r
q4vect1 <- c("John Smith","Bob Benson","Todd McLean") #Vector for dataframe
q4vect1
```

```
## [1] "John Smith"  "Bob Benson"  "Todd McLean"
```

```r
q4vect2 <- c(33,55,88) #Vector for dataframe
q4vect2
```

```
## [1] 33 55 88
```

```r
q4vect3 <- 4:8 #Vector for final list
q4vect3
```

```
## [1] 4 5 6 7 8
```

```r
q4mtrx <- matrix(c(5,-17,-21,4), nrow=2) #Matrix for final list
q4mtrx
```

```
##      [,1] [,2]
## [1,]    5  -21
## [2,]  -17    4
```

```r
q4arr <- array(1:15, dim = c(5,3,3)) #Array for final list
q4arr
```

```
## , , 1
## 
##      [,1] [,2] [,3]
## [1,]    1    6   11
## [2,]    2    7   12
## [3,]    3    8   13
## [4,]    4    9   14
## [5,]    5   10   15
## 
## , , 2
## 
##      [,1] [,2] [,3]
## [1,]    1    6   11
## [2,]    2    7   12
## [3,]    3    8   13
## [4,]    4    9   14
## [5,]    5   10   15
## 
## , , 3
## 
##      [,1] [,2] [,3]
## [1,]    1    6   11
## [2,]    2    7   12
## [3,]    3    8   13
## [4,]    4    9   14
## [5,]    5   10   15
```

```r
q4dataf <- data.frame(Name = q4vect1, Age = q4vect2) #Dataframe for final list
q4dataf
```

```
##          Name Age
## 1  John Smith  33
## 2  Bob Benson  55
## 3 Todd McLean  88
```

```r
q4lst <- list(4, "fore", 2, "too", 8, "ate") #List for final list
q4lst
```

```
## [[1]]
## [1] 4
## 
## [[2]]
## [1] "fore"
## 
## [[3]]
## [1] 2
## 
## [[4]]
## [1] "too"
## 
## [[5]]
## [1] 8
## 
## [[6]]
## [1] "ate"
```

```r
q4finallst <- list(q4vect3,q4mtrx,q4arr,q4dataf,q4lst) #Final list
q4finallst
```

```
## [[1]]
## [1] 4 5 6 7 8
## 
## [[2]]
##      [,1] [,2]
## [1,]    5  -21
## [2,]  -17    4
## 
## [[3]]
## , , 1
## 
##      [,1] [,2] [,3]
## [1,]    1    6   11
## [2,]    2    7   12
## [3,]    3    8   13
## [4,]    4    9   14
## [5,]    5   10   15
## 
## , , 2
## 
##      [,1] [,2] [,3]
## [1,]    1    6   11
## [2,]    2    7   12
## [3,]    3    8   13
## [4,]    4    9   14
## [5,]    5   10   15
## 
## , , 3
## 
##      [,1] [,2] [,3]
## [1,]    1    6   11
## [2,]    2    7   12
## [3,]    3    8   13
## [4,]    4    9   14
## [5,]    5   10   15
## 
## 
## [[4]]
##          Name Age
## 1  John Smith  33
## 2  Bob Benson  55
## 3 Todd McLean  88
## 
## [[5]]
## [[5]][[1]]
## [1] 4
## 
## [[5]][[2]]
## [1] "fore"
## 
## [[5]][[3]]
## [1] 2
## 
## [[5]][[4]]
## [1] "too"
## 
## [[5]][[5]]
## [1] 8
## 
## [[5]][[6]]
## [1] "ate"
```
