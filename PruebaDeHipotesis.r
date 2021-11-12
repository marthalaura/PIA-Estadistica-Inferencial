library(readxl)
library(BSDA)

datos = read_excel("C://Users//user//Documents//Martha//Cuarto//Estadistica//PIA_Conjunto_Inferencial.xlsx", sheet = "Hipótesis")

print(z.test(datos[["Sample 1"]], alternative='two.sided', conf.level=0.99, mu=12, sigma.x = 0.21))
print(z.test(datos[["Sample 2"]], alternative='two.sided', conf.level=0.99, mu=12, sigma.x = 0.21))
print(z.test(datos[["Sample 3"]], alternative='two.sided', conf.level=0.99, mu=12, sigma.x = 0.21))
print(z.test(datos[["Sample 4"]], alternative='two.sided', conf.level=0.99, mu=12, sigma.x = 0.21))