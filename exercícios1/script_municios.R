#------------------------------------------------
#     Análise da estatística descriva dos dados
#------------------------------------------------

# mudar o diretório, more -> set as workdiretory
setwd("C:/repositorios/posdc-estatisticas-de-predicao/exercícios1")

#carregar a base de dados
#base de adod municios_sc

municipios <- read.csv("Municipios_SC.csv", header = T, sep = ";", dec = ",")

# sugestão de auto completar
attach(municipios)

# estatística descritiva
  # medidads de posição
    # medidas de tendência Central
      # media
      mean(municipios$População)
      #R 34309.95
      
      mean(municipios$Área)
      #R 362.7565
      
      mean(municipios$Densidade)
      #R 122.4975
      
      # mediana
      # media esta bem acima da mediana - 
      median(municipios$População)
      #R 10875
      
      median(municipios$Área)
      #R 254.77
      
      median(municipios$Densidade)
      #R 39.785
    
    # Outras medidas de posição
    
      quantile(municipios$População, c(0, .05, .1, .25,.5, .75, .9, 1))
      #       0%        5%       10%       25%       50%       75%       90%      100% 
      #  1260.00   2472.40   2775.10   4620.75  10875.00  29371.25  70918.80 590466.00 
      
      quantile(municipios$Área, c(0, .05, .1, .25,.5, .75, .9, 1))
      #       0%        5%       10%       25%       50%       75%       90%      100% 
      #  34.4900   63.5375   93.4830  141.1375  254.7700  413.9575  790.7620 2631.5000 
      
      
      quantile(municipios$Densidade, c(0, .05, .1, .25,.5, .75, .9, 1))
      #       0%        5%       10%       25%       50%       75%       90%      100% 
      #   0.0300    6.8415   10.6850   20.4875   39.7850  114.3150  276.0830 2601.1700
      
      
      #utilizar o summary (minimo, 1º quartil, Mediana, Media, 3º quartil, Maximo)  
      
      summary(municipios$População)
      #   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      #   1260    4621   10875   34310   29371  590466 
      
      summary(municipios$Área)
      #     Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      #   34.49  141.14  254.77  362.76  413.96 2631.50 
      
      summary(municipios$Densidade)
      #   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      #   0.03   20.49   39.78  122.50  114.31 2601.17 
    
    
    # Medidas de dispersão
    
      # Amplitude -> tamanho da diferença
        
        max(municipios$População)- min(municipios$População)
        #589206
        
        max(municipios$Área)- min(municipios$Área)
        #2597.01
      
        max(municipios$Densidade)- min(municipios$Densidade)
        #2601.14
      
      # Desvio-padrão - Standard Deviation
        
        #distancia em relanção a medi é muito alta
        sd(municipios$População)
        # 73205.76
        
        sd(municipios$Área)
        # 362.4714
        
        sd(municipios$Densidade)
        # 267.5828
      
      # Variáncia -> variação entre os municipio
        
        var(municipios$População)
        # 5359083954
        
        var(municipios$Área)
        # 131385.5
        
        var(municipios$Densidade)
        # 71600.55
      
      # Coeficênte de variáção
        
        #distancia em relanção a medi é muito alta
        sd(municipios$População) / mean(municipios$População)
        # 2.13366 = 213%
        
        sd(municipios$Área) / mean(municipios$Área)
        # 0.999214 = 99%

        sd(municipios$Densidade) / mean(municipios$Densidade)
        # 2.184393 = 218%
        
      #Medidas de Assimetria e curtose
        # São medidas de qualidade da represetação da média
        
        #pacote -> FBasic
        install.packages("fBasics")
        library(fBasics)
        
        # Assimetria
          
          # Não há programas de Assimetria se: -1 < ass(x) < +1
          # Negativo: ass(x) < -1
          # Positivo: ass(x) > +1
                
          skewness(municipios$População)
          # 4.816624
          skewness(municipios$Área)
          #  2.732321
          
          skewness(municipios$Densidade)
          # 5.83513
          
        # Curstose
          # Não á problemas se ficar entre: -7< curt(x) < +7
          # Laptocurtica se -> curt(x) < -7
          # platicurtica se -> curt(x) > +7
          
          kurtosis(municipios$População)
          #27.76773
          kurtosis(municipios$Área)
          #10.17072
          kurtosis(municipios$Densidade)
          #43.85005
          
          
  # Estatistica descritiva usando fbase
          
          basicStats(municipios$População)  
          # nobs                   1.820000e+02
          # NAs                    0.000000e+00
          # Minimum                1.260000e+03
          # Maximum                5.904660e+05
          # 1. Quartile            4.620750e+03
          # 3. Quartile            2.937125e+04
          # Mean                   3.430995e+04
          # Median                 1.087500e+04
          # Sum                    6.244411e+06
          # SE Mean                5.426372e+03
          # LCL Mean               2.360287e+04
          # UCL Mean               4.501704e+04
          # Variance               5.359084e+09
          # Stdev                  7.320576e+04
          # Skewness               4.816624e+00
          # Kurtosis               2.776773e+01
        
          basicStats(municipios$Área)
          basicStats(municipios$Densidade)  
  
  # Corrigindo a Assimetria dos dados
          # logaritmo, sempre que é aplicado, quem ta longe puxa para perto que esta no meio não mexe
          # tamanho sugerida, trabalhar com logaritmo, tamanho de vendas.
          
          # análise da população, representa melhor a media
              # padronizar as variáveis
              ln_pop <- log(municipios$População)
              
              # media
              mean(ln_pop)
              
              #mediana
              median(ln_pop)
              
              #Assimetria tem que ficar entre -1 e +1
              skewness(ln_pop)
          
              #curtose
              kurtosis(ln_pop)
              
            
              #Média mais representativa, 50% vai esta em cada lado
              exp(mean(ln_pop))
            
          # padronizar as variáveis - Area
              ln_area <- log(municipios$Área)
              
              # media
              mean(ln_area)
              
              #mediana
              median(ln_area)
              
              #Assimetria tem que ficar entre -1 e +1
              skewness(ln_area)
              
              #curtose
              kurtosis(ln_area)
              
              #Média mais representativa, 50% de changes de area menor ou maior
              exp(mean(ln_area))
          
          # padronizar as variáveis - Densidade
              ln_dens <- log(municipios$Densidade)
              
              # media
              mean(ln_dens)
              
              #mediana
              median(ln_dens)
              
              #Assimetria tem que ficar entre -1 e +1
              skewness(ln_dens)
              
              #curtose
              kurtosis(ln_dens)
              
              #Média mais representativa, 50% de changes de area menor ou maior
              exp(mean(ln_dens))