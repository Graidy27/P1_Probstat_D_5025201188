#a
n <- 100
m <- 50
sd <- 8
z <- rnorm(n, m, sd)
print(z)
plot(z)

#b
hist(
  z, 
  breaks = 50, 
  main = "5025201188_Graidy Megananda_D_DNhistogram"
)

#c
varian <- sd * sd
print(varian)