# posdc-estatisticas-de-predicao

Primeira coluna, título ou rótulos


mmrodrigues@furb.br

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
			- google analytics, com informações continuas
			- numero de habitantes
			- exemplo: Altura da arvore, número de filhos, numero de habitantes
		- contínua
			- pode assumir valor decimais
			- números de resultados medições.
			- imaginar uma regra, e decidir em nível de precisação.
			- ex: massa (balança), altura(régua), tempo (relógio), idade (dias), numero de convid por habitantes
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
		- medidas de tentencias central
			- moda - Mo
				- primeira,
				- valor mais provavél de ocorrências
				- valor com maior ocorrências
				- distribuição normal a moda também é a média.
				- ex.: 0,1,2,3,3,4,5,6 -> 3, 
				- *dificilmente é utilizada, não da para fazer muitas inferências.
				- * problemas com variáveis continuas, valor não se repete, quando maior a precisão menor a chance de acontecer repetidos
			- mediana (med ou media)
				- ocupara a posição central de forma ordenada.
				- * 50% esta amostra esta acima ou 50% esta abaixo da mediana.
				- se for par, soma os meios e divide por dois
				- divide a amostra ao meio.
				- x_(x/2) faz a fração no excel
				- ponto que divido a *amostra*
			- média aritmética 
				- soma de todos os valores, pelos termos
				- o que a media mede
				- local aonde tem 50% de valor cima da média e 50% abaixo da média.
				- divide a *propabilidade* 
				- a change da população ter o bebe com mais é de 50%.
				- Probalidade de 50% acima da mèdia
				- Probalidade de 50% abaixo a média.
				- divide a amostra no meio.
			- medias de posição
				- quartis
					- 4 partes				
					- quartil
						- 0 q -> minimas (posições extremas)
						- 1 q ->
						- 2 q -> mediana
						- 3 q -> 
						- 4 q -> Máximo (posições extremas)
				- decis
					- 10 partes					
					- analise do lucro das empresas, como se comparar com as empresas
						- 9 -> 10 decil, lucro otimo
						- 7 -> 8 decil, bom 
						- 5 -> 6 decil, razoavel
						- 4 -> Rezoavel
						- 3 -> 
						- 2 -> ruim
						- 1 decil -> péssimo
						
				- centis ou percentis ( quantis )
					- percentual, 100 partes
				
			- Medidas de dispersão
				- sempre precisa ter um ponto de refência, que é a média.
				- sempre olhar a média e a mediana.
				tipos:
					- Aplitude
						- qual o tamanho da regra para 
						- * valo_máximo - valor_minimo*
					- desvio padrão
						- mais importante
						- variação padrão (média), esperada
						- variação padrão (média) das observações
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
								- quase nunca utilizado
							- amostral
								- diferença n-1
								- da um aredondada em relação ao populacional.
								- 99,99% das vezes
						- Ex.: 1 desvio = 65% da amostra, 2 desvio = 96% da amostra, 3 desvio = 99,7% da amostra
						- identificar informações que tiverem variabilidade tem mais informação, capa de diferenciar as amostra, ex.: idade na faculdade, não varia muito, renda, varia bastante.
					- Variância
						- desvio padrão ao quadro
						- não usa raiz quadrada
						- utilizado somente para cálculo.
						- *Não tem interpretação conceitual!*
					- Coefiênte de variação
						- percentual de variação em relação a media
						- devio padrão / media
						- utilizado para comparar dados, como altura em peso, 1,7, variação 0,1, pesso media 90 kg devio 10, não para comparar.
						- se fize o cálculo, da 5,9% em altura é 11% do peso, já é mais fácil, a diferença é o dobro.
			- medidas de assimetria curtose
				- dado em torno da média
				- densidade em torno da média.
				- se todo muito concentrado na media, ou todo mundo muito longe de média.
				- assimetria
					- distribuição em cima da media
					- simetríca
						- media = moda = mediana iguais.
						- curva perfeita, 50% para cada lado os dados, divide também a amostra em 50%
						- se o valor ficar entre -1 < ass(x) < +1
					- positiva
						- media esta sendo puxao para o lado positivo.
						- moda < mediana < media
						- se o valor ficar maior de 1, existem problema de assimetria positiva.
					- negativa
						- moda > mediana > media
						- se o valor ficar abaixo de -1, existem problemas de assimetria negativa.
				- terceiro momento, privilegia os afastamados e desprivilegia os próximos.
				- ex.: problema quando colocar home e mulher juntos, isso faz com que média fica entre os dos grupos, isso gerar um densidade longe da media.
				- tipos
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
		- log(300) = 5.703782
		- exp(5.703782) = 299.9999

	- quando tem problemas de curtose a assimetria, pode usar a mediana


## Gráficos
	 - barras (apresentar informações, não fazer inferencia)
	 - pizza (apresentar informações, não fazer inferencia)
	 - dispersão
	 - linha
	 - histograva (mais estatístico)
	 - boxplot (mais estatístico)
	 
### Barras
	- qualitativa X quantitativa( frequencia )
		- Pais X energia gerada
	- não tem necessidade de ordem, mais para entendimento.

### Pizza ou setores
	- qualitativa(categoria) X proporção ao todo
	- Simples leitura, info gráfico.
	- Facil de ler os predominios, dificil de comparar os próximos
	- Evitar para utilizar acadêmicos, pois parece muito simples.
		- consome muito espaço, gerando pouco informação
	- Ex.: Energia eolica no mundo, cada pedaço é um pais

### Dispersão
	- quantitativa X quantitativa ( as vezes... pode ser dummys ou categóricas)
	- (bolinhas espalhadas no espaço)
	- exemplo: áres dos municipio x riquesa
	- Não pode ligar os pontos por linhas, cada ponto é uma observação ou individuo diferente
		- linha deve transmitir trajeto, a cidade aumentou o tamanho logo aumentou a riqueza??? não
	- Identificar tendências
	- Linha de tendência, não liga os pontos, passa na média, quando maior o municipio maior a requesa.
	
### Linha
	- linha representa uma mesma observação, mais observação nova linha
	- Variável quantitativa X quantitativa (geralmente... refere a tempo)
	- linha de tempo, linha de temperatura....
	- Geranciador de tare comportamento cpu em relação ao tempo, 
	- Analisar os picos
	
### Histograma
	- mais estatísticos
	- possibilita uma visualização da distribuição dos dados.
	- quantitativa categorizada, pode separar quanto necessário. 100, 10, 1
	- pode traçar um curva, e analisar as tentências.
	- qual a probalidade esta seguindo
	- histograma de peso de bebes em relação a densidade.
	- a fração as vezes pode dificultar a visualização, as vezes maior o numero, pode facilitar a visualização.
	- formular de sturges, 
	- normalmente separa as amostras entre 5 e 20 agrupamentos.

### Boxplot
	- linha no meio mediana
	- inferior 1 quartil
	- superior 3 quartil
		- entre o 1 e 3 quartil deve esta 50% da amostras
	- no antena traço superior é o valor máximo
	- na antena inferior 
	- bolinha 33, possível outlier (parte superior)
	- * inferior, provavel outlier ( parte inferior)
		- deve ser tratada, ex.: excluída ou trocado por valor máximos ou minimos.

	
## Teoria das probalidades

	- variável aleatoria
		- discreta 
			- considera grupos, classificações -> casos finitos
			- ou conta
			- contagem, ex.: 1,2,3,4 não tem fração -> infinito e numerável 
				- finito mas sabe qual é o próximo, 1 -> 2 -> 3 -> 4.... 10000 -> 10001
					- quando olha para escala não sabe qual o proximo, ex.: 0,43 -> 0,4333 ou 0,45???
		- Variáveis contínuas
			- Veriáveis media por escala
			- Conjunto infinito não enumerável
		- Espaço amostral 
			- conjunto de valores possíveis
			- dados: 6 faces
			- altura: 0,90 até 2,50, todos os valores possíves de acontecer.
		- esperança:
			- todo o valor tem a mesma chance de ocorrer.
		- variáncia
	- Modelo bernoulli
		- Testa a possibilidade de sucesso e insucesso.
	- distribuições discretas
		- binominal
			- distribuição para dados de contágem
		- Poisson
			- Teoria das filas
			- quando carros param no sinal a cada abertura de sinal
			- quantidade de acessos em um site
				- exemplo acessos ao ava.
			- quantos sucessos para um intervalor de tempo
		- Geométrica
			- Número de tentativas até o sucesso
			- exemplo:
				- exemplos do homem que queria ter filho e só conseguiu no quinto filho
				- p(x=4) = (1 - 0,5)**4 * 0,5 = 0,03125
		- Hipergeomátrica
			- controle de qualidade com tamanho pequeno
			- tinha uma amostra da amostra, pequena que deve reprenta a mesma coisa que o todo.
			- problemas com amostras grándes
	- Distribuíção normal ou gaussiana
		- curva de sino
		- 1 sd 68,26
		- 2 sd 95,44
		- 3 sd 99,72
			
			

## R studio
	- Ctrol - enter, executa
	- View(minucipios)
		- mostrar os municipios.
	- help("quantile")
            
			
	
        
