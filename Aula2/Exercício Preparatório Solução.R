#_______________________________________________________________________________
#         Resolu��o do Exerc�cio Preparat�rio para a Avalia��o Final
#_______________________________________________________________________________

# Mudando o diret�rio de trabalho
setwd("C:/Users/Usuario/OneDrive - FURB/FURB - Especializa��es/Data Science/T�cnicas Estat�sticas")

# Carregar o Banco de Dados
exercicio <- read.csv("Exerc�cio Preparat�rio.csv", header = T, sep = ";", dec = ",")

# Quest�o 1
 # M�nimo -> min()
 # M�ximo -> max()
 # 1� Quartil -> quantile(X, prob =0.25)
 # 3� Quartil -> quantile(X, prob =0.25)
 # Mediana -> median()
 # M�dia -> mean()

  # Para todas as medidas
  summary(exercicio$salario)
  summary(exercicio$idade)
  summary(exercicio$stress)
  
# Quest�o 2
  # Algumas medidas podem ser obtidas pelo Pacote fBasics
  # Amplitude
    # Sal�rio
      max(exercicio$salario)-min(exercicio$salario)
    # Idade
      max(exercicio$idade)-min(exercicio$idade)
    # Stress
      max(exercicio$stress)-min(exercicio$stress)
  # Desvio-Padr�o
      # Sal�rio
      sd(exercicio$salario)
      # Idade
      sd(exercicio$idade)
      # Stress
      sd(exercicio$stress)
   # Vari�ncia
      # Sal�rio
      var(exercicio$salario)
      # Idade
      var(exercicio$idade)
      # Stress
      var(exercicio$stress)
    # Coeficiente de Varia��o
      # Sal�rio
      sd(exercicio$salario)/mean(exercicio$salario)
      # Idade
      sd(exercicio$idade)/mean(exercicio$idade)
      # Stress
      sd(exercicio$stress)/mean(exercicio$stress)     

  # Assimetria e Curtose
      # Utilizar o pacote fBasics
      library(fBasics)
    # Assimetria
        # Intervalo Cr�tico -1 < Ass(X) < +1 - N�o h� problema de Assimetria
        # Se Ass(X) < -1 - Problemas com Assimetria Negativa
        # Se Ass(X) > +1 - Problemas com Assimetria Positiva
      # Sal�rio
      skewness(exercicio$salario)
      # Idade
      skewness(exercicio$idade)
      # Stress
      skewness(exercicio$stress)
    # Curtose
        # Intervalo Cr�tico -7 < Curt(x) < +7 - N�o h� problema de Curtose
        # se Curt(X) < -7 - Problemas com Distribui��o Leptocurtica
        # se Curt(X) > +7 - Problemas com Distribuil�o Platicurtica
      # Sal�rio
      kurtosis(exercicio$salario, method = "moment")
      # Idade
      kurtosis(exercicio$idade, method = "moment")
      # Stress
      kurtosis(exercicio$stress, method = "moment")      

# Quest�o 3
      # usando a fun��o summary
        # M�dia e Mediana para Mulheres
      summary(exercicio$salario[exercicio$sexo == 1])
        # M�dia e Mediana para Homens
      summary(exercicio$salario[exercicio$sexo == 0])

# Quest�o 4
    # Desvio-Padr�o
      # Sal�rio
        # Mulheres
      sd(exercicio$salario[exercicio$sexo == 1])
        # Homens
      sd(exercicio$salario[exercicio$sexo == 0])
      
      
      # Coeficiente de Varia��o
      # Sal�rio
        # Mulheres
      sd(exercicio$salario[exercicio$sexo == 1])/mean(exercicio$salario[exercicio$sexo == 1])
        # Homens
      sd(exercicio$salario[exercicio$sexo == 0])/mean(exercicio$salario[exercicio$sexo == 0])

# Quest�o 5
      # Usando a fun��o summary
        #Casados
      summary(exercicio$salario[exercicio$est_civil==1])
        #Solteiros
      summary(exercicio$salario[exercicio$est_civil==0])

# Quest�o 6
      # usando a fun��o summary
      # M�dia e Mediana para Mulheres
      summary(exercicio$stress[exercicio$sexo == 1])
      # M�dia e Mediana para Homens
      summary(exercicio$stress[exercicio$sexo == 0])
      
# Quest�o 7
      # usando a fun��o summary
      # M�dia e Mediana para Casados
      summary(exercicio$stress[exercicio$est_civil == 1])
      # M�dia e Mediana para Solteiros
      summary(exercicio$stress[exercicio$est_civil == 0])

#Quest�o 8
      # Compara��o entre Stress e Sal�rio
      plot(exercicio$salario, exercicio$stress, main = "Sal�rio X Stress", xlab="Sal�rio", ylab="Stress")
      
#Quest�o 9
      # Compara��o entre Stress e Idade
      plot(exercicio$idade, exercicio$stress, main = "Idade X Stress", xlab="Idade", ylab="Stress")
   
# Quest�o 10
      # Boxplot
      boxplot(exercicio$salario)
      boxplot(exercicio$idade)
      boxplot(exercicio$stress)
      
      # Boxplot por Sexo
      boxplot(exercicio$salario ~ exercicio$sexo)
      boxplot(exercicio$idade ~ exercicio$sexo)
      boxplot(exercicio$stress ~ exercicio$sexo)
 
# Quest�o 11
      # Qual a probabilidade de uma Mulher receber acima do 3� Quartil
      # pnorm (retoma a probabilidade), qnorm (retorma um valor, normal inversa)
      q3 <- quantile(exercicio$salario[exercicio$sexo == 1], prob=0.75)
      med_F <- mean(exercicio$salario[exercicio$sexo==1])
      sd_F <- sd(exercicio$salario[exercicio$sexo==1])
      #Probabilidade de Sal�rio Maior que o 3� Quartil
      1-pnorm(q3,mean=med_F,sd=sd_F)
      
      # Qual a probabilidade de um Homem receber acima do 3� Quartil
      # pnorm (retoma a probabilidade), qnorm (retorma um valor, normal inversa)
      q3 <- quantile(exercicio$salario[exercicio$sexo == 0], prob=0.75)
      med_M <- mean(exercicio$salario[exercicio$sexo==0])
      sd_M<- sd(exercicio$salario[exercicio$sexo==0])
      #Probabilidade de Sal�rio Maior que o 3� Quartil
      1-pnorm(q3,mean=med_M,sd=sd_M)
      
# Quest�o 12
      # Probabilida do Stress ser menor que 50 para os casados
      med_cas <- mean(exercicio$stress[exercicio$est_civil==1])
      sd_cas <- sd(exercicio$stress[exercicio$est_civil==1])
      # probabilida
      pnorm(50, mean=med_cas, sd=sd_cas)
      