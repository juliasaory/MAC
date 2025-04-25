# script aula 2

# preâmbulo - incluir elementos predefinidos que 
#             serão usados no programa

# funções: trechos de programas com parâmetros
imprime_valor <- function(x) {
  print(x)
}

# dados, por exemplo:
a <- 33     # variárel a guarda o valor
b <- a + 22 # variável b usa valor de a
tabela <- read.csv("dados_exemplo.csv") # dados lidos

# sequência de comandos: transforma dados
if (a > 5) {
  print("a é maior que 5")
}
imprime_valor(tabela)

# funções: trechos de programas com parâmetros
#imprime_valor <- function(x) {
#  print(x)
#}

# testes dos tipos


# inteiros
i <- 20
print(typeof(i))        # typeof(..) dá o tipo do valor

j <- 20L
print(typeof(j))


# ponto flutuante
r <- 20.23
print(typeof(r))



# caracteres e strings

c1 <- 'a'
print(typeof(c1))

c2 <- "b"
print(typeof(c2))

palavra <- "sim"
print(typeof(palavra))

frase <- "assistindo à aula de MAC0113"
print(typeof(frase))

# valores lógicos

l1 <- TRUE
l2 <- FALSE
print(typeof(l1))
print(as.numeric(l1))    # valor numérico de l1
print(as.numeric(l2))
print(typeof(l1))        # veja que l1 permanece lógico

#leitura do teclado

n <- readline(prompt = 
                " Digite um número inteiro (e tecle enter): ")
n <- as.integer(n)
print(n)
print(typeof(n))

m <- as.integer(readline(
  "Digite um número inteiro (e tecle enter): "))
print(m)
print(typeof(m))

cat("Imprimindo valor de m:", m, "\n",
    "e seu tipo:", typeof(m), "\n")

# leitura de planilhas csv

dados <- read.csv("dados_exemplo.csv", 
                  header = TRUE, 
                  sep = ",")
print(dados)

# grava planilha

write.csv(dados, "nova.plan.csv")
temp <- read.csv("nova.plan.csv")
print(temp)

write.csv(dados, "nova.plan2.csv", row.names=FALSE)
temp <- read.csv("nova.plan2.csv")
print(temp)

