# Pacotes
library(palmerpenguins)
library(tidyverse)

# glimpse
glimpse(penguins)

# verbos básicos

mutate_simples <- mutate(penguins,
                         tamanho_nadadeira=
                            if_else(flipper_length_mm > 200, "longa", "curta"))

# Inserindo o operador pipe

nadadeira <- penguins |>
      ### nova variável com base em condição
      mutate(tamanho_nadadeira=
               if_else(flipper_length_mm >200, "longa", "curta")) |> 
      ### filtramos para amostras que são NA
      filter(!is.na(tamanho_nadadeira)) |>
      ### calculamos mediante DP para grupos
      summarise(media_bico = mean(bill_length_mm),
                desv_pad_bico= sd(bill_length_mm),
                .by = tamanho_nadadeira)

# Path - onde estamos trabalhando
getwd()
setwd()

# vamos ler um arquivo simples
bivariate_norm <- read.csv("bivariate.csv")

head(bivariate_norm)


data
imagens
docs


