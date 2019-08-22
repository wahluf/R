fx <- function(x) {
  return(x^3 + 4*x^2 - 10)
}


#bisection
bi <- function(a, b) {
  
  #initialize arbritrary large relative error
  re <- 2
  
  #compute the first pn
  pn <- (a + b) / 2
  
  #meghitung iterasi
  n <- 0
  
  #untuk judul
  j <- c("Hasil pada Iterasi ke-")
  
  while(re >= 0.0001) {
    n <- n + 1
    #print to monitor: a, b, pn, f(pn), and re
    print(paste(a, b, pn, fx(pn), fx(a), re, sep=" "))
    
    #previous p
    p <- pn
    
    #bisection step to halve interval
    if (sign(fx(p)) == sign(fx(a))) {
      a <- p
    } else {
      b <- p
    }
    
  
    #update p
    pn <- (a + b) / 2
    
    #update relative error
    re <- abs(pn-p) / abs(pn)
  }
 
  #print the final solution
  print(paste(j,n+1))
  print(paste(a, b, pn, fx(pn), fx(a), re, sep=" "))
}

# batas bawah | batas atas | Xr | fx(batas bawah) | theta |


#newton
fx2 <- deriv(~ x^3 + 4*x^2 - 10, "x", function(x){})

newt <- function(pn) {
  
  #initialize arbitrary large relative error
  re <- 2
  
  while(re >= 0.0001) {
    
    #print to monitor: pn, f(pn), and re.
    print(paste(pn, fx2(pn)[1], re, sep=" "))
    
    #previous p
    p <- pn
    
    #update p, see Equation (6)
    pn <- p - (fx2(p)[1] / attributes(fx2(p))$grad)
  
    #update relative error
    re <- abs(pn-p) / abs(pn)
    
  }
  
  #print final solution
  print(paste(pn, fx2(pn)[1], re, sep=" "))
  
}




