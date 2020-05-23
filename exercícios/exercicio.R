
# mudar o diretório, more -> set as workdiretory
setwd("C:/repositorios/posdc-estatisticas-de-predicao/exercícios")

#carregar a base de dados
#base de adod municios_sc

pessoas <- read.csv("Exercício Preparatório.csv", header = T, sep = ";", dec = ",")

# sugestão de auto completar
attach(pessoas)


### 1. As medidas de tendência central das variáveis numéricas (mínimo, máximo, 1º Quartil, 3º Quartil, mediana e média)

## |---|---|---|---|
##   X           X   
## avaliar a diferença do minimo para o primeiro quartil e o menos salário
## avaliar a diferença do maximo ao 3 quartil, 

##media e a mediana, estão próximos, porque a diferença do min - 1q e max - 3q são parecidos


mean(pessoas$salario) # media
media(pessoas$salario) #mediana
max(pessoas$salario) #maxima
min(pessoas$salario) #minima
quantile(pessoas$salario, probs = 0.25) #1º quartil
quantile(pessoas$salario, probs = 0.75) #3º quartil

summary(pessoas$salario)
#> summary(pessoas$salario)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#2714    4541    5130    5136    5810    7611 

summary(pessoas$idade)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#22.00   39.00   44.00   44.72   51.00   69.00 

##media e a mediana, estão próximos, porque a diferença do min - 1q e max - 3q são parecidos


summary(pessoas$stress)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#26.00   52.00   61.00   61.92   70.25   94.00 





### 2. As medidas de dispersão das variáveis numéricas (amplitude, desvio-padrão, variância, coeficiente de variação, assimetria e curtose)

library(fBasics)

# amplitude
max(pessoas$salario)- min(pessoas$salario)
max(pessoas$idade)- min(pessoas$idade)
max(pessoas$stress)- min(pessoas$stress)

# > max(pessoas$salario)- min(pessoas$salario)
# [1] 4897
# > max(pessoas$idade)- min(pessoas$idade)
# [1] 47
# > max(pessoas$stress)- min(pessoas$stress)
# [1] 68

#desvio-padrão
# a media dos salários, em relação a media, varia  958.6188, com média de 5135.85

sd(pessoas$salario)
sd(pessoas$idade)
sd(pessoas$stress)

# > sd(pessoas$salario)
# [1] 958.6188
# > sd(pessoas$idade)
# [1] 9.284113
# > sd(pessoas$stress)
# [1] 13.69222



#variância, desvio padrão ao quadrado
var(pessoas$salario)
var(pessoas$idade)
var(pessoas$stress)

#coeficiente de variação, em média os valores variam em %, fazer ver 100
sd(pessoas$salario) / mean(pessoas$salario)
sd(pessoas$idade) / mean(pessoas$idade)
sd(pessoas$stress) / mean(pessoas$stress)

#assimetria 
# Não há programas de Assimetria se: -1 < ass(x) < +1
# Negativo: ass(x) < -1
# Positivo: ass(x) > +1

skewness(pessoas$salario)
skewness(pessoas$salario, method = "fisher")
skewness(pessoas$idade)
skewness(pessoas$stress)


#curtose
# Mesocurtica (Não á problemas se ficar entre): -7< curt(x) < +7
# Laptocurtica se -> curt(x) < -7
# platicurtica se -> curt(x) > +7
kurtosis(pessoas$salario)
kurtosis(pessoas$salario, method = "fisher")
kurtosis(pessoas$idade)
kurtosis(pessoas$stress)



## ---- processor


basicStats(pessoas$salario)



#3. Calcule a média e a mediana do salário para homens e mulheres separadamente.

dsHomens <- subset(pessoas, sexo == 0)
dsMulheres <- subset(pessoas, sexo == 1)

#outra forma
mean(dsHomens$salario)
mean(pessoas$salario[pessoas$sexo == 0])

mean(dsMulheres$salario)
mean(pessoas$salario[pessoas$sexo == 1])


#divide 50% da amostra para mais ou menos
median(dsHomens$salario)
median(pessoas$salario[pessoas$sexo == 0])

median(dsMulheres$salario)
median(pessoas$salario[pessoas$sexo == 1])


#mean(dsMulheres$salario)
#[1] 4875.011
#median(dsMulheres$salario)
#[1] 4863


# 4. Calcule o desvio-padrão e o coeficiente de variação para homens e mulheres separadamente e verifique se existe diferença nas variações.

sd(dsHomens$salario)
sd(dsHomens$salario) / mean(dsHomens$salario)
#> sd(dsHomens$salario)
#[1] 937.9392
#> sd(dsHomens$salario) / mean(dsHomens$salario)
#[1] 0.1753399


sd(dsMulheres$salario)
sd(dsMulheres$salario) / mean(dsMulheres$salario)
#sd(dsMulheres$salario)
#[1] 923.1552
#> sd(dsMulheres$salario) / mean(dsMulheres$salario)
#[1] 0.1893647

#5. Calcule a média e a mediana do salário para casado e solteiros separadamente.
dsCasados <- subset(pessoas, est_civil == 1)
dsSolteiros <- subset(pessoas, est_civil == 0)

mean(dsCasados$salario)
mean(dsSolteiros$salario)
#> mean(dsCasados$salario)
#[1] 5106.255
#> mean(dsSolteiros$salario)
#[1] 5162.094

median(dsCasados$salario)
median(dsSolteiros$salario)
# > median(dsCasados$salario)
# [1] 5118.5
# > median(dsSolteiros$salario)
# [1] 5157

# 6. Calcule a média e a mediana do nível de stress para homens e mulheres separadamente.
mean(dsHomens$stress)
mean(dsMulheres$stress)

# > mean(dsHomens$stress)
# [1] 56.05455
# > mean(dsMulheres$stress)
# [1] 69.1

median(dsHomens$stress)
median(dsMulheres$stress)
# > median(dsHomens$stress)
# [1] 56.5
# > median(dsMulheres$stress)
# [1] 69

# 7. Calcule a média e a mediana do nível de stress para casado e solteiros separadamente.

mean(dsCasados$stress)
mean(dsSolteiros$stress)
# > mean(dsCasados$stress)
# [1] 67.21277
# > mean(dsSolteiros$stress)
# [1] 57.23585

median(dsCasados$stress)
median(dsSolteiros$stress)
# > median(dsCasados$stress)
# [1] 67.5
# > median(dsSolteiros$stress)
# [1] 57.5


# 8. Faça um gráfico de dispersão que compare o nível de stress com o salário do entrevistado.
par(mar = c(6.5, 6.5, 0.5, 0.5), mgp = c(5, 1, 0))
plot(pessoas$salario, pessoas$stress, xlab="Salário", ylab="Stress", main="Salário X Stress")
# adicional
  tend <- lm(pessoas$stress ~ pessoas$salario)
  abline(tend, col="red")
  abline(h=mean(pessoas$stress), col="green")
  abline(v=mean(pessoas$salario), col="green")
  
  # aparece uma tendência, os quadrantes da tendência, estão corretor, os outros estão fora do padrão.

# 9. Faça um gráfico de dispersão que compare o nível de stress com a idade do entrevistado.

  plot(pessoas$idade, pessoas$stress, xlab="Idade", ylab="Stress", main="Idade X Stress")
  # adicional
  tend <- lm(pessoas$stress ~ pessoas$idade)
  abline(tend2, col="red")
  abline(h=mean(pessoas$stress), col="green")
  abline(v=mean(pessoas$idade), col="green")
  


# 10. Faça um gráfico box-plot das variáveis numéricas e verifique se existe a presença de outliers.

boxplot(pessoas$salario ~ pessoas$idade)

boxplot(pessoas$salario ~ pessoas$sexo)
boxplot(pessoas$idade)
boxplot(pessoas$stress)


# 11. Considerando a média e o desvio-padrão para as mulheres, verifique qual a probabilidade de uma melhor receber acima do 3º quartil. E qual as chances de um homem? Assuma a distribuição normal para os dados.

# função para distribuição normal
# dnorm() -> gerar a densidade de provabilidade de p(X=x)
# pnorm() -> gerar a probabilidade de ocorrência de até um valor x, p(X<=x)
# qnorm() -> fornecendo a probalidade acumulada, retoma o valor que gera ela. 0 <= q <= 1
# rnorm() -> gera um evento aleatório de distrbuição normal.

# caso da mulheres

media_mulher <- mean(pessoas$salario[pessoas$sexo == 1]) 
desvPad_mulher <- sd(pessoas$salario[pessoas$sexo == 1]) 
Q3 <- quantile(pessoas$salario, probs = 0.75)

# Probabilidade de uma mulher receber mais que o terceiro quartil
# p(Sal > Q3) = 1 - P(sal<= q3)

1 -pnorm(Q3, mean = media_mulher, sd= desvPad_mulher)
#0.1556381 
#15,56%

# caso da mulheres

media_homen <- mean(pessoas$salario[pessoas$sexo == 0]) 
desvPad_homen <- sd(pessoas$salario[pessoas$sexo == 0]) 
Q3 <- quantile(pessoas$salario, probs = 0.75)

# Probabilidade de uma mulher receber mais que o terceiro quartil
# p(Sal > Q3) = 1 - P(sal<= q3)

1 -pnorm(Q3, mean = media_homen, sd= desvPad_homen)
# 0.311729
# 31,1729 %