library(readxl)
library(BSDA)

datos = read_excel("C://Users//user//Documents//Martha//Cuarto//Estadistica//PIA_Conjunto_Inferencial.xlsx", sheet = "Intervalos", skip = 1)

# Problema 1,2,3
m1 = mean(as.numeric(unlist(na.omit(datos[, c(1)]))))
sd1 = sd(as.numeric(unlist(na.omit(datos[, c(1)]))))

m2 = mean(as.numeric(unlist(na.omit(datos[, c(2)]))))
sd2 = sd(as.numeric(unlist(na.omit(datos[, c(2)]))))

m3 = mean(as.numeric(unlist(na.omit(datos[, c(3)]))))
sd3 = sd(as.numeric(unlist(na.omit(datos[, c(3)]))))

m4 = mean(as.numeric(unlist(na.omit(datos[, c(4)]))))
sd4 = sd(as.numeric(unlist(na.omit(datos[, c(4)]))))

m5 = mean(as.numeric(unlist(na.omit(datos[, c(5)]))))
sd5 = sd(as.numeric(unlist(na.omit(datos[, c(5)]))))

m6 = mean(as.numeric(unlist(na.omit(datos[, c(6)]))))
sd6 = sd(as.numeric(unlist(na.omit(datos[, c(6)]))))

print("Gulf View Condominiums")
print("List Price")
print(paste0("- Media: ", round(m1,2)))
print(paste0("- Desviación Estándar: ", round(sd1,2)))
print("Sale Price")
print(paste0("- Media: ", round(m2,2)))
print(paste0("- Desviación Estándar: ", round(sd2,2)))
print("Days to Sell")
print(paste0("- Media: ", round(m3,2)))
print(paste0("- Desviación Estándar: ", round(sd3,2)))

print("-------------------------")
print("No Gulf View Condominiums")
print("List Price")
print(paste0("- Media: ", round(m4,2)))
print(paste0("- Desviación Estándar: ", round(sd4,2)))
print("Sale Price")
print(paste0("- Media: ", round(m5,2)))
print(paste0("- Desviación Estándar: ", round(sd5,2)))
print("Days to Sell")
print(paste0("- Media: ", round(m6,2)))
print(paste0("- Desviación Estándar: ", round(sd6,2)))

# Problema 4
print(z.test(datos[, c(2)], alternative='two.sided', conf.level=0.95, mu=454.22, sigma.x = 192.52))
print(z.test(datos[, c(3)], alternative='two.sided', conf.level=0.95, mu=106, sigma.x = 52.22))

# Problema 5
print(z.test(datos[, c(5)], alternative='two.sided', conf.level=0.95, mu=203.19, sigma.x = 43.89))
print(z.test(datos[, c(6)], alternative='two.sided', conf.level=0.95, mu=135, sigma.x = 76.3))

# Problema 6
tamMuestra1 = ((1.96 * 192.52)/40)^2
tamMuestraRed1 = ceiling(tamMuestra1)
print(paste0("Tamaño de muestra: ", tamMuestraRed1))

tamMuestra2 = ((1.96 * 43.89)/15)^2
tamMuestraRed2 = ceiling(tamMuestra2)
print(paste0("Tamaño de muestra: ", tamMuestraRed2))
