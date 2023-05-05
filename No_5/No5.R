#Poin A
x = -2.34
df = 6
pt(x, df)
#Poin B
x = 1.34
df = 6
pt(x, df, lower.tail = FALSE) 
#Poin C
x1 = -1.23
x2 = 1.23
df = 3
pt(x1, df) + pt(x2, df, lower.tail = FALSE) 
#Poin D
x1 = -0.94
x2 = 0.94
df = 14
pt(x2, df) - pt(x1, df)
#Poin E
area = 0.0333
df = 5
qt(area, df)
#Poin F
area = 0.125
df = 25
qt(area, df, lower.tail = FALSE)
#Poin G
area = 0.75
df = 11
-qt((area/2)+0.5, df)
qt((area/2)+0.5, df)

#Poin H
area = 0.0333
df = 23
qt(area, df)
qt(area, df, lower.tail = FALSE)