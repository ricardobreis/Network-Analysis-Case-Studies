## Exemplo de SNA - Social Network Analysis - Rede ONE MODE

# Extensões para Análise de Redes
#(devem ser previamente baixadas no CRAN do R)

install.packages("network")
library(network)
install.packages("sna")
library(sna)
install.packages("rgl")
library(rgl)
library(tibble)

# Trabalha a partir de uma rede aleatória
# rede <- read.table("C:/Users/Ricardo/Downloads/Rede One Mode_Tarefa Aula 1_Berrini T1.xlsx",header=TRUE,sep = ";", dec=",")
rede <- read_excel("~/MBA/Análise de Mídias Sociais e Text Mining/Rede One Mode_Tarefa Aula 1_Berrini T1.xlsx")

# Adaptando o data.frame rede para que possa servir para a montagem da rede
grede <- rede[,2:24]
#rownames(grede) <- rede[,1]
grede <- column_to_rownames(rede, 'Label')

# Mudando valor
grede[21,12] <- 1

# Construindo a rede a partir da matriz de relações (0 e 1)
gplot(grede)
gplot(grede,gmode="graph",displaylabels = TRUE)
gplot(grede,gmode="graph",displaylabels = TRUE,edge.col="gray",usearrows=FALSE)

# Explorando a rede
degree(grede,gmode="graph",cmode="indegree")
closeness(grede,gmode="graph")
betweenness(grede,gmode="graph")

# Aprimorando a representação da rede
gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=degree(grede,gmode="graph",cmode="indegree")/3)

gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,label=degree(grede,gmode="graph",cmode="indegree"))

gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=closeness(grede,gmode="graph")*2)

gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,label=round(closeness(grede,gmode="graph"),digits=2))

gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,vertex.cex=betweenness(grede,gmode="graph")/3+1)

gplot(grede,gmode="grede",displaylabels = TRUE, edge.col="gray",usearrows=FALSE,label=betweenness(grede,gmode="graph"))

# Grand finale... para impressionar
gplot3d(grede)

# Comando útil para explorar redes
# Gera redes aleatórias
grede2 <- rgraph(10)
grede2

# Interprete as métricas de centralidade de grau, proximidade e intermediação
# para a rede da variável grede
