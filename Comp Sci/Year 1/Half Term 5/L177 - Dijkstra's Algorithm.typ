#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)
#let properties = (
  inset:10pt,
  stroke:1pt,
  fill:green.darken(40%).transparentize(40%)
)

#let starterGraph = diagram(
  node(name:<B>,[B], ..properties),
  node((0,1),name:<A>,[A],..properties),
  node((1,1),name:<F>,[F],..properties),
  node((2,1),name:<E>,[E],..properties),
  node((1,0),name:<C>,[C],..properties),
  node((2,0),name:<D>,[D],..properties),

  edge(<A>,<B>), edge(<A>,<C>), edge(<A>,<F>),
  edge(<B>,<C>),
  edge(<C>,<D>), edge(<C>,<E>),
  edge(<D>,<E>),
  edge(<F>,<E>)

)

== Starter
#notes
#place(dy:-2em,dx:17em,)[#starterGraph]
1. Create an adjacency matrix for \ the graph.
2. Create an adjacency list for \ the graph.
3. When is it advantageous to use an \ adjacency list over an adjacency matrix?
4. Draw the graph for the \ adjacency matrix:
#place(dy:-4em,dx:19.5em,)[#table(align:center,columns:range(8).map(_=>30pt),
[],[A],[B],[C],[D],[E],[F],[G],
[A],[-],[2],[5],[-],[-],[-],[-],
[B],[2],[-],[4],[-],[-],[7],[-],
[C],[5],[4],[-],[6],[-],[-],[-],
[D],[-],[-],[6],[-],[3],[4],[-],
[E],[-],[-],[-],[3],[-],[-],[4],
[F],[-],[7],[-],[4],[-],[-],[2],
[G],[-],[-],[-],[-],[4],[2],[-],)]
== Starter Solution
#place(dy:1em,dx:-1em,)[1. #table(align:center,columns:range(7).map(_=>30pt),
[],[A],[B],[C],[D],[E],[F],
[A],[-],[1],[1],[-],[-],[1],
[B],[1],[-],[1],[-],[-],[-],
[C],[1],[1],[-],[1],[1],[-],
[D],[-],[-],[1],[-],[1],[1],
[E],[-],[-],[1],[1],[-],[1],
[F],[1],[-],[-],[-],[1],[-],
)]
#place(dy:-1.5em,dx:15em)[
  2. #table(columns:(30pt,auto),
  table.cell(align:center)[A],[B, C, F],
  table.cell(align:center)[B],[A, C],
  table.cell(align:center)[C],[A, B, D, E],
  table.cell(align:center)[D],[C, E],
  table.cell(align:center)[E],[C, D, F],
  table.cell(align:center)[F],[A, E])
]
#place(dy:9.5em,dx:-1em)[
3. When there are relitavely few \ edges compared to the number \ of nodes.
]
#place(dy:7em,dx:15em)[
  4. #place(dy:-1.5em,)[#diagram(
    node((0,0.5),name:<A>,[A],..properties),
    node((1,0),name:<B>,[B],..properties),
    node((2,0.5),name:<E>,[E],..properties),
    node((0,1.5),name:<D>,[D],..properties),
    node((1,2),name:<C>,[C],..properties),
    node((2,1.5),name:<F>,[F],..properties),
    node((3,1),name:<G>,[G],..properties),

    edge(<A>,<B>,label:[2],label-sep:-5pt),
    edge(<A>,<C>,label:[5],label-sep:-3pt,label-pos:0.3),
    edge(<B>,<C>,label:[4],label-sep:-5pt,label-pos:0.3),
    edge(<F>,<B>,label:[7],label-sep:-5pt,label-pos:0.3),
    edge(<C>,<D>,label:[6],label-sep:-5pt,label-side: left),
    edge(<D>,<E>,label:[3],label-sep:-5pt,label-pos:0.4),
    edge(<D>,<F>,label:[4],label-sep:-3pt,label-pos: 0.7),
    edge(<E>,<G>,label:[4],label-sep:-3pt),
    edge(<F>,<G>,label:[2],label-sep:-3pt),
  )]
]


= Dijkstra's Algorithm
#note[Keywords: `graph; node; vertex; edge; adjacency matrix; adjacency list; shortest path;`]
#only(2)[
  #place(dy:-8em,dx:5em)[#image("img/177 spec.png",height:80%)]
]

== Dijkstra's Algorithm
#notes
Dijkstra's algorithm finds *the shortest route from one node to \ every other node in a weighted graph*.#pause

It is used in:
- Sat Navs
- Network Routing / packet switching
- Logistics and scheduling, eg. Delivery Company#pause

It requires a *weighted graph* with *only positive* weights.

== Implementing Dijkstra's Algorithm
You may have seen this algorithm in Further maths, drawing boxes etc.

That's great for people, but sucks for computers. Let's look at how we might do this with a table.#pause

Because tables could be programmed as arrays...

== Implementing Dijkstra's
#let properties = (
  inset:20pt,
  stroke:1pt,
  fill:green.darken(40%).transparentize(40%)
)
#place(dy:1.5em,)[#diagram(
    node((0,0),name:<A>,[A],..properties),
    node((1.3,0),name:<B>,[B],..properties),
    node((2.5,1.1),name:<E>,[E],..properties),
    node((1.5,1.1),name:<D>,[D],..properties),
    node((0.5,1),name:<C>,[C],..properties),
    node((2.5,0),name:<F>,[F],..properties),
    node((3.5,0.5),name:<G>,[G],..properties),

    edge(<A>,<B>,label:[2],label-sep:0pt),
    edge(<A>,<C>,label:[5],label-sep:0pt, label-side: right),
    edge(<B>,<C>,label:[4],label-sep:0pt),
    edge(<F>,<B>,label:[7],label-sep:0pt),
    edge(<C>,<D>,label:[6],label-sep:0pt,label-side: left),
    edge(<D>,<E>,label:[3],label-sep:0pt,label-pos:0.4),
    edge(<D>,<F>,label:[4],label-sep:0pt,label-pos: 0.7),
    edge(<E>,<G>,label:[4],label-sep:0pt),
    edge(<F>,<G>,label:[2],label-sep:0pt),
  )]
#place(dx:20em,)[
  #table(columns:(80pt,200pt),
  [Node],[Previous + Weight],
  [A],[NULL,0],
  [B],[NULL, $infinity$],
  [C],[NULL, $infinity$],
  [D],[NULL, $infinity$],
  [E],[NULL, $infinity$],
  [F],[NULL, $infinity$],
  [G],[NULL, $infinity$],)
]
#place(dy:9.5em,dx:15em,)[
  `while unvisited != empty
    N = node with minimum weight
    Foreach neigbour of N:
      If better weight:
        update Weight
        update Previous
  `]
  #place(dy:12em,dx:-1em)[`unvisited: {A, B, C, D, E, F, G}`]

== Finding the route
#place(dy:1.5em,)[#diagram(
    node((0,0),name:<A>,[A],..properties),
    node((1.3,0),name:<B>,[B],..properties),
    node((2.5,1.1),name:<E>,[E],..properties),
    node((1.5,1.1),name:<D>,[D],..properties),
    node((0.5,1),name:<C>,[C],..properties),
    node((2.5,0),name:<F>,[F],..properties),
    node((3.5,0.5),name:<G>,[G],..properties),

    edge(<A>,<B>,label:[2],label-sep:0pt),
    edge(<A>,<C>,label:[5],label-sep:0pt, label-side: right),
    edge(<B>,<C>,label:[4],label-sep:0pt),
    edge(<F>,<B>,label:[7],label-sep:0pt),
    edge(<C>,<D>,label:[6],label-sep:0pt,label-side: left),
    edge(<D>,<E>,label:[3],label-sep:0pt,label-pos:0.4),
    edge(<D>,<F>,label:[4],label-sep:0pt,label-pos: 0.7),
    edge(<E>,<G>,label:[4],label-sep:0pt),
    edge(<F>,<G>,label:[2],label-sep:0pt),
  )]
#place(dx:20em,)[
  #table(columns:(80pt,200pt),
  [Node],[Previous + Weight],
  [A],[NULL,0],
  [B],[A, 2],
  [C],[A, 5],
  [D],[C, 11],
  [E],[D, 14],
  [F],[B, 9],
  [G],[F, 11],)
]
#place(dy:9.5em,dx:14em,)[
  `current = destination
add current to the list route.
while current.previous is not NULL:
  current = current.previous
  add current to the list route`
]

== What to expect when doing Dijkstra's
#place(dy:-1em,dx:16.5em,)[#image("img/177 spec.png")]

In an exam, you could be given a table \ like in the example.

You could also be given pseudocode \ or slightly different instructions to \ follow.

It is important to follow *exactly* what \ the instructions say.

== Your Turn - use Dijkstra's algorithm to find the shortest path from A to F

#place(dy:0em,dx:19em,)[
  #diagram(
    node(name:<A>,[A],..properties),
    node((1,-0.7),name:<B>,[B],..properties),
    node((0.3,1.2),name:<C>,[C],..properties),
    node((1,0.35),name:<D>,[D],..properties),
    node((2,0),name:<E>,[E],..properties),
    node((1.7,1.2),name:<F>,[F],..properties),
    
    edge(<A>,<B>,[8],label-sep: 0pt,),
    edge(<A>,<D>,[5],label-sep: 0pt,),
    edge(<A>,<C>,[3],label-sep: 0pt,label-side:right),
    edge(<B>,<D>,[1],label-sep: 0pt,label-side:left),
    edge(<B>,<E>,[5],label-sep: 0pt,),
    edge(<D>,<E>,[9],label-sep: 0pt,),
    edge(<C>,<D>,[6],label-sep: 0pt,),
    edge(<C>,<F>,[6],label-sep: 0pt,label-side:right),
    edge(<D>,<F>,[4],label-sep: 0pt,),
    edge(<F>,<E>,[2],label-sep: 0pt,label-side:right),
  )
]
#place(dy:0.5em)[
  #text(20pt)[`Add every vertex to a list of unvisited nodes. 
Add each node to the path dictionary.
Give the source node a distance of zero. 
Give every other node a distance of infinity.
While the unvisited list is not empty:
	Remove the node with the smallest weight 
        from the list. Call this current.
	For each unvisited neighbour of current:
		If you can improve the weight:
			Update the weight
			Update the previous to be current`]
]

