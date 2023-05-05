#Poin a
x = 3
v = 10
dchisq(x, v)

#Poin b
values <- rchisq(n=500, v)
hist(dchisq(values, v), breaks = 50)

#Poin c
#Rata-rata = v
#Varians = v^2
rata2 = v
varians = v*2
sprintf("Rata-rata = %f", rata2)
sprintf("Varians = %f", varians)