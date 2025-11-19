library(readr)
base_saludmental <- read_delim("base_saludmental.csv", 
                               delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(base_saludmental)

names(base_saludmental)

unique(base_saludmental$comodidad_vivienda)

analizar_variables <- function(data) {
  for (var in names(data)) {
    cat("\n==============================\n")
    cat("Variable:", var, "\n")
    cat("==============================\n")
    
    valores <- unique(data[[var]])
    
    # Si la variable es factor o carácter
    if (is.factor(data[[var]]) || is.character(data[[var]])) {
      cat("Tipo: Categórica\n")
      cat("Posibles valores:\n")
      print(valores)
      
    } else if (is.numeric(data[[var]]) || is.integer(data[[var]])) {
      cat("Tipo: Numérica\n")
      cat("Valores únicos (primeros 10):\n")
      print(head(valores, 10))
      
    } else {
      cat("Tipo: Otro\n")
      cat("Valores únicos:\n")
      print(head(valores, 10))
    }
  }
}
analizar_variables <- function(data) {
  for (var in names(data)) {
    cat("\n==============================\n")
    cat("Variable:", var, "\n")
    cat("==============================\n")
    
    valores <- unique(data[[var]])
    
    # Si la variable es factor o carácter
    if (is.factor(data[[var]]) || is.character(data[[var]])) {
      cat("Tipo: Categórica\n")
      cat("Posibles valores:\n")
      print(valores)
      
    } else if (is.numeric(data[[var]]) || is.integer(data[[var]])) {
      cat("Tipo: Numérica\n")
      cat("Valores únicos (primeros 10):\n")
      print(head(valores, 10))
      
    } else {
      cat("Tipo: Otro\n")
      cat("Valores únicos:\n")
      print(head(valores, 10))
    }
  }
}
analizar_variables(base_saludmental)

