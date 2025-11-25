base <- base %>%
  mutate(hablar_amigos_familia_num = case_when(
    hablar_amigos_familia == "Casi todos los días" ~ 6,
    hablar_amigos_familia == "Algunas veces a la semana" ~ 5,
    hablar_amigos_familia == "Algunas veces al mes" ~ 4,
    hablar_amigos_familia == "Una vez" ~ 3,
    hablar_amigos_familia == "Nada" ~ 2,
    hablar_amigos_familia == "No está seguro" ~ 1,
    TRUE ~ NA_real_
  ))

table(base$hablar_amigos_familia, base$hablar_amigos_familia_num, useNA = "ifany")
