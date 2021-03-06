# ______________________________________________
#
#           Script da Aula de 04/04/2020
#
# ______________________________________________

#1 Primeiro passo - Mudar o diret�rio

#2 Baixar o banco de dados
#   Neste caso ser� um arquivo ".csv"

Municipios<-read.csv("Municipios_SC.csv", sep=";", dec=",", header=T)

#3 buscar o nome das vari�veis da base de dados
names(Municipios)

#4 calcular a m�dia para a vari�vel peso
mean(Municipios$Popula��o)
mean(Municipios$�rea)
mean(Municipios$Densidade)

#5 calcular a mediana para a vari�vel peso
median(Municipios$Popula��o)
median(Municipios$�rea)
median(Municipios$Densidade)

#6 gerar uma estat�stica geral da vari�vel peso  
summary(Municipios$Popula��o)
summary(Municipios$�rea)
summary(Municipios$Densidade)

# Alternativa para o "Run" � "Ctrl + Enter"


#7 Para calcular os percentis
#os valores internos ao vetor c, indicam as propor��es dos percentis
quantile(Municipios$Popula��o, c(0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95))
quantile(Municipios$�rea, c(0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95))
quantile(Municipios$Densidade, c(0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95))

#8 Medidas de dispers�o
#Amplitude
max(Municipios$Popula��o)
max(Municipios$�rea)
max(Municipios$Densidade)
min(Municipios$Popula��o)
min(Municipios$�rea)
min(Municipios$Densidade)
# Amplitude Popula��o
max(Municipios$Popula��o)-min(Municipios$Popula��o)
# Amplitude �rea
max(Municipios$�rea)-min(Municipios$�rea)
# Amplitude Densidade
max(Municipios$Densidade)-min(Municipios$Densidade)

#Desvio-Padr�o
sd(Municipios$Popula��o)
sd(Municipios$�rea)
sd(Municipios$Densidade)

#Vari�ncia
var(Municipios$Popula��o)
var(Municipios$�rea)
var(Municipios$Densidade)

#Coeficiente de Vari�ncia
sd(Municipios$Popula��o)/mean(Municipios$Popula��o)
sd(Municipios$�rea)/mean(Municipios$�rea)
sd(Municipios$Densidade)/mean(Municipios$Densidade)

# Baixar o pacote "moments"
install.packages("moments")
library(moments)

#Coeficiente de Assimetria
  skewness(Municipios$Popula��o)
  skewness(Municipios$�rea)
  skewness(Municipios$Densidade)

#Coeficiente de Curtose
  kurtosis(Municipios$Popula��o)
  kurtosis(Municipios$�rea)
  kurtosis(Municipios$Densidade)

  
#Existe pacotes que fazem o c�lculo geral para todas as Estat�sticas
# � preciso instalar o pacote "fBasics"
# Baixar o Pacote "fBasics"
  install.packages("fBasics")
  library(fBasics) 

  basicStats(Municipios$Popula��o)
  basicStats(Municipios$�rea)
  basicStats(Municipios$Densidade)

#Histogramas
hist(Municipios$Popula��o,  breaks = 100, xlab="Popula��o", ylab="")
hist(Municipios$�rea ,  breaks = 50, xlab="�rea", ylab="")
hist(Municipios$Densidade ,  breaks = 500, xlab="Densidade", ylab="")

# Normaliza��o pelo Logaritmo
# Aplicando o log sobre as vari�veis de popula��o

ln_Pop=log(Municipios$Popula��o)
hist(ln_Pop,  breaks = 10, xlab="Popula��o", ylab="")

ln_Area=log(Municipios$�rea)
hist(ln_Area,  breaks = 10, xlab="Popula��o", ylab="")

ln_Dens=log(Municipios$Densidade)
hist(ln_Dens,  breaks = 10, xlab="Popula��o", ylab="")
