Week 8 - R Assignment
========================================================

Question 1
--------------------


```r
#rbinom(n, size, prob)
n <- 100
size <- 1
prob <- 0.5
vector1 <- rbinom(n,size,prob)
vector1
```

```
##   [1] 1 1 1 0 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 1 0 1 1 0 0 1 0
##  [36] 0 0 1 0 1 0 0 0 0 1 0 0 1 0 1 0 1 0 1 0 0 1 0 1 0 0 0 1 1 0 0 1 1 1 0
##  [71] 1 0 0 0 1 1 0 0 0 1 1 0 0 1 1 1 0 1 0 0 1 1 0 0 1 1 0 0 1 0
```

Question 2
--------------------


```r
#Using the vector from above
heads <- 0
tails <- 1
s <- 1
e <- 7
seq <- 0
#Loop through the vector (created above) starting with the first 7 elements, check if they are either all zeros or all ones. If they are, then set the 'seq' variable to 1 & break out of the loop. Otherwise check the 2nd to 8th elements and repeat until a valid sequence is found, or until the end of the vector is reached.
while(e <= length(vector1))
{
  if (all(vector1[s:e] %in% heads) == TRUE || all(vector1[s:e] %in% tails) == TRUE)
    {
      seq <- 1
      break
    }
  s <- s+1
  e <- e+1
}
#Inform the user if there were 7 flips or not
if (seq == 1)
{
  print("7 or more identical flips in a row")
} else
  {
    print("no 7-in-a-row or more sequence")
  }
```

```
## [1] "no 7-in-a-row or more sequence"
```

Question 3
--------------------


```r
#Create variables for the number of runs and to count the number of 7s in a row
numofruns <- 1000
seq7count <- 0
#Loop through the assigned number of runs, incrementing the 'seq7count' variable each time there is a run with 7 heads or tails    
for (i in 1:numofruns)
{
  vector2 <- rbinom(n,size,prob)
  vector2
  heads <- 0
  tails <- 1
  s <- 1
  e <- 7
  seq <- 0
  
  while(e <= length(vector2))
  {
    if (all(vector2[s:e] %in% heads) == TRUE || all(vector2[s:e] %in% tails) == TRUE)
      {
        seq <- 1
        break
      }
    s <- s+1
    e <- e+1
  }
#Increment the 'seq7count' variable if there is a 7-in-a-row sequence
  if (seq == 1)
    {
      seq7count <- seq7count+1
    }
}
#Create a variable that contains the probability estimate
probestimate <- seq7count/numofruns
print(probestimate)
```

```
## [1] 0.55
```

Question 4
--------------------

The range of the result narrows considerably when the loop length increases. Running the 10 iterations case a handful of times resulted in a range from 0.4 to 0.7. Increasing the number of iterations to 10,000, and again running it a few times, resulted in a much narrower range of 0.5362 to 0.5485. 
However, there is a time cost for the greater accuracy. The 10 iteration case took about 3 seconds to run, whereas the 10,000 case took 18 seconds. 50,000 iterations took about 75 seconds. I wasn't brave enough to go any higher!
