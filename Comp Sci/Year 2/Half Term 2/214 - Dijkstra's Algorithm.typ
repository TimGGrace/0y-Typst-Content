#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.8" : *

#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
#let graph1 = diagram(
  node-stroke:2pt,
  node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
	spacing: 3.8em,
 node((0,0),`B`),
 node((0.6,0),`C`),
 node((1.2,0),`D`),
 node((0,0.6),`A`),
 node((.6,0.6),`F`),
 node((1.2,0.6),`E`),

 edge((0,0),(0.6,0)),
 edge((0,0),(0,0.6)),
 edge((0,0.6),(0.6,0)),
 edge((0.6,0),(1.2,0.6)),
 edge((0.6,0),(1.2,0)),
 edge((1.2,0),(1.2,0.6)),
 edge((0,0.6),(0.6,0.6)),
 edge((0.6,0.6),(1.2,0.6))
)
#place(dy:1.5em,dx:16.5em,graph1)
#place(dy:1.5em,dx:-1em,
text(size:24pt)[
#enum(
  [Create an adjacency matrix for the graph],
  [Create an adjacency list for the graph],
  [When is it advantageous to use an \ adjacency list over an adjacency matrix?],
  [Draw the graph from the following adjacency matrix]
)
#table(columns:8,inset: 8pt,
[],[A],[B],[C],[D],[E],[F],[G],
[A],[-],[2],[5],[-],[-],[-],[-],
[B],[2],[-],[4],[-],[-],[7],[-],
[C],[5],[4],[-],[6],[-],[-],[-],
[D],[-],[-],[6],[-],[3],[4],[-],
[E],[-],[-],[-],[3],[-],[-],[4],
[F],[-],[7],[-],[4],[-],[-],[2],
[G],[-],[-],[-],[-],[4],[2],[-])
]
)
== Solutions:
#enum(
  [Create an adjacency matrix for the graph],
  [Create an adjacency list for the graph],
  [When is it advantageous to use an \ adjacency list over an adjacency matrix?]
)
#place(dy:-5em,dx:19.8em,graph1)
#grid(columns:(0.2fr,0.8fr,0.6fr),[],
[#table(columns:7,inset: 8pt,
[],[A],[B],[C],[D],[E],[F],
[A],[-],[1],[1],[-],[-],[1],
[B],[1],[-],[1],[-],[-],[-],
[C],[1],[1],[-],[1],[1],[-],
[D],[-],[-],[1],[-],[1],[-],
[E],[-],[-],[1],[1],[-],[1],
[F],[1],[-],[-],[-],[1],[-])],
[#table(columns:2,inset:8pt,
[A],[B,C,F],
[B],[A,C],
[C],[A,B,D,E],
[D],[C,E],
[E],[C,D,F],
[F],[A,E])])
== Solutions:
#let graph2 = diagram(
   node-stroke:2pt,
   node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
	  spacing: 3em, label-size:40pt, label-sep:0pt,
   let (a,b,c,d,e,f,g) = ((0,0),(0.7,0),(0.3,0.7),(0.8,0.8),(1.5,0.8),(1.4,0),(2,0.4)),
   node(a,`A`,radius:50pt),
   node(b,`B`,radius:50pt),
   node(c,`C`,radius:50pt),
   node(d,`D`,radius:50pt),
   node(e,`E`,radius:50pt),
   node(f,`F`,radius:50pt),
   node(g,`G`,radius:50pt),
  
   edge(a,b,$2$),
   edge(a,c,$5$),
   edge(b,f,$7$),
   edge(f,g,$2$),
   edge(c,b,$4$),
   edge(c,d,$6$),
   edge(d,e,$3$),
   edge(d,f,$4$),
   edge(e,g,$4$)
 )
#text(60pt)[#graph2]
= Dijkstra's Algorithm
#note[Key words: `graph, node, vertex, edge, adjacency matrix, adjacency list, shortest path`
]
== Dijkstra's Algorithm
The purpose is to find the shortest route from one node to *each* other node in the graph. \ 
If you do FMaths, you'll have come across this already. \
It is used in:
#enum(
  [Sat Navs],
  [Network Routing/Packet Switching],
  [Logistics and scheduling (eg. deliveries)]
)

== Dijkstra's Algorithm
#notes
Dijkstra's algorithm works by calculating the shortest path between a *single source* and *every other vertex* \ \
#pause
As a result, it also produces the shortest path between a vertex and a destination vertex \ \
#pause
It only works on *weighted graphs* with *positive weights* \ \
#pause
The method taught in FMaths works wonderfully for humans, but not for computers$dots$

== Let's start with the previous graph.
#redText([Do not write, just watch this bit]) \ \
#text(60pt)[#graph2]

== Get ready to make notes
#notes
You need to know how to *trace* the algorithm. 
#text(50pt)[#graph2] \
#text(size:24pt)[The specification states: `Students will not be expected to recall the steps in Dijkstra's shortest path algorithm`]

== Table method
#notes
#table(columns:9,inset:10pt,
[Step],[Vertex],[A],[B],[C],[D],[E],[F],[G],
[1],[A(0)],[`  `],[`  `],[`  `],[`  `],[`  `],[`  `],[`  `],
[` `],[],[],[],[],[],[],[],[],
[` `],[],[],[],[],[],[],[],[],
[` `],[],[],[],[],[],[],[],[],
[` `],[],[],[],[],[],[],[],[],
[` `],[],[],[],[],[],[],[],[],
[` `],[],[],[],[],[],[],[],[],
)

== Solution
#only(1)[#table(columns:9,inset:10pt,
[Step],[Vertex],[A],[B],[C],[D],[E],[F],[G],
[1],[A(0)],[],[$2_"A"$],[$5_"A"$],[],[],[],[],
[2],[B(2)],[],[],[$5_"A"$],[],[],[$9_"B"$],[],
[3],[C(5)],[],[],[],[$11_"C"$],[],[$9_"B"$],[],
[4],[F(9)],[],[],[],[$11_"C"$],[],[],[$11_"F"$],
[5],[D(11)],[],[],[],[],[$14_"D"$],[],[$11_"F"$],
[6],[G(11)],[],[],[],[],[$14_"D"$],[],[],
[7],[E(14)],[],[],[],[],[],[],[],
)]
#only(2)[
  #grid(columns:2,column-gutter:15pt,table(columns:3,inset:10pt,
  [Vertex],[Distance from A],[Path],
  [B],[2],[A],
  [C],[5],[A],
  [D],[11],[A,C],
  [E],[14],[A,C,D],
  [F],[9],[A,B],
  [G],[11],[A,B,F]),
  [We can work out the distance from any vertex based on the number circled and the path based on the path of the previous vertex]
)
]

== What to expect when doing Dijkstra's
In reality, a computer won’t be circling values and crossing things out.\ 
Instead it would store the *distances in an array* as well as the *pointers for the previous vertices*. It would also likely use a *priority queue* data structure to select the next node to ‘circle’. \
#text(purple)[In an exam you could be given a table like this. You could also be given pseudocode or slightly different instructions to follow. It is important to follow exactly what the instructions say]

== Your turn: Use Dijkstra's to find the \ shortest path from A to F
#notes
#grid(columns:(1.2fr,1fr),
text(size:24pt,list(
  [Start at A and add all the edges],
  [Choose the lowest as the next vertex and circle it],
  [Add the edges from the new vertex, selecting the lowest weights],
  [Cross out the column once the vertex has been used],
  [Repeat]
))
,
[
  #diagram(
    node-stroke:2pt,
   node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
	  spacing: 3em, node-inset:15pt, label-sep:0pt,
   let (a,b,c,d,e,f) = ((0,0),(1,-0.7),(0.5,1.2),(1,0.3),(2,0),(1.5,1.2)),
    node(a,`A`), node(b,`B`), node(c,`C`),node(d,`D`),node(e,`E`),node(f,`F`),
    edge(a,b,$8$), edge(a,d,$5$), edge(a,c,$3$),edge(c,d,$6$),edge(b,d,$1$),
    edge(b,e,$5$),edge(d,e,$9$),edge(e,f,$2$),edge(d,f,$4$),edge(c,f,$6$,label-side:right)
  )
]
)

== Your turn: Use Dijkstra's algorithm to \ find the shortest path from A to F
#notes
#grid(columns:2,
text(size:24pt,list(
  [Start at A and add all the edges],
  [Choose the lowest as the next vertex and circle it],
  [Add the edges from the new vertex, selecting the lowest weights],
  [Cross out the column once the vertex has been used],
  [Repeat]
)),
table(columns:7,inset:8pt,
[],[A],[B],[C],[D],[E],[F],
[A],[-],[3],[-],[9],[8],[-],
[B],[3],[-],[1],[4],[-],[-],
[C],[-],[1],[-],[2],[-],[11],
[D],[9],[4],[2],[-],[3],[2],
[E],[8],[-],[-],[3],[-],[5],
[F],[-],[-],[11],[2],[5],[-],))

== Exam(ple) Question
#Comp
Attempt *2018 Paper 1 Q3*, on BPCompSci