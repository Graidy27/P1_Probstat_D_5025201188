#a
x <- 4
size <- 20
prob <- 0.2
ans_a <- dbinom(x, size, prob)
print(ans_a)

#b
  #referensi sama seperti nomor 1
#harus menginstal terlebih dahulu 2 paket yang terdapat di referensi
data.frame(x = 0:10, prob = dbinom(x = 0:10, size, prob)) %>%
  mutate(Sembuh = ifelse(x == 4, 4, "lainnya")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Sembuh)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probabilitas dari X = 4 pasien sembuh",
       x = "x pasien sembuh",
       y = "Probabilitas")

#c
rataan <- size * prob
print(rataan)

varian <- size * prob * (1 - prob)
print(varian)