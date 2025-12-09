# 📌 Percepción ciudadana y salud mental durante la cuarentena por COVID-19 en Bogotá — APE2

> ⚠️ Estado: **EN DESARROLLO** — Versión académica

Análisis exploratorio y pruebas estadísticas sobre la percepción ciudadana y la salud mental durante la cuarentena por COVID-19 en Bogotá. El repositorio contiene los datos originales (CSV), scripts para la importación y transformación, y los documentos RMarkdown con los análisis (univariado, bivariado, y de hipótesis).

---

## 👥 Autores

- MARIA PAULA BONILLA MARTINEZ → [maria.bmartinez@mail.escuelaing.edu.co](mailto:maria.bmartinez@mail.escuelaing.edu.co)  
- [JUAN SEBASTIÁN GUAYAZÁN CLAVIJO](https://github.com/JuanGuayazanC) → [juan.guayazan-c@mail.escuelaing.edu.co](mailto:juan.guayazan-c@mail.escuelaing.edu.co)  
- JERONIMO ESTEBAN QUILAGUY TORRES → [jeronimo.quilaguy-t@mail.escuelaing.edu.co](mailto:jeronimo.quilaguy-t@mail.escuelaing.edu.co)

Aprendizaje estadístico 2 (MATE APE2-1 LEC (1682))      
Coordinación Ingeniería Estadística     
Ingeniería Estadística     
Escuela Colombiana de Ingeniería Julio Garavito     
2025-2 

## 🧠 Índice

- 🚀 [Características](#-características)  
- ⚙️ [Tecnologías](#️-tecnologías)  
- 📦 [Instalación y Requisitos](#-instalación-y-requisitos)  
- ▶️ [Uso / Flujo de trabajo](#️-uso--flujo-de-trabajo)  
- 🧪 [Pruebas](#-pruebas)  
- 📁 [Estructura del Proyecto](#-estructura-del-proyecto)  
- 📌 [TODOs / Funcionalidades Futuras](#-todos--funcionalidades-futuras)  
- 📄 [Licencia](#-licencia)

---

## 🚀 Características

- Conjunto de scripts reproducibles para importar, limpiar y transformar los datos.
- Documentos RMarkdown con análisis de hipótesis, análisis univariado y bivariado.
- Base de datos original incluida (CSV) para reproducibilidad.
- Salidas ya generadas en HTML para revisión rápida.

---

## ⚙️ Tecnologías

- Lenguaje principal: R (R scripts y RMarkdown)
- Documentos: RMarkdown (.Rmd) y salidas HTML
- Paquetes habituales (sugeridos): tidyverse (readr, dplyr, ggplot2), rmarkdown, knitr, janitor, broom, psych

---

## 📦 Instalación y Requisitos

### Requisitos
- R >= 4.0.0
- Recomendada: RStudio
- Paquetes R: tidyverse, rmarkdown, knitr, janitor, broom, psych

Instala paquetes (si aún no los tienes):
```r
install.packages(c("tidyverse","rmarkdown","knitr","janitor","broom","psych"))
```

### Clonar el repositorio
```bash
git clone https://github.com/JuanGuayazanC/Percepcion-ciudadana-y-salud-mental-durante-la-cuarentena-por-COVID-19-en-Bogota-APE2.git
cd Percepcion-ciudadana-y-salud-mental-durante-la-cuarentena-por-COVID-19-en-Bogota-APE2
```

Abrir el proyecto en RStudio usando el archivo `Proyecto-APE2.Rproj` facilita el trabajo con rutas relativas.

---

## ▶️ Uso / Flujo de trabajo

1. Abrir el proyecto en RStudio.
2. Ejecutar los scripts en el siguiente orden para reproducir la limpieza y transformación de datos:
   - `Importacion_BaseDatos.r` — carga inicial de la base CSV.
   - `Renombramiento.R` — renombra variables para facilitar el análisis.
   - `transformacionDatos.r` — transformaciones adicionales (factor, recodificaciones).
   - `MargerDeError.R` — cálculo del margen de error (si aplica para submuestras).
3. Renderizar los documentos RMarkdown para generar los reportes finales:
```r
rmarkdown::render("hipotesis.Rmd")
rmarkdown::render("AnálisisUnivariado.Rmd")
rmarkdown::render("AnálisisBivariado.Rmd")
```
4. Los archivos HTML resultantes (`hipotesis.html`, `AnálisisUnivariado.html`, `AnálisisBivariado.html`) ya están incluidos en el repo para revisión rápida.

Nota: la base de datos principal es `base_saludmental.csv` (~4.8 MB) y está en la raíz del repositorio.

---

## 🧪 Pruebas

No hay pruebas unitarias automatizadas para este proyecto. Para validar resultados manualmente:
- Verificar que `Importacion_BaseDatos.r` carga todas las filas esperadas.
- Revisar los resúmenes (summary) en los RMarkdown y comparar con las tablas en los HTML generados.
- Revisar que las transformaciones en `Renombramiento.R` mantengan la integridad de los datos.

---

## 📁 Estructura del Proyecto

```bash
📦 Percepcion-ciudadana-y-salud-mental-durante-la-cuarentena-por-COVID-19-en-Bogota-APE2
 ┣ 📜 .gitignore
 ┣ 📜 LICENSE
 ┣ 📜 Proyecto-APE2.Rproj
 ┣ 📜 base_saludmental.csv
 ┣ 📜 Importacion_BaseDatos.r
 ┣ 📜 Renombramiento.R
 ┣ 📜 transformacionDatos.r
 ┣ 📜 MargerDeError.R
 ┣ 📜 AnálisisUnivariado.Rmd
 ┣ 📜 AnálisisUnivariado.html
 ┣ 📜 AnálisisBivariado.Rmd
 ┣ 📜 AnálisisBivariado.html
 ┣ 📜 hipotesis.Rmd
 ┗ 📜 hipotesis.html
```

---

## 📌 TODOs / Funcionalidades Futuras

* [ ] Añadir un script central de "pipeline" (Makefile o targets de R) para ejecutar todo automáticamente.
* [ ] Añadir un notebook con visualizaciones interactivas (shiny o plotly).
* [ ] Documentar variables de la base (data dictionary).
* [ ] Agregar validaciones y pruebas de calidad de datos.

---

## 📄 Licencia

Este proyecto está licenciado para propósitos académicos y educativos. Consulta el archivo [LICENSE](./LICENSE) para más detalles.

