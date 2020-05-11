# posdc-estatisticas-de-predicao

Primeira coluna, título ou rótulos

## links
 
UFPR 
http://leg.ufpr.br/doku.php
http://leg.ufpr.br/doku.php/ridiculas

Aprenda Software Estatístico R - Módulo 1, Introdução.
https://www.youtube.com/watch?v=28G51yu4zAA

Tutorial: Dê seus primeiros passos no R
https://www.youtube.com/watch?v=1wbggOdkcA8&t=397s

A (boa e velha) apostila básica do R
https://cantinhodor.wordpress.com/

Apostila mais completa
http://leg.ufpr.br/~paulojus/embrapa/Rembrapa/Rembrapa.pdf

## Tipos de variáveis

- Forma que vou medir um fenomeno.
    - exemplo notas em hotéis.
 
 - Tipos
    - Qualitativa
        - não tem métrica e não é mensuravel
        - ex: tipo de folhar
        - categorias
        - tipos:
            - ordinal:
                - existe um ordem,
                - faíxa de idade, mês de observação (Janeiro, fev...), Escala Lickert -> concordo totalmente ou discordo totalmente
            - Nominal
                - não existe um ordem
                - exemplo: 
                    - Localização(Estados, cidades), 
                    - Sintomas (Febre, tem ou não tem. Falta de ar, tem ou não tem)
                    - group de controle ( você quer usar nova plataforma?, teste de hidroxicloroquina, separa uma quantidade de pessoas)
        - Escala Lickert
            - Escala que mostra o grau de satistação, deve ser impar de opções, para tem a neutralidade, que é a opção do meio.
            - Quanto satisfeito esta, [nada satisfeito]  <- [Nem concordo nem discordo] -> [muito satisfeito]
            - Deve ser uma afirmação, O professor controlou a frequencia? controlou ou não controlou, nem controlou ou nem não controlou. 
            - É uma opinião
            - em média utiliza 5, se tiver muita necessidade use 7, no máximo 9 casos.              
    - Quantitativa
        - mensurável 
        - métrica
        - exemplo: Altura da arvore, número de filhos, 
		- discreta:
			- não permite valores fracionados, 1 pessoa, não meia.
			- google analytics, com informações continuas.
			- numero de habitantes
		- contínua
			- pode assumir valor decimais
			- números de resultados medições.
			- imaginar uma regra, e decidir em nível de precisação.
			- massa (balança), altura(régua), tempo (relógio), idade (dias)
			- numero de habitantes por km²
	- tentar o ponto para buscar a informação que influenciou na opnião do usuário
		- carro é ruim, porque?
			- barrulho
			- equipamento
			- problema....
	- Variável dummy
		- binaria, 0 ou 1
		- investiga fenômenos
		- mulher homen, simula 1 para mulher 0 homen
		- exemplo: categoria, 1- comercio, 2- industria, parece que o a industria é o dobro que o comercio, quando usa dommy, criar duas colunas colocando 0 e 1, para cada um em comercio= 1 industria = 0
	- Medidas resumo:
		- medida de posição
			- informações proximas
		- medidas de dispersão
			- 
		- medidas de tentencias gerais
			- moda - Mo
				- primeira,
				- valor mais provavél de ocorrências
				- valor com maior ocorrências
				- distribuição normal a moda também é a média.
				- ex.: 0,1,2,3,3,4,5,6 -> 3, 
				- dificilmente é utilizada, não da para fazer muitas inferências.
			- mediana (med ou media)
				- ocupara a posição central de forma ordenada.
				- 50% esta amostra esta acima ou 50% esta abaixo da mediana.
				- se for par, soma os meios e divide por dois
				- divide a amostra ao meio.
				- x_(x/2) faz a fração no excel
				- ponto que divido a *amostra*
			- média
				- soma de todos os valores, pelos termos
				- o que a media mede
				- local aonde tem 50% de valor cima da média e 50% abaixo da média.
				- divide a *propabilidade* 
				- a change da população ter o bebe com mais é de 50%.
			- medias de posição
				- quartis
					- 4 partes					
				- decis
					- 10 partes					
				- centis ou percentis ( quantis )
					- percentual, 100 partes
			- Medidas de dispersão
				- sempre precisa ter um ponto de refência, que é a média.
				- sempre olhar a média e a mediana.
				tipos:
					- Aplitude
						- qual o tamanho da regra para 
						- valo_máximo - valor_minimo
					- desvio padrão
						- mais importante
						- variação padrão, média, esperada
						- De cada um compara com a média, se estive longe da media, mais longe do padrão vai estar.
						- normal de afastamento da média,
						- porque eleva ao quadrado, lei de regressão a média, 
							- para cada pessoa muito alta, vai nascer um muito baixo.
							- para cada sucesso que teve, sempre teve um fracasso.
							- quadrado, para gerar a parabola, assim pode encontrar as máximas e minimas;
						- soma a diferenca dos disvio em relação ao media, depois faz a media dos desvios.	
						- tipos:
							- populacional 
								- divide n
								- quase nunca itilizado
							- amostral
								- diferença n-1
								- da um aredondada em relação ao populacional.
								- 99,99% das vezes
						- Ex.: 1 desvio = 65% da amostra, 2 desvio = 96% da amostra, 3 desvio = 99,7% da amostra
						- identificar informações que tiverem variabilidade tem mais informação, capa de diferenciar as amostra, ex.: idade na faculdade, não varia muito, renda, varia bastante.
					- Variância
						- desvio padrão ao quadro
						- não usa raiz
						- utilizado somente para cálculo.
						- Não tem interpretação.
					- Coefiente de variação
						- percentual de variação em relação a media
						- devio padrão / media
						- utilizado para comparar dados, como altura em peso, 1,7, variação 0,1, pesso media 90 kg devio 10, não para comparar.
						- se fize o cálculo, da 5,9% em altura é 11% do peso, já é mais fácil, a diferença é o dobro.
			- medidas de assimetria e curtose
				- dado em torno da média
				- 
				- assimetria
					- distribuição em cima da media,
					-simetríca
						- media, moda e mediana iguais.
					- positiva
						- media esta sendo puxao para o lado positivo.
						- moda < mediana < media
					- negativa
						- moda > mediana > media
				- terceiro momento, privilegia os afastamados e desprivilegia os próximos.
				- se o valor ficar entre -1 < ass(x) < +1
				- se o valor ficar abaixo de -1, existem problemas de assimetria negativa.
				- se o valor ficar maior de 1, existem problema de assimetria positiva.
			- curtose
				- densidade em torno da média.
				- se todo muito concentrado na media, ou todo mundo muito longe de média.
				- ex.: problema quando colocar home e mulher juntos, isso faz com que média fica entre os dos grupos, isso gerar um densidade longe da media.
				- mesocúrtica, curva ideal
					- = 0
					- ideial: -7 < curt(x) < +7
				- platicúrtica, curva achatada, faz com que as laterais precisam subir, densidade 
					- > 0, muito densa nas laterais
					- ideial: curt(x) < +7
				- leptocúrtica, aumentou a densidade em cima da média, faz com que a lateria reduzem.
					- < 0
					- ideial: -7 < curt(x)
				- coefiente de achatamento de Fisher
					- se ficar negativo, muito densidade na media, /\
					- se ficar positivo, muito densidade nas laterais /-\
				-  
			- excel
				- aplituda maximo(dado) - minimo(dados)
				- desvio padraão 
					- desvpad(dados)
				- variancia
					- var(dadod)

- variável relacionadas a tamanho, usar funções logartimicas.

 - log(300)
	5.703782
 - exp(5.703782)
	299.9999
  
  


## R studio
	- Ctrol - enter, executa
	- View(minucipios)
		- mostrar os municipios.
	- help("quantile")
            
			
	
        
