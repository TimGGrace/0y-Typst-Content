#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== True or False?
#notes
#place(dy:2em)[#text(24pt)[
  1. Dijkstra’s algorithm can be used to find the shortest path from one vertex to another.
  2. Dijkstra’s algorithm can be used to find the shortest path from one vertex to all others
  3. Dijkstra’s algorithm can only be used for an adjacency matrix, not an adjacency list
  4. Dijkstra’s algorithm is used on unweighted graphs
  5. Dijkstra’s algorithm can’t be used on directed graphs
  6. You could be asked to perform Dijkstra’s algorithm in an exam
  7. You could be asked to perform Dijkstra’s algorithm in an exam without being given the steps
]]

= Dijkstra's Algorithm 2
#note([What the exam could entail])
== In the exam:
- You are likely to have to perform the algorithm on a table.
- There’s a good chance you’ll be given pseudocode to perform the algorithm and be expected to fill in a trace table.
- Exactly how you fill in the table will depend on the way the pseudocode is laid out… so pay attention to the small details and do exactly as is asked. 

== "Exam"ple
#text(22pt)[``` function Dijkstra(Graph, source):
  create vertex set Q
  for each vertex v in Graph:
    dist[v] <- INFINITY
    prev[v] <- UNDEFINED
    add v to Q
  dist[source] <- 0

  while Q is not empty:
    u <- vertex in Q with min dist[u]
    remove u from Q
    for each neighbor v of u:       //only v that are still in Q
      alt <- dist[u] + length(u,v)
      if alt < dist[v]:
        dist[v] <- alt
        prev[v] <- u
  return dist[], prev[]
```]

== Exam question
#GClass
There's an exam question on Google \ Classroom to have a go at:
\ \
*L223 - Dijkstra's Worksheet*
\ \
#text(purple)[#bold[EXT:] Using a structure for `node`, and the inbuild `PriorityQueue`, program Dijkstra's to run from a list of nodes!

#bold[EXT EXT:] Allow the user to enter the connections and weights manually. Either through console inputs or reading a text file!]