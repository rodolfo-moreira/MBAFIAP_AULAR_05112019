
df <- BrFlights2
head(df)
summary(df)

# Colunas que podem ser transformadas em fatores
# Código.Tipo.Linha | Situacao.Voo | Aeroporto Origem | Aeroporto Destino

df$Codigo.Tipo.Linha
df$Codigo.Tipo.Linha <- factor(df$Codigo.Tipo.Linha)
df$Codigo.Tipo.Linha

df$Situacao.Voo
df$Situacao.Voo <- factor(df$Situacao.Voo)
df$Situacao.Voo

df$Aeroporto.Origem
df$Aeroporto.Origem <- factor(df$Aeroporto.Origem)
df$Aeroporto.Origem

df$Aeroporto.Destino
df$Aeroporto.Destino <- factor(df$Aeroporto.Destino)
df$Aeroporto.Destino

library(lubridate)

# Criar uma coluna com atraso de partida
atraso_partida_interval <- interval(df$Partida.Prevista, df$Partida.Real)
atraso_partida_periodo <- as.period(atraso_partida_interval)
df$atraso_partida <- atraso_partida_periodo
df$atraso_partida

# Criar uma coluna com atraso de partida
atraso_chegada_interval <- interval(df$Chegada.Prevista, df$Chegada.Real)
atraso_chegada_periodo <- as.period(atraso_chegada_interval)
df$atraso_chegada <- atraso_chegada_periodo
df$atraso_chegada

#Criar uma coluna com a distância Euclidiana entre a Origiem e o Destino
euclidiana_origiem_destino <- array(1:2, dim = c(df$))

