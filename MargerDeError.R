# --- Cargar base ---
# base_saludmental <- read_delim(...)

# Nivel de confianza
alfa <- 0.05
Z <- qnorm(alfa/2, lower.tail = FALSE)   # z = 1.96

# Tamaño final según dataset
final_n <- nrow(base_saludmental)

# Secuencia del eje X desde 100 hasta final_n
n_vals <- seq(100, final_n, by = 100)

# Margen de error para cada n
e_vals <- Z / (2 * sqrt(n_vals))

# Margen de error en el tamaño real del dataset
final_e <- Z / (2 * sqrt(final_n))

# ----------- GRÁFICA -----------
plot(n_vals, e_vals, type = "l", lwd = 2,
     xlab = "Tamaño de muestra (n)",
     ylab = "Margen de error (e)",
     main = "Curva del margen de error vs tamaño de muestra")

# Marca en el eje X (sin sobrescribir eje)
axis(1, at = final_n, labels = FALSE, tck = -0.02)

# Marca en el eje Y
axis(2, at = final_e, labels = FALSE, tck = -0.02)

# Texto desplazado para no montarse en el eje
text(final_n, par("usr")[3],
     labels = final_n, pos = 1, col = "red", xpd = TRUE)

text(par("usr")[1], final_e,
     labels = round(final_e, 4), pos = 2, col = "red", xpd = TRUE)

# Punto final
points(final_n, final_e, pch = 19, col = "red")

# Líneas guía
abline(v = final_n, col = "red", lty = 2)
abline(h = final_e, col = "red", lty = 2)

# Etiqueta del punto
text(final_n, final_e,
     labels = paste0("(", final_n, ", ", round(final_e, 4), ")"),
     pos = 4, col = "red")


