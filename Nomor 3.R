#referensi:
  #https://bookdown.org/gabriel_butler/ECON41Labs/tutorial-5-the-poisson-distribution.html#predicting-the-number-of-babies-born-in-a-hospital
#a
ans_a <- dpois(6, 4.5)
print(ans_a)

#b
set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Banyaknya bayi lahir per periode',
       y = 'Proporsi',
       title = 'Kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun') +
  theme_bw()
ans_a <- dpois(6, 4.5)
print(ans_a)

#c
  #Hasil perhitungan dari poin a = 0.12812
  #Hal ini sesuai dengan hasil penggambaran histogram
  #yang berada di rentang 0.10~0.15


#d
#rataan = varian
rataan = 4.5  #terdapat pada soal
print(rataan)

varian <- rataan
print(varian)