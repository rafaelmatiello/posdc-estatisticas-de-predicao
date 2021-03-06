#-------------------------------------------------------
#       An�lise da Estat�stica Descritiva dos Dados
#-------------------------------------------------------

# Mudar o diret�rio trabalho
setwd("C:/Users/Usuario/OneDrive - FURB/FURB - Especializa��es/Data Science/T�cnicas Estat�sticas/1� Encontro")

# Carregar a Base de Dados
  # Base de Dados Munc�pios_SC
municipios <- read.csv("Municipios_SC.csv", header = T, sep = ";", dec = ",")
attach(municipios)

# Estat�sticas Descritivas

  #Medidas de Posi��o
    #Medidas de Tend�ncia Central
    #M�dia
    mean(municipios$Popula��o)
    mean(municipios$�rea)
    mean(municipios$Densidade)
    
    #Mediana
    median(municipios$Popula��o)
    median(municipios$�rea)    
    median(municipios$Densidade)

    #Outras Medidas de Posi��o
    quantile(municipios$Popula��o, probs= c(0, .05, .1, .25, .5, .75, .9, .95, 1))
    quantile(municipios$�rea, probs= c(0, .05, .1, .25, .5, .75, .9, .95, 1))
    quantile(municipios$Densidade, probs= c(0, .05, .1, .25, .5, .75, .9, .95, 1))
   
  # Utilizar o C�digo summary (M�nimo, 1o Quartil, Mediana, M�dia, 3o Quartil, M�ximo)
    summary(municipios$Popula��o)
    summary(municipios$�rea)
    summary(municipios$Densidade)    

  # Medidas de Dispers�o 
    # Amplitude
      #Amplitude da Popula��o
      max(municipios$Popula��o)-min(municipios$Popula��o)
      
      #Amplitude da �rea
      max(municipios$�rea)-min(municipios$�rea)

      #Amplitude da Densindade
      max(municipios$Densidade)-min(municipios$Densidade)
    
    # ***Desvio-Padr�o (Standard Deviation (sd))
      sd(municipios$Popula��o)
      sd(municipios$�rea)      
      sd(municipios$Densidade)
    
    # Vari�ncia
      var(municipios$Popula��o)
      var(municipios$�rea)      
      var(municipios$Densidade)      

    # Coeficiente de Varia��o
      #CV Popula��o
      sd(municipios$Popula��o)/mean(municipios$Popula��o)
      #CV �rea
      sd(municipios$�rea)/mean(municipios$�rea)    
      #CV Densidade
      sd(municipios$Densidade)/mean(municipios$Densidade)
      
  # Medidade de Assimetria e Curtose
      # S�o medidas de qualidade da representa��o da M�dia
      
      # Necess�rio o pacorte fBasics
      install.packages("fBasics")
      library(fBasics)
      
      # Assimetria
        # N�o H� Problemas de Assimetria se -> -1 < Ass(X) < +1
        # H� problemas de Assimetria Negativa se -> Ass(X) < -1
        # H� problemas de Assimetria Positiva se -> Ass(X) > +1
      skewness(municipios$Popula��o)
      skewness(municipios$�rea)
      skewness(municipios$Densidade)

      # Curtose
        # N�o H� problemas de Curtose se -> -7 < Curt(X) < +7
        # H� problemas de Curtose (Leptocurtica) se -> Curt(X) < -7
        # H� problemas de Curtose (Platicurtica) se -> Curt(X) > +7
      kurtosis(municipios$Popula��o)
      kurtosis(municipios$�rea)
      kurtosis(municipios$Densidade)

# Estat�sticas Descritivas Usando o fBasics
      basicStats(municipios$Popula��o)
      basicStats(municipios$�rea)
      basicStats(municipios$Densidade)
      
# Corrigindo a Assimetria dos Dados
      
      # An�lise da Popula��o
        # Padronizar as Vari�veis
        ln_pop <- log(municipios$Popula��o)
        
        # M�dia
        mean(ln_pop)
        # Mediana
        median(ln_pop)
        
        # Assimetria
          skewness(ln_pop)
        # Curtose
          kurtosis(ln_pop)
        
        # M�dia mais representativa
          exp(mean(ln_pop))
       
      # An�lise da �rea
          # Padronizar as Vari�veis
          ln_area <- log(municipios$�rea)
          
          # M�dia
          mean(ln_area)
          # Mediana
          median(ln_area)
          
          # Assimetria
          skewness(ln_area)
          # Curtose
          kurtosis(ln_area)
          
          # M�dia mais representativa
          exp(mean(ln_area))          

      # An�lise da Densidade
          # Padronizar as Vari�veis
          ln_dens <- log(municipios$Densidade)
          
          # M�dia
          mean(ln_dens)
          # Mediana
          median(ln_dens)
          
          # Assimetria
          skewness(ln_dens)
          # Curtose
          kurtosis(ln_dens)
          
          # M�dia mais representativa
          exp(mean(ln_dens))                     
          