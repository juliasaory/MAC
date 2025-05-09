# 1. Leitura dos dados
df_empresasNac <- read.table(
  file = "NumeroEntradaSaidaEmpresasNacionalSetor.csv",
  header = TRUE, sep = ";", dec = ",", fill = TRUE
)

df_empresasReg <- read.table(
  file = "NumeroEntradaSaidaEmpresasRegionalSetor.csv",
  header = TRUE, sep = ";", dec = ",", fill = TRUE
)

df_ocupadosReg <- read.table(
  file = "PessoalOcupadoRegional.csv",
  header = TRUE, sep = ";", dec = ",", fill = TRUE
)

# 2. Função para substituir NA ou "X" por 0
subs_NA_por_zero <- function(coluna) {
  coluna[is.na(coluna) | coluna == "X"] <- 0
  return(as.numeric(coluna))
}

# 3. Aplicar a função de substituição nas colunas numéricas dos data frames
df_empresasNac$Absoluto_Entrada <- subs_NA_por_zero(df_empresasNac$Absoluto_Entrada)
df_empresasNac$Absoluto_Saida <- subs_NA_por_zero(df_empresasNac$Absoluto_Saida)

df_empresasReg$Absoluto_Entrada <- subs_NA_por_zero(df_empresasReg$Absoluto_Entrada)
df_empresasReg$Absoluto_Saida <- subs_NA_por_zero(df_empresasReg$Absoluto_Saida)

df_ocupadosReg$Absoluto_Entrada <- subs_NA_por_zero(df_ocupadosReg$Absoluto_Entrada)
df_ocupadosReg$Absoluto_Saida <- subs_NA_por_zero(df_ocupadosReg$Absoluto_Saida)

# 4. Função para filtrar demitidos dentro de uma faixa
demitidos_regiao_faixa <- function(df, regiao, min, max) {
  df_demitidos <- subset(df, Local == regiao & 
                           Absoluto_Saida >= min & 
                           Absoluto_Saida <= max)
  return(df_demitidos)
}

# 5. Função para somar os demitidos dentro da faixa
soma_demitidos_faixa <- function(df_faixa) {
  return(sum(df_faixa$Absoluto_Saida))
}

# 6. Função para filtrar setores com déficit de empregos (mais demitidos do que contratados)
deficit_empregos_regiao <- function(df, regiao) {
  df_deficit <- subset(df, Local == regiao & Absoluto_Saida > Absoluto_Entrada)
  return(df_deficit)
}

# 7. Função para filtrar setores com superávit de empregos (mais admitidos do que demitidos)
superavit_empregos_regiao <- function(df, regiao) {
  df_superavit <- subset(df, Local == regiao & Absoluto_Entrada > Absoluto_Saida)
  return(df_superavit)
}

# 8. Função para calcular os setores com superávit de empregos em todas as regiões
setores_superavit <- function(df) {
  regioes <- c("Norte", "Nordeste", "CentroOeste", "Sudeste", "Sul")
  setores_comuns <- NULL
  
  for (reg in regioes) {
    sup_regiao <- superavit_empregos_regiao(df, reg)
    setores_reg <- sup_regiao$Atividade
    
    if (is.null(setores_comuns)) {
      setores_comuns <- setores_reg
    } else {
      setores_comuns <- intersect(setores_comuns, setores_reg)
    }
  }
  
  return(setores_comuns)
}

# Exemplo de uso das funções para gerar resultados específicos
# 9. Definir a região e faixa de demitidos para um exemplo
demitidos_Norte_100a200 <- demitidos_regiao_faixa(df_ocupadosReg, "Norte", 100, 200)
print(demitidos_Norte_100a200)

soma_demitidos_Norte_100a200 <- soma_demitidos_faixa(demitidos_Norte_100a200)
cat("Soma dos demitidos na região Norte (100 a 200): ", soma_demitidos_Norte_100a200, "\n")

# 10. Exemplo de uso da função de déficit de empregos na região Sul
deficit_Sul <- deficit_empregos_regiao(df_ocupadosReg, "Sul")
print(deficit_Sul)

# 11. Exemplo de uso da função de superávit de empregos na região Sul
superavit_Sul <- superavit_empregos_regiao(df_ocupadosReg, "Sul")
print(superavit_Sul)

# 12. Exemplo de uso da função para obter setores com superávit no Brasil (todas as regiões)
setores_superavit_brasil <- setores_superavit(df_ocupadosReg)
cat("Setores com superavit de empregos no Brasil: ", setores_superavit_brasil, "\n")
