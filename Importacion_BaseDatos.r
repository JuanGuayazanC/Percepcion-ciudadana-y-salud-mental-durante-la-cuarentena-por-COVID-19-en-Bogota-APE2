library(readr)
base_saludmental <- read_delim("base_saludmental.csv", 
                               delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(base_saludmental)

names(base_saludmental)

