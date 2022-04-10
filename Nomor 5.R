#a
l <- 3
set.seed(1)
ans_a <- rexp(l)
print(ans_a)

#b
hist(rexp(10))
hist(rexp(100))
hist(rexp(1000))
hist(rexp(10000))

#c
rataan <- 1 / l
print(rataan)

varian <- rataan / l
print(varian)