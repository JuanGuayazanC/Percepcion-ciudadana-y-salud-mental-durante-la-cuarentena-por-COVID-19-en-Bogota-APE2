# Nivel de confianza
alfa <- 0.05
Z <- qnorm(alfa/2, lower.tail = FALSE)

# Tamaño del dataset
final_n <- nrow(base_saludmental)

# EXTENDER eje X HASTA 10.000
n_vals <- seq(100, 10000, by = 100)   # <--- aquí está el cambio

# Margen de error
e_vals <- Z / (2 * sqrt(n_vals))

# Margen de error para tu dataset
final_e <- Z / (2 * sqrt(final_n))

plot(n_vals, e_vals, type = "l", lwd = 2,
     xlab = "Tamaño de muestra (n)",
     ylab = "Margen de error (e)",
     main = "Curva del margen de error vs tamaño de muestra",
     ylim = c(0, max(e_vals)))

# Marca del dataset
axis(1, at = final_n, labels = FALSE, tck = -0.02)
axis(2, at = final_e, labels = FALSE, tck = -0.02)

# Texto desplazado
text(final_n, par("usr")[3], labels = final_n, pos = 1, col = "red", xpd = TRUE)
text(par("usr")[1], final_e, labels = round(final_e, 4), pos = 2, col = "red", xpd = TRUE)

# Punto final y guías
points(final_n, final_e, pch = 19, col = "red")
abline(v = final_n, col = "red", lty = 2)
abline(h = final_e, col = "red", lty = 2)

# Etiqueta
text(final_n, final_e,
     labels = paste0("(", final_n, ", ", round(final_e, 4), ")"),
     pos = 4, col = "red")




