# Exemplo sobre o peso dos Beb�s rec�m nascidos

  #1 carregando os dados (* aten��o para o endere�o do arquivo)
    PesoBebe<-read.table("Exemplo Peso.txt", header=TRUE)
    
  #2 utilizar a fun��o "attach" para o programa reconhecer os r�tulos da vari�veis
    attach(PesoBebe)
    
  #3 buscar o nome das vari�veis da base de dados
    names(PesoBebe)
    

    
#Fazer um gr�fico de Barras
    
    energia <- data.frame("pais" = 1:10,"e_eolica"=1:10)
    energia$pais <- c("China", "EUA", "Alemanha", "�ndia", "Espanha", "Reino Unido", "Canad�", "Fran�a", "It�lia", "Brasil")
    energia$e_eolica <- c(145362, 74471, 44947, 25088, 23025, 13603, 11205, 10358, 8958, 8715)
    rotulo <- c("Pa�s", "Gera��o de Energia (MW)")
    par(mgp=c(5,1,0))
    barplot(energia$e_eolica, main="Energia E�lica no Mundo", xlab=rotulo[1], ylab=rotulo[2], names.arg = energia$pais, ylim=c(0, 145000), cex.names = 0.8, xaxs = "i")
    grid(nx=NA, ny=NULL)
    barplot(energia$e_eolica, main="Energia E�lica no Mundo", xlab=rotulo[1], ylab=rotulo[2], names.arg = energia$pais, ylim=c(0, 145000), cex.names = 0.8, xaxs = "i", add=TRUE)
   
#Fazer um gr�fico de Pizza
    
    pie(x = energia$e_eolica,   # Dados do Gr�fico
        labels = energia$pais, # Legendas
        main = "Energia E�lica no Mundo")         # T�tulo do gr�fico  
    
#Fazer gr�fico de dispers�o
    riqueza <- c(15,18,22,24,25,30,31,34,37,39,41,45)
    area <- c(2,4.5,6,10,30,34,50,56,60,77.5,80,85)
    area.cate <- rep(c("pequeno", "grande"), each=6)
    
    plot(riqueza~area)
    
    # Adicionar a linha de Tend�ncia
    model <-  lm(riqueza~area)
    plot(riqueza~area)
    abline(model, col="red")
    abline(h=mean(riqueza))
    abline(v=mean(area))

# Gr�fico Box Plot    
    boxplot(riqueza~area.cate)
    area.cate <- rep(c(0, 1), each=6)
    plot(riqueza~area.cate)

# Gr�fico Histograma
    # M�dia do Peso dos Beb�s
      mean(peso)
    # Mediana do Peso dos Beb�s
      median(peso)
    hist(PesoBebe$peso,  breaks=5, xlab="Peso", ylab="")
    abline(v=3167, col="red")
