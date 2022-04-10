#referensi pengerjaan: https://rpubs.com/mpfoley73/458721
#a
x <- 3    
p <- 0.20 
ans_a <- dgeom(x, p)
print(ans_a)

#b
n <- 10000
ans_b <- mean(rgeom(n, p) == x)
print(ans_b)


#c
  #hasil a = 0.1024
  #hasil b = 0.1  (Jika dilakukan berulang-ulang, hasilnya berada di rentang 0.09~0.11)
  #Kesimpulan:
  #   1. Hasil yang didapatkan a tetap, sedangkan b berubah
  #      di rentang 0.09~0.11.
  #   2. Meskipun hasil b berubah-ubah, nilainya mendekati
  #      nilai a.

#d
#harus menginstal terlebih dahulu 2 paket yang terdapat di referensi
data.frame(x = 0:4, prob = dgeom(x = 0:4, prob = p)) %>%
  mutate(Gagal = ifelse(x == 3, 3, "lainnya")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Gagal)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probabilitas dari X = 3 gagal sebelum sukses pertama",
       x = "x gagal sebelum sukses pertama",
       y = "Probabilitas") 

#e
rataan <- x / p
print(rataan)

varian <- (x - p) / ("^" (p, 2))
print(varian)

