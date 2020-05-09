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
			
        
            
        
