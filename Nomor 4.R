#a
x <- 2
v <- 10
ans_a <- dchisq(x, v)
print(ans_a)

#b
n <- 100
hist(rchisq(n, v))

#c
rataan <- v
print(rataan)

varian <- 2 * v
print(varian)
