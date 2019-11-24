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

