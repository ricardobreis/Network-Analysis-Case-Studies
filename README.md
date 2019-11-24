# Network-Analysis-Case-Studies

## Estudo de Caso 1: Rede One Mode

No exemplo de rede one mode, a rede é formada por 24 nós (de A a Y), representada pela matriz de adjacências abaixo:

![Rede One Mode](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/grede1.PNG)

Fez-se uma alteração no par (U,L) com o intuito de observar o comportamento da rede.

> grede[21,12] <- 1

Pode-se observar a alteração na matriz de adjacências abaixo:

![Rede One Mode Alterada](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/grede2.PNG)

Nos plots abaixo é possível observar como se comporta a rede, incluindo a ligação criada anteriormente entre os nós U e L:

![Figura 1: gplot(grede)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/one%20mode%201.png)

![Figura 2: gplot(grede,gmode="graph",displaylabels = TRUE)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/one%20mode%202.png)

![3: gplot(grede,gmode="graph",displaylabels = TRUE,edge.col="gray",usearrows=FALSE)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/one%20mode%203.png)

Ao se obter as medidas de centralidade, pode-se constatar que os nós J, K e S tem grau 14, isso significa que são os nós com o maior número de ligações. Já ao se obter o closeness, que é a distância de um ator em relação aos outros atores da rede, pode-se observar que os nós J, K e S são os que precisam de menos passos para alcançar todos os nós da rede, o que já era de se esperar pois, como citado anteriormente, são os nós com o maior número de ligações. Obtendo-se o betweenness, nota-se que o nó X, com uma medida de 29 é o nó que faz a maior ponte entre os outros nós, ou seja, dentre todos os menores caminhos entre nós, a maioria passa por ele. 

![Rede One Mode - Medidas de Centralidade](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/rede%20one%20mode%20-%20medidas.PNG)

Nas figuras de 4 a 9, pode-se observar diversas visualizações da rede tomando como parâmetros as medidas de centralidade degree, closeness e betweenness, e constatar visualmente o que foi discutido no parágrafo anterior.

![Figura 4: Plot da rede tomando degree como parâmetro de raio da circunferência.
gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=degree(grede,gmode="graph",cmode="indegree")/3)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/One%20Mode%204.png)

![Figura 5: Plot da rede exibindo o valor de degree.
gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,label=degree(grede,gmode="graph",cmode="indegree"))](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/One%20Mode%205.png)

![Figura 6: Plot da rede tomando closeness como parâmetro de raio da circunferência.
gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=closeness(grede,gmode="graph")*2)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/One%20Mode%206.png)

![Figura 7: Plot da rede exibindo o valor de closeness.
gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,label=round(closeness(grede,gmode="graph"),digits=2))](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/One%20Mode%207.png)

![Figura 8: Plot da rede tomando betweenness como parâmetro de raio da circunferência.
gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=betweenness(grede,gmode="graph")/3+1)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/One%20Mode%208.png)

![Figura 9: Plot da rede exibindo o valor de betweenness.
gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,label=betweenness(grede,gmode="graph"))](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/One%20Mode%209.png)

## Estudo de Caso 2: Rede Two Mode

No exemplo de rede two mode, a rede é formada por 19 observações representadas por pessoas e 15 variáveis representadas por itens de compra, onde a matriz de adjacências abaixo mostra quem comprou o quê:

![Rede Two Mode](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/gcompras1.PNG)

Fez-se uma alteração no par (João, Iphone) com o intuito de observar o comportamento da rede.

> gcompras[1,1] <- 0

Pode-se observar a alteração na matriz de adjacências abaixo:

![Rede Two Mode Alterada](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/gcompras2.PNG)

Nos plots abaixo é possível observar como se comporta a rede, incluindo a ligação criada anteriormente entre os nós João e Iphone:

![Figura 10: gplot(gcompras)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/Rede%20Two%20Mode%201.png)

![Figura 11: gplot(gcompras,gmode="twomode",displaylabels = TRUE)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/Rede%20Two%20Mode%202.png)

![Figura 12: gplot(gcompras,gmode="twomode",displaylabels = TRUE, edge.col="gray",label.cex = 0.7,usearrows=FALSE)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/Rede%20Two%20Mode%203.png)

Para este caso, obtendo-se as medidas de centralidade, chega-se um vetor com 34 posições, sendo assim as 19 primeiras para os nós pessoas e 15 seguintes para os nós objetos. Com a medida degree podemos observar que o nó “Camisa do Corinthians” tem o maior número, 16, significando assim que dentre os itens de compra ele é o quê mais vende. O item que menos vende é a “Agenda” com apenas 2 ocorrências de compras. Já falando de pessoas, pode-se observar que a “Maria” é a que mais compra, contabilizando 13 itens. Dentre os que menos compram estão “José”, “Paulo”, “Flávia”, “Rodrigo” e “Gisele” com 4 itens cada. A medida closeness (distância de um ator em relação aos outros autores em uma rede) corrobora o que foi dito anteriormente, tendo “Maria” com .60 entre as pessoas e “Camisa do Corinthians” com .62 entre os itens de compra. Já com a medida betweenness, pode-se observar novamente que “Maria” e “Camisa do Corinthians” são os nós mais intermediários, ou seja, que liga vários outros atores que não se conectam diretamente. 

![Rede Two Mode - Medidas de Centralidade](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/rede%20two%20mode%20-%20medidas.PNG)

Nas figuras de 13 a 15, pode-se observar diversas visualizações da rede tomando como parâmetros as medidas de centralidade degree, closeness e betweenness, e constatar visualmente o que foi discutido no parágrafo anterior.

![Figura 13: Plot da rede tomando closeness como parâmetro de raio do nó.
gplot(gcompras,gmode="twomode",displaylabels = TRUE, edge.col="gray",label.cex = 0.7,usearrows=FALSE, vertex.cex = closeness(gcompras,gmode="twomode")*3)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/Rede%20Two%20Mode%204.png)

![Figura 14: Plot da rede tomando degree como parâmetro de raio do nó.
gplot(gcompras,gmode="twomode",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=degree(gcompras,gmode="twomode",cmode="indegree")/4)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/Rede%20Two%20Mode%205.png)

![Figura 15: Plot da rede tomando betweenness como parâmetro de raio do nó.
gplot(gcompras,gmode="twomode",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=betweenness(gcompras,gmode="twomode")/25)](https://github.com/ricardobreis/Network-Analysis-Case-Studies/blob/master/img/Rede%20Two%20Mode%206.png)
