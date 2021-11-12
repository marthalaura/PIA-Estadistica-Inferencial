library(readxl)

# Problema 2
datos = read_excel("C://Users//user//Documents//Martha//Cuarto//Estadistica//PIA_Conjunto_Inferencial.xlsx", sheet = "Regresión")

x = datos[["Price ($)"]]
y = datos[["Value Score"]]

# Coeficiente de Correlación
coefCorrelacion = cor(x,y)
print(paste0("Coeficiente de Correlación: ", coefCorrelacion))

# Método 1
relation = lm(y~x)
print(relation)
print(summary(relation))

# Método 2
m1 = mean(x)
m2 = mean(y)

sy = sum(y*x) - length(y)*m2*m1
sx = sum(x*x) - length(y)*m1*m1

theta1 = sy/sx
theta0 = m2 - theta1*m1

print(paste0("Intersección del eje (a): ", theta1))
print(paste0("Pendiente (b): ", theta0))



# Problema 3
x = datos[["Cost/Mile"]]
y = datos[["Value Score"]]

# Coeficiente de Correlación
coefCorrelacion = cor(x,y)
print(paste0("Coeficiente de Correlación: ", coefCorrelacion))

# Método 1
relation = lm(y~x)
print(relation)
print(summary(relation))

# Método 2
m1 = mean(x)
m2 = mean(y)

sy = sum(y*x) - length(y)*m2*m1
sx = sum(x*x) - length(y)*m1*m1

theta1 = sy/sx
theta0 = m2 - theta1*m1

print(paste0("Intersección del eje (a): ", theta1))
print(paste0("Pendiente (b): ", theta0))


# Problema 4
x = datos[["Price ($)"]]
y = datos[["Road-Test Score"]]

# Coeficiente de Correlación
coefCorrelacion = cor(x,y)
print(paste0("Coeficiente de Correlación: ", coefCorrelacion))

# Método 1
relation = lm(y~x)
print(relation)
print(summary(relation))

# Método 2
m1 = mean(x)
m2 = mean(y)

sy = sum(y*x) - length(y)*m2*m1
sx = sum(x*x) - length(y)*m1*m1

theta1 = sy/sx
theta0 = m2 - theta1*m1

print(paste0("Intersección del eje (a): ", theta1))
print(paste0("Pendiente (b): ", theta0))



# Problema 5
x = datos[["Predicted Reliability"]]
y = datos[["Value Score"]]

# Coeficiente de Correlación
coefCorrelacion = cor(x,y)
print(paste0("Coeficiente de Correlación: ", coefCorrelacion))

# Método 1
relation = lm(y~x)
print(relation)
print(summary(relation))

# Método 2
m1 = mean(x)
m2 = mean(y)

sy = sum(y*x) - length(y)*m2*m1
sx = sum(x*x) - length(y)*m1*m1

theta1 = sy/sx
theta0 = m2 - theta1*m1

print(paste0("Intersección del eje (a): ", theta1))
print(paste0("Pendiente (b): ", theta0))