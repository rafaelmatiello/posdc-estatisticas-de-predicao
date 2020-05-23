#-------------------------------------------------------
#       Análise da Estatística Descritiva dos Dados
#-------------------------------------------------------

# Mudar o diretório trabalho
setwd("C:/Users/Usuario/OneDrive - FURB/FURB - Especializações/Data Science/Técnicas Estatísticas/1º Encontro")

# Carregar a Base de Dados
  # Base de Dados Muncípios_SC
municipios <- read.csv("Municipios_SC.csv", header = T, sep = ";", dec = ",")
attach(municipios)

# Estatísticas Descritivas

  #Medidas de Posição
    #Medidas de Tendência Central
    #Média
    mean(municipios$População)
    mean(municipios$Área)
    mean(municipios$Densidade)
    
    #Mediana
    median(municipios$População)
    median(municipios$Área)    
    median(municipios$Densidade)

    #Outras Medidas de Posição
    quantile(municipios$População, probs= c(0, .05, .1, .25, .5, .75, .9, .95, 1))
    quantile(municipios$Área, probs= c(0, .05, .1, .25, .5, .75, .9, .95, 1))
    quantile(municipios$Densidade, probs= c(0, .05, .1, .25, .5, .75, .9, .95, 1))
   
  # Utilizar o Código summary (Mínimo, 1o Quartil, Mediana, Média, 3o Quartil, Máximo)
    summary(municipios$População)
    summary(municipios$Área)
    summary(municipios$Densidade)    

  # Medidas de Dispersão 
    # Amplitude
      #Amplitude da População
      max(municipios$População)-min(municipios$População)
      
      #Amplitude da Área
      max(municipios$Área)-min(municipios$Área)

      #Amplitude da Densindade
      max(municipios$Densidade)-min(municipios$Densidade)
    
    # ***Desvio-Padrão (Standard Deviation (sd))
      sd(municipios$População)
      sd(municipios$Área)      
      sd(municipios$Densidade)
    
    # Variância
      var(municipios$População)
      var(municipios$Área)      
      var(municipios$Densidade)      

    # Coeficiente de Variação
      #CV População
      sd(municipios$População)/mean(municipios$População)
      #CV Área
      sd(municipios$Área)/mean(municipios$Área)    
      #CV Densidade
      sd(municipios$Densidade)/mean(municipios$Densidade)
      
  # Medidade de Assimetria e Curtose
      # São medidas de qualidade da representação da Média
      
      # Necessário o pacorte fBasics
      install.packages("fBasics")
      library(fBasics)
      
      # Assimetria
        # Não Há Problemas de Assimetria se -> -1 < Ass(X) < +1
        # Há problemas de Assimetria Negativa se -> Ass(X) < -1
        # Há problemas de Assimetria Positiva se -> Ass(X) > +1
      skewness(municipios$População)
      skewness(municipios$Área)
      skewness(municipios$Densidade)

      # Curtose
        # Não Há problemas de Curtose se -> -7 < Curt(X) < +7
        # Há problemas de Curtose (Leptocurtica) se -> Curt(X) < -7
        # Há problemas de Curtose (Platicurtica) se -> Curt(X) > +7
      kurtosis(municipios$População)
      kurtosis(municipios$Área)
      kurtosis(municipios$Densidade)

# Estatísticas Descritivas Usando o fBasics
      basicStats(municipios$População)
      basicStats(municipios$Área)
      basicStats(municipios$Densidade)
      
# Corrigindo a Assimetria dos Dados
      
      # Análise da População
        # Padronizar as Variáveis
        ln_pop <- log(municipios$População)
        
        # Média
        mean(ln_pop)
        # Mediana
        median(ln_pop)
        
        # Assimetria
          skewness(ln_pop)
        # Curtose
          kurtosis(ln_pop)
        
        # Média mais representativa
          exp(mean(ln_pop))
       
      # Análise da Área
          # Padronizar as Variáveis
          ln_area <- log(municipios$Área)
          
          # Média
          mean(ln_area)
          # Mediana
          median(ln_area)
          
          # Assimetria
          skewness(ln_area)
          # Curtose
          kurtosis(ln_area)
          
          # Média mais representativa
          exp(mean(ln_area))          

      # Análise da Densidade
          # Padronizar as Variáveis
          ln_dens <- log(municipios$Densidade)
          
          # Média
          mean(ln_dens)
          # Mediana
          median(ln_dens)
          
          # Assimetria
          skewness(ln_dens)
          # Curtose
          kurtosis(ln_dens)
          
          # Média mais representativa
          exp(mean(ln_dens))                     
          