#Dibutuhkan untuk simulasi
#Fungsi "Count", menghitung dan menampilkan jumlah nilai hasil simulasi (0-20)
require(dplyr)
#Forward pipe operator
require(magrittr)
#Poin a
#Distribusi : Distribusi Poisson

#Poisson Experiment : Jumlah kematian karena kanker tulang selama 20 tahun
#P(x; lambda*t)

#x = Jumlah kematian karena kanker tulang selama 20 tahun 
death20Y = 1.8
#t = Durasi pengamatan
t = 20
#Lambda = Jumlah kematian karena kanker tulang per tahun
lambda = death20Y/t


#Poin b
#Ditanyakan : P(x = 4)
dpois(4, lambda*t)

#Poin c
#Ditanyakan : P(x <= 4)
ppois(4, lambda*t)

#Poin d
#Ditanyakan : P(x > 4)
ppois(4, lambda*t, lower.tail = FALSE)

#Poin e
#Ditanyakan : Nilai Harapan & Standar Deviasi
#Nilai harapan = Rata-rata
#Nilai harapan = Varians = lambda*t
sprintf("Nilai Harapan = %f", lambda*t)
sprintf("Standar Deviasi = %f\n", sqrt(lambda*t))

#Poin f
#Histogram
#Sebagai contoh
x = 0:20
plot(x, dpois(x, lambda*t), type = "h", lwd = 2,
     main = "Distribusi banyak kematian pekerja akibat kanker tulang",
     ylab = "P(X = x)", xlab = "Banyak kematian")

#Poin g
#Simulasi

#Hasil
probs = dpois(x, lambda*t)
prob_dist = sample(x,10000,prob=probs,replace=T)
data <- data.frame(prob_dist)
hist(prob_dist)
data %>% group_by(prob_dist) %>% count(prob_dist)

#Poin h
#Dari simulasi 10000 sampel acak dengan probabilitas sesuai distribusi poison p(x;1,8) untuk jumlah kematian 0-20, dibuktikan bahwa jumlah kematian yang paling mungkin terjadi adalah 0 - 4 dengan untuk kemungkinan jumlah kematian 5 ke atas dibawah 1%.