#_______________________________________________________________________________
#         Resolução do Exercício Preparatório para a Avaliação Final
#_______________________________________________________________________________

# Mudando o diretório de trabalho
setwd("C:/Users/Usuario/OneDrive - FURB/FURB - Especializações/Data Science/Técnicas Estatísticas")

# Carregar o Banco de Dados
exercicio <- read.csv("Exercício Preparatório.csv", header = T, sep = ";", dec = ",")

# Questão 1
 # Mínimo -> min()
 # Máximo -> max()
 # 1º Quartil -> quantile(X, prob =0.25)
 # 3º Quartil -> quantile(X, prob =0.25)
 # Mediana -> median()
 # Média -> mean()

  # Para todas as medidas
  summary(exercicio$salario)
  summary(exercicio$idade)
  summary(exercicio$stress)
  
# Questão 2
  # Algumas medidas podem ser obtidas pelo Pacote fBasics
  # Amplitude
    # Salário
      max(exercicio$salario)-min(exercicio$salario)
    # Idade
      max(exercicio$idade)-min(exercicio$idade)
    # Stress
      max(exercicio$stress)-min(exercicio$stress)
  # Desvio-Padrão
      # Salário
      sd(exercicio$salario)
      # Idade
      sd(exercicio$idade)
      # Stress
      sd(exercicio$stress)
   # Variância
      # Salário
      var(exercicio$salario)
      # Idade
      var(exercicio$idade)
      # Stress
      var(exercicio$stress)
    # Coeficiente de Variação
      # Salário
      sd(exercicio$salario)/mean(exercicio$salario)
      # Idade
      sd(exercicio$idade)/mean(exercicio$idade)
      # Stress
      sd(exercicio$stress)/mean(exercicio$stress)     

  # Assimetria e Curtose
      # Utilizar o pacote fBasics
      library(fBasics)
    # Assimetria
        # Intervalo Crítico -1 < Ass(X) < +1 - Não há problema de Assimetria
        # Se Ass(X) < -1 - Problemas com Assimetria Negativa
        # Se Ass(X) > +1 - Problemas com Assimetria Positiva
      # Salário
      skewness(exercicio$salario)
      # Idade
      skewness(exercicio$idade)
      # Stress
      skewness(exercicio$stress)
    # Curtose
        # Intervalo Crítico -7 < Curt(x) < +7 - Não há problema de Curtose
        # se Curt(X) < -7 - Problemas com Distribuição Leptocurtica
        # se Curt(X) > +7 - Problemas com Distribuilão Platicurtica
      # Salário
      kurtosis(exercicio$salario, method = "moment")
      # Idade
      kurtosis(exercicio$idade, method = "moment")
      # Stress
      kurtosis(exercicio$stress, method = "moment")      

# Questão 3
      # usando a função summary
        # Média e Mediana para Mulheres
      summary(exercicio$salario[exercicio$sexo == 1])
        # Média e Mediana para Homens
      summary(exercicio$salario[exercicio$sexo == 0])

# Questão 4
    # Desvio-Padrão
      # Salário
        # Mulheres
      sd(exercicio$salario[exercicio$sexo == 1])
        # Homens
      sd(exercicio$salario[exercicio$sexo == 0])
      
      
      # Coeficiente de Variação
      # Salário
        # Mulheres
      sd(exercicio$salario[exercicio$sexo == 1])/mean(exercicio$salario[exercicio$sexo == 1])
        # Homens
      sd(exercicio$salario[exercicio$sexo == 0])/mean(exercicio$salario[exercicio$sexo == 0])

# Questão 5
      # Usando a função summary
        #Casados
      summary(exercicio$salario[exercicio$est_civil==1])
        #Solteiros
      summary(exercicio$salario[exercicio$est_civil==0])

# Questão 6
      # usando a função summary
      # Média e Mediana para Mulheres
      summary(exercicio$stress[exercicio$sexo == 1])
      # Média e Mediana para Homens
      summary(exercicio$stress[exercicio$sexo == 0])
      
# Questão 7
      # usando a função summary
      # Média e Mediana para Casados
      summary(exercicio$stress[exercicio$est_civil == 1])
      # Média e Mediana para Solteiros
      summary(exercicio$stress[exercicio$est_civil == 0])

#Questão 8
      # Comparação entre Stress e Salário
      plot(exercicio$salario, exercicio$stress, main = "Salário X Stress", xlab="Salário", ylab="Stress")
      
#Questão 9
      # Comparação entre Stress e Idade
      plot(exercicio$idade, exercicio$stress, main = "Idade X Stress", xlab="Idade", ylab="Stress")
   
# Questão 10
      # Boxplot
      boxplot(exercicio$salario)
      boxplot(exercicio$idade)
      boxplot(exercicio$stress)
      
      # Boxplot por Sexo
      boxplot(exercicio$salario ~ exercicio$sexo)
      boxplot(exercicio$idade ~ exercicio$sexo)
      boxplot(exercicio$stress ~ exercicio$sexo)
 
# Questão 11
      # Qual a probabilidade de uma Mulher receber acima do 3º Quartil
      # pnorm (retoma a probabilidade), qnorm (retorma um valor, normal inversa)
      q3 <- quantile(exercicio$salario[exercicio$sexo == 1], prob=0.75)
      med_F <- mean(exercicio$salario[exercicio$sexo==1])
      sd_F <- sd(exercicio$salario[exercicio$sexo==1])
      #Probabilidade de Salário Maior que o 3º Quartil
      1-pnorm(q3,mean=med_F,sd=sd_F)
      
      # Qual a probabilidade de um Homem receber acima do 3º Quartil
      # pnorm (retoma a probabilidade), qnorm (retorma um valor, normal inversa)
      q3 <- quantile(exercicio$salario[exercicio$sexo == 0], prob=0.75)
      med_M <- mean(exercicio$salario[exercicio$sexo==0])
      sd_M<- sd(exercicio$salario[exercicio$sexo==0])
      #Probabilidade de Salário Maior que o 3º Quartil
      1-pnorm(q3,mean=med_M,sd=sd_M)
      
# Questão 12
      # Probabilida do Stress ser menor que 50 para os casados
      med_cas <- mean(exercicio$stress[exercicio$est_civil==1])
      sd_cas <- sd(exercicio$stress[exercicio$est_civil==1])
      # probabilida
      pnorm(50, mean=med_cas, sd=sd_cas)
      