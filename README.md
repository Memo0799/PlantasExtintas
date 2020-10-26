Trabajo con Plantas Extintas
================

# Introducción

En este documento se trabajará para explorar la identidad de plantas que
se encuentran extintas en silvestria o totalmente extintas segun la
[*IUCN*](https://www.iucnredlist.org).

## Trabajando con los datos.

Vamos a partir por cargar los paquetes necesarios para trabajar.

``` r
library(tidyverse)
```

    ## Warning: package 'tidyverse' was built under R version 4.0.3

    ## -- Attaching packages ---------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.2     v purrr   0.3.4
    ## v tibble  3.0.3     v dplyr   1.0.2
    ## v tidyr   1.1.2     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.5.0

    ## -- Conflicts ------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

Ahora voy a leer los datos con los que voy a trabajar:

``` r
plants <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/plants.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   binomial_name = col_character(),
    ##   country = col_character(),
    ##   continent = col_character(),
    ##   group = col_character(),
    ##   year_last_seen = col_character(),
    ##   red_list_category = col_character()
    ## )

    ## See spec(...) for full column specifications.

## Filtrando los datos para resolver el ejemplo 1

El código que se ejecutará a continuación, es para resolver el problema
en el siguiente
[slide](https://derek-corcoran-barrios.github.io/CursoProgrPres/Clase2/Clase2InvestigacionReproducible.html#29),
para poner dentro de la base de datos, solo los datos de Chile, y solo
usando las columnas para pais (*country*) la especie (*binomial\_name*)
y la categoria IUCN (*red\_list\_category*).

``` r
Chile <- plants %>% 
  dplyr::filter(country == "Chile") %>% 
  dplyr::select(binomial_name, country, red_list_category)
```
