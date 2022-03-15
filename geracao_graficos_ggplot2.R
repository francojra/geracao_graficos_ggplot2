
# Geração de gráficos com o ggplot2 --------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 14/03/2022 -------------------------------------------------------------------------------------------------------------------------
# Fonte: Página do Instagram R Descomplicado -----------------------------------------------------------------------------------------------

# Introdução -------------------------------------------------------------------------------------------------------------------------------

## O ggplot2 é um sistema/pacote para criar gráficos declarativamente, baseado na 'The
## Grammar of Graphics'.

install.packages('ggplot2') # Para instalar o pacote
library(ggplot2) # Para carregar o pacote

## Você fornece os dados, informa ao ggplot2 como mapear as variáveis para estética,
## quais gráficos primitivos usar e ele cuida dos detalhes.

# Primeiro passo ---------------------------------------------------------------------------------------------------------------------------

ggplot(data = diamonds,
       aes(x = carat, y = price))

## 1. Declarando a base de dados 'diamonds';
## 2. Eixo x receberá a variável 'carat';
## 3. Eixo y receberá a variável 'price'.

# Adicionando camadas ----------------------------------------------------------------------------------------------------------------------

ggplot(data = diamonds,
       aes(x = carat, y = price)) +
  geom_point()

## Adiciona camada com o gráfico de pontos, o famoso gráfico de dispersão.

# Variável de preenchimento ----------------------------------------------------------------------------------------------------------------

## Método 1:

ggplot(data = diamonds,
       aes(x = carat, y = price)) +
  geom_point(aes(color = cut))

## Método 2:

ggplot(data = diamonds,
       aes(x = carat, y = price, color = cut)) +
  geom_point()

## Adiciona a cor de cada ponto de acordo com a variável 'cut'.

# Customizando rótulos ---------------------------------------------------------------------------------------------------------------------

ggplot(data = diamonds,
       aes(x = carat, y = price, color = cut)) +
  geom_point() +
  labs(title = "Gráfico de Dispersão",
       x = "Característica", y = "Preço")

## Ajusta os títulos dos eixos e do gráfico.
