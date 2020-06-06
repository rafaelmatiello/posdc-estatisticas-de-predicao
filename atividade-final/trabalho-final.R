#------------------------------------------------
#     Trabalho Final
#------------------------------------------------

# mudar o diretório, more -> set as workdiretory
setwd("C:/repositorios/posdc-estatisticas-de-predicao/atividade-final")

#carregar a base de dados
pessoas <- read.csv("Dados.csv", header = T, sep = ";", dec = ",")

attach(pessoas)

library(fBasics)


#Questão 1 (1,50) - Calcule as medidas de posição (Média, Mediana, Máximo, Mínimo, 1º Quartil e 3º quartil) 
#para as variáveis “salario”, “instrucao", “experiência" e “idade”. 
#Apresente os cálculos e faça uma interpretação dos resultados.

summary(pessoas$salario)
# Min.    1st Qu.     Median    Mean      3rd Qu.     Max. 
# 0.84      6.92      10.08     12.37     15.63     64.08 

summary(pessoas$instrucao)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.00   12.00   12.00   13.15   16.00   20.00 

summary(pessoas$experiencia)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.00    9.00   18.00   18.79   27.00   56.00 

summary(pessoas$idade)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 18.00   29.00   37.00   37.93   47.00   65.00 


# Questão 2 (1,50) – Calcule as medidas de dispersão (Amplitude, Desvio-Padrão, Variância, Coeficiente de Variação, Assimetria e Curtose) 
# para as variáveis “salario”, “instrucao", “experiência" e “idade”. Responda o que segue:
  # a. Com relação ao Coeficiente de Variação, qual é a variável que possui maior discrepância em seus valores? 
  # E a com menor discrepância?
 
  sd(pessoas$salario) / mean(pessoas$salario)
  sd(pessoas$instrucao) / mean(pessoas$instrucao)
  sd(pessoas$experiencia) / mean(pessoas$experiencia)
  sd(pessoas$idade) / mean(pessoas$idade)
  
  # >  sd(pessoas$salario) / mean(pessoas$salario)
  # [1] 0.6385611
  # >   sd(pessoas$instrucao) / mean(pessoas$instrucao)
  # [1] 0.2140592
  # >   sd(pessoas$experiencia) / mean(pessoas$experiencia)
  # [1] 0.6207018
  # >   sd(pessoas$idade) / mean(pessoas$idade)
  # [1] 0.3030006


  # R: A Variável com maior coefiênte de variáção é salários com 63,85% e a menor é Instrução com 21.40$
  
  
  # b. Qual deve ser a interpretação dada ao Coeficiente de Variação?
  # R: o coefiênte de variação compara os dados em relação a média, quanto maior o número, menos dados estão proximos a média, quando
  #  menos o valormais dados estão próximas da média. Olhando os dado e considerando as idade, é possível ver que tem bastante diversidade de
  # de informação, e os dados de idade geram um curva mais achatada com dados mais espaçados. Já se olhar o salário, é possível ver os dados
  # então próximas da média.
  

  # c. Considerando que as medidas de Assimetria e Curtose qualificam a média como boa medida de tendência central, 
  # existe alguma das variáveis que possua problemas de assimetria e/ou curtose? Justifique.
  
  skewness(pessoas$salario)
  kurtosis(pessoas$salario)
  
  skewness(pessoas$instrucao)
  kurtosis(pessoas$instrucao)
  
  skewness(pessoas$experiencia)
  kurtosis(pessoas$experiencia)
  
  skewness(pessoas$idade)
  kurtosis(pessoas$idade)
  
  # > skewness(pessoas$salario)
  # [1] 1.845964
  # attr(,"method")
  # [1] "moment"
  # >   kurtosis(pessoas$salario)
  # [1] 4.824411
  # attr(,"method")
  # [1] "excess"
  # >   
  #   >   skewness(pessoas$instrucao)
  # [1] -0.2900436
  # attr(,"method")
  # [1] "moment"
  # >   kurtosis(pessoas$instrucao)
  # [1] 2.968193
  # attr(,"method")
  # [1] "excess"
  # >   
  #   >   skewness(pessoas$experiencia)
  # [1] 0.3752323
  # attr(,"method")
  # [1] "moment"
  # >   kurtosis(pessoas$experiencia)
  # [1] -0.675665
  # attr(,"method")
  # [1] "excess"
  # >   
  #   >   skewness(pessoas$idade)
  # [1] 0.2692705
  # attr(,"method")
  # [1] "moment"
  # >   kurtosis(pessoas$idade)
  # [1] -0.772023
  # attr(,"method")
  # [1] "excess"
  
  
  # R: Salário tem problema de Assimetria, pois o valor não está entre -1 e 1, salários tem uma assimetria positiva. As outras variáveis estão assimetricas.
  # A curtose informa sobre a forma da curva dos dados, nenhum variável tem problema de curtose pois a meste deve estar entre -7 e 7. O que se pode observar que
  # possivelmente o salário tem um curva central mais elevada, mais contração de informação perto da media.
  
  
  # Questão 3 (1,50) – Considere uma análise que possa ser realizada sobre a variável salario. 
  # Faça os procedimentos destacados a seguir:
  dsMulheres <- subset(pessoas, sexo == 1)
  dsHomens <- subset(pessoas, sexo == 0)
  
  dsNaoBranca <- subset(pessoas, cor == 1)
  dsBranca <- subset(pessoas, cor == 0)
  
  #   a. Calcule a média e a mediana do “salario” para mulheres e homens separadamente. 
  # Qual é a tendência apresentada para média e para mediana?
  
  mean(dsMulheres$salario)
  median(dsMulheres$salario)
  # >  mean(dsMulheres$salario)
  # [1] 10.59367
  # >   median(dsMulheres$salario)
  # [1] 8.89
  
  mean(dsHomens$salario)
  median(dsHomens$salario)
  # >  mean(dsHomens$salario)
  # [1] 14.11889
  # >   median(dsHomens$salario)
  # [1] 12
  
  
  # R: a média salarial das mulher é de 10,59, a mediana que divide a amostra esta em 8,89 
  #  a média salarial das homens é de 14,11, a mediana que divide a amostra esta em 12, 
  #   Consideran as duas informações, mediana não esta proxima a media, isso que diser que 
  #   tem uma tendencia dos dados se localizarem mais na parte direita do gráfico.
  # a relação entre homens e mulher é que homens ganham mais que mulheres
  
  #   b. Calcule a média do “salario” para brancos e não brancos. Qual é a tendência apresentada para média e para mediana?
  
  mean(dsNaoBranca$salario)
  median(dsNaoBranca$salario)
  
  # > mean(dsNaoBranca$salario)
  # [1] 9.990203
  # >   median(dsNaoBranca$salario)
  # [1] 8
  
  mean(dsBranca$salario)
  median(dsBranca$salario)
  
  # > mean(dsBranca$salario)
  # [1] 12.79442
  # >   median(dsBranca$salario)
  # [1] 11
  
  # R: a Meia e a mediana de brancos e não brancos são bem próximas, o que quer dizer que se considerar 
  # esta classificação os dados estão bem agrupados e proximos a média,
  # Brancos ganham em média 21% mais que os Não brancos.
  # Considerando as informações de salários brancos e não brancos, esta classificação gera uma tendência salarias mais bem definidas que homens X mulheres.

  
  
  # Questão 4 (1,00) – Faça um gráfico Box-Plot para as variáveis salario, instrucao, 
  # experiencia e idade e identifique se existem outliers. Quantas observações deveriam ser
  # excluídas em cada variável por serem prováveis outliers?
  
  boxplot(pessoas$salario)
  
  q1 <- unname(quantile(pessoas$salario, probs = 0.25)) #1º quartil
  q1 <- q1[[1]]
  
  q3 <- quantile(pessoas$salario, probs = 0.75) #3º quartil
  q3 <- q3[[1]]
  possivelOutleir <-  q3 + 1.5 *(q3-q1)
  provavelOutleir <-  q3 + 3.0 *(q3-q1)
  
  # > possivelOutleir
  # [1] 28.695
  # > provavelOutleir
  # [1] 41.76
  
  # R: os valores maiores que 28 até 41 são possíveis outlaier, os acima de 41 são prováveis outlaier, no gráfico ´s possível ver que existem vários outlaier
  
  boxplot(pessoas$instrucao)
  q1 <- unname(quantile(pessoas$instrucao, probs = 0.25)) #1º quartil
  q1 <- q1[[1]]
  
  q3 <- quantile(pessoas$instrucao, probs = 0.75) #3º quartil
  q3 <- q3[[1]]
  possivelOutleir <-  q1 - 1.5 *(q3-q1)
  provavelOutleir <-  q1 - 3.0 *(q3-q1)
  possivelOutleir
  provavelOutleir
  
  # >   possivelOutleir
  # [1] 6
  # >   provavelOutleir
  # [1] 0
  
  # R: Neste gráfico existem outlier na parte inferior do gráficos, números entre 0 e 6 são possíveis outlier e
  #  menor que 0 são provaveis, não existe provaveis mas varios possíveis.
  
  
  # >   possivelOutleir
  # [1] 22
  # >   provavelOutleir
  # [1] 28
  
  boxplot(pessoas$experiencia)
  
  q1 <- unname(quantile(pessoas$experiencia, probs = 0.25)) #1º quartil
  q1 <- q1[[1]]
  
  q3 <- quantile(pessoas$experiencia, probs = 0.75) #3º quartil
  q3 <- q3[[1]]
  possivelOutleir <-  q3 + 1.5 *(q3-q1)
  provavelOutleir <-  q3 + 3.0 *(q3-q1)
  possivelOutleir
  provavelOutleir
  
  # >   possivelOutleir
  # [1] 54
  # >   provavelOutleir
  # [1] 81
  
  # R: é possível identificar possível outlier, que ficam entre 54 e 81,e provaveis acima de 81 não são apresentados
  
  boxplot(pessoas$idade)
  
  # R: O gráfico de idade não apresenta outlier
  
  
  
  
#   Questão 5 (2,00) – Considerando os gráficos de dispersão, construa-os conforme pedido a seguir:
#     a. Faça um gráfico que relacione o “salario” com o tempo de “instrucao”. Analise uma eventual tendência dos dados.
  
        
        plot(pessoas$salario, pessoas$instrucao, xlab="Salário", ylab="Instrução", main="Salário X Instrução")
        
        tend <- lm(pessoas$salario ~ pessoas$instrucao)
        abline(tend, col="red")
        abline(h=mean(pessoas$salario), col="green")
        abline(v=mean(pessoas$instrucao), col="green")
        
        
        # A tendência é quanto maior o nível de instrução maior o salário
  
#     b. Faça um gráfico que relacione o “salario” com o tempo de “experiência". Analise uma eventual tendência dos dados.
        plot(pessoas$salario, pessoas$experiencia, xlab="Salário", ylab="Experiência", main="Salário X Experiência")
        
        tend <- lm( pessoas$experiencia ~ pessoas$salario)
        abline(tend, col="red")
        abline(h=mean(pessoas$salario), col="green")
        abline(v=mean(pessoas$experiencia), col="green")
        
        
        # A tendencia que mais instrução maior o salário, mas existe muito gente com bastante instrução e pouco sário.
        
#     c. Faça um gráfico que relacione o “salario” com a “idade”. Analise uma eventual tendência dos dados.
        
        plot(pessoas$salario, pessoas$idade, xlab="Salário", ylab="Idade", main="Salário X Idade")
        
        tend <- lm(  pessoas$idade ~ pessoas$salario)
        abline(tend, col="red")
        abline(h=mean(pessoas$salario), col="green")
        abline(v=mean(pessoas$idade), col="green")
        
        # R: o Gráfico mostra que quando maior o salário maior e a idade.
        
#     d. Faça um gráfico que relacione a “experiencia" com o tempo de “instrucao". Analise uma eventual tendência dos dados.
        
        plot(pessoas$experiencia, pessoas$instrucao, xlab="experiencia", ylab="instrucao", main="experiencia X instrucao")
        
        tend <- lm(  pessoas$instrucao ~ pessoas$experiencia)
        abline(tend, col="red")
        abline(h=mean(pessoas$instrucao), col="green")
        abline(v=mean(pessoas$experiencia), col="green")
  
        # R: O gráfico mostra que quando maior a experiência, menor a instrução
        
        
# Questão 6 (1,00) – Considerando as variáveis estritamente quantitativas. Construa um Histograma e 
# identifique a variável com melhor ajuste percebido para a distribuição normal de probabilidade.
        
        
        hist(pessoas$salario,  breaks=10, xlab="Salário", ylab="")
        hist(pessoas$instrucao,  breaks=7, xlab="Instrução", ylab="")
        hist(pessoas$experiencia,  breaks=10, xlab="Experiência", ylab="")
        hist(pessoas$idade,  breaks=6, xlab="Idade", ylab="")

        
# Questão 7 (1,50) – Considere que a variável “salario” segue uma distribuição normal de probabilidade. A média e o desvio-padrão já foram calculados. Assim determine o que se pede:
#   a. Qual a probabilidade estimada de uma pessoa ganhar mais do que o 3º quartil?
        
        media <- mean(pessoas$salario) 
        desvPad <- sd(pessoas$salario) 
        Q3 <- quantile(pessoas$salario, probs = 0.75)
        1 - pnorm(Q3, mean = media, sd= desvPad)
        # 75% 
        # 0.3396661 
        
               
#   b. Qual a probabilidade estimada de uma pessoa ganhar menos do que o 1º quartil?
        media <- mean(pessoas$salario) 
        desvPad <- sd(pessoas$salario) 
        Q1 <- quantile(pessoas$salario, probs = 0.25)
        1 - pnorm(Q1, mean = media, sd= desvPad)
        # 25% 
        # 0.7547981 
        
#   c. O que é mais provável, considerando a probabilidade estimada, a pessoa ganhar 
# menos do que a média ou a pessoa ganhar menos do que a mediana?
        
        media <- mean(pessoas$salario) 
        mediana <- median(pessoas$salario) 
        desvPad <- sd(pessoas$salario) 
        Q2 <- quantile(pessoas$salario, probs = 0.5)
        1 - pnorm(Q2, mean = media, sd= desvPad)
        # 50% 
        # 0.6138936 