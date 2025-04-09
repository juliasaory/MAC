# script - aula pática - data-frames

# 1. 
# lê e imprime a planilha
dadosalunos <- read.csv(file = "alunosnotas.csv", 
                         ... Complete ...)  # lê a planilha com cabeçalho
print(dadosalunos)

# confere se a variável é um data-frame


# 2.
# executar para ver os valores resultado

a <- 18.7
b <- 4.8
a > b
a <= 20
(a + 20)/b >= 10
(a + 10)/b > ((2*a + 20) * (1/(2*b)))

# 3.
# relacionais sobre vetores

v1 <- seq(1,16, by=.8)
v2 <- seq(1,16, length.out = 19)
print(v1)
print(v2)
v1 > 5
(v1 + 0.3) >= v2

# relacionais com subset()
subset(v1, v1 > 5)
subset(v1, (v1 + 0.3) >= v2 )
subset(v2, (v1 + 0.3) >= v2 )

4.
# elaborar subconjuntos de vetores
print(dadosalunos$P1)
print(dadosalunos$P2)

#a. elabore a expressão lógica que compara se a nota da P1 é maior que a nota da P2:
dadosalunos$P1 > dadosalunos$P2

#b. selecione o subconjunto de notas da P1 que foram maiores que as notas da P2:


#c. elabore a expressão lógica que compara se a nota da Sub é menor que as notas da P2 ou da P1:

#d. selecione o subconjunto de notas Sub que são menores que as notas da P2 ou da P1:

#e. elabore a expressão lógica que compara se a nota da Sub é maior ou igual às notas da P2 e da P1:

#f. selecione o subconjunto de notas Sub que são maiores que as notas da P2 e da P1:subset(dadosalunos$Sub, (dadosalunos$Sub >= dadosalunos$P1) & (dadosalunos$Sub >= dadosalunos$P2))

#5.
# subconjuntos de dadosalunos

#  a. as notas da P1 são maiores que as notas da P2:

#  b. as notas da Sub são menores que as notas da P2 ou da P1:

#  c. as notas da Sub são maiores que as notas da P2 e da P1:

#  d. contém apenas os alunos _c("Marcos", "Rafael", "Maria", "Denis")_

#  e. em quais linhas do data-frame _dadosalunos_ as notas da P1 são menores que 5?

#6.
# novos data-frames

#a. _alunos_com_sub_: contém info apenas dos alunos que fizeram a Sub
alunos_com_sub <- ... Complete ...
print(alunos_com_sub)

#b. _alunos_sem_sub_: contém info apenas dos alunos que NÃO fizeram a Sub
alunos_sem_sub <- ... Complete ...
print(alunos_sem_sub)

#c. _alunos_sub_maior5_: contém info apenas dos alunos que na Sub obtiveram nota maior que 5
alunos_sub_maior5 <- ... Complete ...
print(alunos_sub_maior5)

#d. _alunos_p1_p2_: contém info apenas dos alunos que fizeram a P1 e a P2 (podem ter feito a Sub ou não)
alunos_p1_p2 <- ... Complete ...
print(alunos_p1_p2)

#e. _alunos_p2_sub_: contém info apenas dos alunos que fizeram exclusivamente a P2 e a Sub (não fizeram a P1)
alunos_p2_sub <- ... Complete ...
print(alunos_p2_sub)

#f. _alunos_p1_p2_sub_: contém info apenas dos alunos que fizeram as 3 provas
alunos_p1_p2_sub <- ... Complete ...
print(alunos_p1_p2_sub)

#7.

#Mostre os dados sobre as 3 provas (P1, P2, Sub) de forma gráfica, 
#utilizando as funções: _plot()_, _barplot()_ e _hist()_

# P1


# P2


# Sub
