## SNA - Social Network Analysis - Rede TWO MODE

# Extensões para Análise de Redes
install.packages("network")
library(network)
install.packages("sna")
library(sna)
library(tibble)

# Lê o arquivo com as informações de compras
#compras <- read.table("c:/temp/Exemplo Rede TwoMode.csv",header=TRUE,sep = ";", dec=",")
compras <- read_excel("~/MBA/Análise de Mídias Sociais e Text Mining/Rede Two Mode_Tarefa Aula 1_Berrini T1.xlsx")

# Adaptando o data.frame compras para que possa servir para a montagem da rede
gcompras <- compras[,2:16]
#rownames(gcompras) <- compras[,1]
gcompras <- column_to_rownames(compras, '...1')

# Mudando valor
gcompras[1,1] <- 0

# Construindo a rede a partir da matriz de relações (0 e 1)
gplot(gcompras)
gplot(gcompras,gmode="twomode",displaylabels = TRUE)
gplot(gcompras,gmode="twomode",displaylabels = TRUE, edge.col="gray",label.cex = 0.7,usearrows=FALSE)

# Explorando a rede
degree(gcompras,gmode="twomode",cmode="indegree")
closeness(gcompras,gmode="twomode")
betweenness(gcompras,gmode="twomode")

# Aprimorando a representação da rede
gplot(gcompras,gmode="twomode",displaylabels = TRUE, edge.col="gray",label.cex = 0.7,usearrows=FALSE, vertex.cex = closeness(gcompras,gmode="twomode")*3)
gplot(gcompras,gmode="twomode",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=degree(gcompras,gmode="twomode",cmode="indegree")/4)
gplot(gcompras,gmode="twomode",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=betweenness(gcompras,gmode="twomode")/25)
