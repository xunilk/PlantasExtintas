Trabajo con Plantas extintas
================

# Introducción

En este documento trabajaremos para explorar la identidad de plantas que
se encuentran extintas en silvestría o totalmente extintas según la
[*IUCN*](https://www.iucnredlist.org/).

## Trabajando con los datos

Vamos a partir por cargar los paquetes necesarios para trabajar

``` r
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.2 ──
    ## ✔ ggplot2 3.4.0      ✔ purrr   1.0.1 
    ## ✔ tibble  3.1.8      ✔ dplyr   1.0.10
    ## ✔ tidyr   1.2.1      ✔ stringr 1.5.0 
    ## ✔ readr   2.1.3      ✔ forcats 0.5.2 
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

Ahora voy a leer los datos con los que voy a trabajar:

``` r
plants <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/plants.csv")
```

    ## Rows: 500 Columns: 24
    ## ── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (6): binomial_name, country, continent, group, year_last_seen, red_list...
    ## dbl (18): threat_AA, threat_BRU, threat_RCD, threat_ISGD, threat_EPM, threat...
    ## 
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

## Filtrando los datos para resolver el ejemplo 1

El código que voy a ejecutar ahora, es para resolver el problema en el
siguiente
[slide](https://derek-corcoran-barrios.github.io/CursoProgrPres/Clase2/Clase2InvestigacionReproducible.html#29),
para poner dentro de la base de datos, solo los datos de Chile y solo
usar las columnas para país (**country**), la especie(“binomial\_name”)
y la categoría de IUCN (**red\_list\_category**)

``` r
Chile<- plants %>% 
  dplyr::filter(country == 'Chile') %>% 
  dplyr::select(binomial_name, country, red_list_category)

Chile
```

    ## # A tibble: 2 × 3
    ##   binomial_name           country red_list_category  
    ##   <chr>                   <chr>   <chr>              
    ## 1 Santalum fernandezianum Chile   Extinct            
    ## 2 Sophora toromiro        Chile   Extinct in the Wild
