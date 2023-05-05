#Poin a
#Distribusi : Distribusi Binomial
#Probabilitas lahir laki-laki
p = c(0.488)
#Jumlah kelahiran = percobaan
n = 10
#Banyak bayi laki-laki = variabel random X
#Untuk X = {0, 1, 2, 3, 4, 5, 6, 7, ..., 14, 15}

#Poin b
#Ditanyakan : Probabilitas x = 3
dbinom(3, n, p)

#Poin c
#Ditanyakan : Probabilitas x < 3
pbinom(2, n, p)

#Poin d
#Ditanyakan : Probabilitas x >= 3
1 - pbinom(2, n, p)
#P(x >= 3) = P(x > 2) = 1 - P(x <= 2)

#Poin e
#Ditanyakan : Nilai Harapan = Mean
#             Simpangan Baku
nilaiHarapan = n*p
simpanganBaku = sqrt(n*p*(1-p))
sprintf("Nilai Harapan = %f", nilaiHarapan)
sprintf("Simpangan Baku = %f", simpanganBaku)

#Poin f
#Histogram
x = 0:n
plot(x, dbinom(x, n, p), type='h', lwd = 2, main = "Distribusi Banyak Bayi Laki-laki", ylab = "P(X = x)", xlab = "Jumlah bayi laki-laki")
