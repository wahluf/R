library("optrees")
nodes <- 1:5
arcs <- matrix(c(1,2,2,
                 1,3,2,
                 1,4,3,
                 2,5,5,
                 3,2,4,
                 3,5,3,
                 4,3,1,
                 4,5,0),
                 ncol = 3, byrow=TRUE)

# Shorten Path tree
getShortestPathTree(nodes,
                    arcs,
                    algorithm="Dijkstra",
                    directed=FALSE)

nodes2 <- 1:7
arcs2 <- matrix(c(1,2,3,  # dibacanya 1 ke 2 = 3
                  1,3,9,
                  2,5,1,
                  2,4,7,
                  3,2,2,
                  3,4,7,
                  3,5,4,
                  4,7,8,
                  4,5,5,
                  4,6,2,
                  5,6,9,
                  6,7,4),
                  ncol = 3, byrow = TRUE)

result <- getShortestPathTree(nodes2,
                    arcs2,
                    algorithm="Dijkstra",
                    directed=FALSE)



nodes3 <- 1:5
arcs3 <- matrix(c(1,2,7,# dibacanya 1 ke 2 = 3
                  1,3,3,
                  2,5,6,
                  2,4,2,
                  2,3,1,
                  3,2,1,
                  3,4,2,
                  4,2,2,
                  4,6,4),
                ncol = 3, byrow = TRUE)

result <- getShortestPathTree(nodes3,
                              arcs3,
                              algorithm="Dijkstra",
                              directed=FALSE)

nodes4 <- 1:6
arcs4 <- matrix(c(1,2,1,
                  1,3,2,
                  2,3,1,
                  2,4,3,
                  2,5,2,
                  3,4,1,
                  3,5,2,
                  4,5,4,
                  4,6,3,
                  5,6,3), ncol = 3, byrow = TRUE)

result <- getShortestPathTree(nodes4,
                              arcs4,
                              algorithm="Dijkstra",
                              directed=FALSE)
