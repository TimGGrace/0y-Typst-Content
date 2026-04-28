#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)

== Graphs Prework Quiz
#Comp
1. Complete the prework quiz on Google Classroom
2. #underline[#bold[When you are done with the quiz:]]
#place(dy:1em,)[#text(24pt)[Amy, Ben, Cat, Dave, Emma and Fred are waiting in a doctor's surgery. Looking around the room, each of them sees that they know some of the other people in the room. \
Ben knows five of the other people sitting in the room, Cat knows four of the others, Emma and Fred both know three of the others, Dave knows two of the others and Amy only knows one of the other people.\
When one person knows another, you can assume that they know each other. \
Who knows who in the waiting room?]]

= Graphs
#note[Keywords: `Vertex; Node; edge; arc; neighbour; degree; weighted graph; directed graph; adjacency matrix; adjacency list;`]

#KeyPerson(
  title: "Dr Daphne Koller BSc, MSc, PhD", 
  image-path: "../Comp Sci/Year 1/Half Term 5/img/Daphne Koller.png",
  link-path:"https://ai.stanford.edu/~koller/bio.html",
  content:[
    Daphne founded Insitro, a drug discovery startup, using machine learning to predict and test treatments for diseases. 

    Her work as a Bayesian statistician helps machine learning models learn from vast collections of data.
  ])

== Recall
#notes
#spotlight()[What is an Abstract Data Type?]
#uncover(2)[
  #place(dy:1em)[
    #text(red, 28pt)[
      #bold[Abstract:] Without unnecessary details about implementation

      #bold[Data type:] A format for information that is to be stored.
    ]
  ]
]

== Sprouts
#mwb
#text(22pt)[
  Starting with a few spots drawn on a sheet of paper, players take turns, where each turn consists of drawing a line between two spots (or from a spot to itself) and adding a new spot somewhere along the line. The players are constrained by the following rules:
]
#text(18pt)[
  #uncover("2-")[
    - The line may be straight or curved, but must not touch or cross itself or any other line.
    - The new spot cannot be placed on top of one of the endpoints of the new line. Thus the new spot splits the line into two shorter lines.
  ]
  #uncover("3-")[
    - No spot may have more than three lines attached to it. For the purposes of this rule, a line from the spot to itself counts as two attached lines and new spots are counted as having two lines already attached to them.
  ]
  #uncover("4-")[
    - You cannot touch a dot twice with one line then connect it to another.
  ]
  #uncover("5-")[
    - The player who makes the last move wins.
  ]
]
== Definitions
#notes
#text(22pt)[
  #table(columns:(0.5fr,1.5fr),stroke:0pt,row-gutter:15pt,
  [Graph:],[A diagram consisting of points, called verticies, joined by lines called edges. Each edge joins two vertices],
  uncover("2-")[Vertex _or_ Node:],uncover("2-")[An object in a graph],
  uncover("3-")[Edge _or_ Arc:],uncover("3-")[A line representing a connection between two nodes in a graph],
  uncover("4-")[Neighbour:],uncover("4-")[Vertices are considered neigbours if they share an edge],
  uncover("5-")[Degree:],uncover("5-")[The number of edge connections on a vertex],
  uncover("6-")[Weighted Graph:],uncover("6-")[A graph in which all edges are given a value, called weight],
  uncover("6-")[Directed Graph:],uncover("6-")[A graph in which all edges are given a direction]
)
]

== Examples of graph
#table(columns:(1fr,1.2fr, 1fr),
[Graph],[Vertices],[Edges],
[Internet],uncover("2-")[Web Pages],uncover("3-")[Hyperlinks],
[Social Networks],uncover("2-")[People],uncover("3-")[Friendships],
[Circuits],uncover("2-")[Components \ (eg. resistors, logic gates)],uncover("3-")[Wires],
[Transportation],uncover("2-")[Airports],uncover("3-")[Routes],
[Chemicals],uncover("2-")[Molecules],uncover("3-")[Bonds])
#uncover(4)[
  #mwb
  For each of these, decide:
  1. Should it be an undirected, or directed graph?
  2. What could be used for the weights on these graphs?
]

== Graph Practice
#notes
Different species of animal, A, B, C, D and E need to be \ assigned to holding cages so that the following rules are observed:
#enum(numbering:"A:")[
  must not be in the same cage as B and C.
][
  must not be in the same cage as D and E.
][
  must not be in the same cage as A and D.
][
  must not be in the same cage as A, B and C.
][
  must not be in the same cage as A, B and D.
]
#uncover("2-")[1. Represent this problem with a graph.
2. What is the minimum number of cages that will be required?]
#place(dy:0.6em,)[#uncover(3)[#text(red)[4 cages, with species C sharing a cage with either B or E.]]]

== Representing a graph
#notes
Programming these visual graphs can be really problematic for a computer. We should be looking at different ways of discussing them.#pause

You need to know about an *Adjacency Matrix* and an *Adjacency List*#pause

We need to be able to make them for both digraphs and undirected graphs.

== undirected Example:
#notes
#place(center+horizon)[#diagram(
  node([A],stroke:1pt,inset:15pt,name:<A>),
  node((1,0),[B],stroke:1pt,inset:15pt,name:<B>),
  node((1.8,0.5),[C],stroke:1pt,inset:15pt,name:<C>),
  node((1,1),[D],stroke:1pt,inset:15pt,name:<D>),
  node((0,1),[E],stroke:1pt,inset:15pt,name:<E>),

  edge(<A>,<B>,"-"),
  edge(<A>,<E>,"-"),
  edge(<A>,<D>,"-"),
  edge(<B>,<C>,"-"),
  edge(<C>,<D>,"-"),
  edge(<E>,<B>,"-")
)]
== directed Example:
#notes
#place(center+horizon)[#diagram(
  node([A],stroke:1pt,inset:15pt,name:<A>),
  node((1,0),[B],stroke:1pt,inset:15pt,name:<B>),
  node((1.8,0.5),[C],stroke:1pt,inset:15pt,name:<C>),
  node((1,1),[D],stroke:1pt,inset:15pt,name:<D>),
  node((0,1),[E],stroke:1pt,inset:15pt,name:<E>),

  edge(<A>,<B>,"-|>"),
  edge(<A>,<E>,"-|>"),
  edge(<D>,<A>,"-|>"),
  edge(<B>,<C>,"-|>"),
  edge(<D>,<C>,"-|>"),
  edge(<E>,<B>,"-|>"),
  edge(<B>,<D>,"-|>",bend:20deg),
  edge(<D>,<B>,"-|>",bend:20deg),
)]

== You Try
#notes
1. Draw the graph represented by this adjacency list.
#table(columns:(100pt,150pt),
[Vertex],[Adjacent],
[A],[B, C, E],
[B],[A, D],
[C],[A, D],
[D],[D, E, C],
[E],[A, D])
2. Draw the adjacency matrix for that graph.

== You Try
Represent the graph as both an adjacency matrix and an adjacency list.
#place(center+horizon)[#diagram(
  node([1],stroke:1pt,inset:15pt,name:<1>),
  node((2,0),[2],stroke:1pt,inset:15pt,name:<2>),
  node((1,0.5),[5],stroke:1pt,inset:15pt,name:<5>),
  node((2,1),[4],stroke:1pt,inset:15pt,name:<4>),
  node((0,1),[3],stroke:1pt,inset:15pt,name:<3>),

  edge(<1>,<2>,"-"),
  edge(<1>,<3>,"-"),
  edge(<1>,<5>,"-"),
  edge(<2>,<4>,"-"),
  edge(<2>,<5>,"-"),
  edge(<4>,<3>,"-"),
  edge(<5>,<3>,"-"),
  edge(<4>,<5>,"-"),
)]

== Matrices vs Lists
#notes
Not quite as easy as 'one is better'...#pause

If you have an adjacency *matrix*, it's faster to check to see if two nodes are neighbours. It's also quicker to add/remove edges.#pause

However, an adjacency *list* can take up significantly less memory for *sparse graphs*, as there is no wasted memory.#pause

*Sparse*: A grpah with few edges #underline[compared to] the number of nodes.

== More terms:
#notes
Let's look at some terms, and examples of them.
- #bold[Connectivity]#pause : A graph is connected if there is a path between each pair of vertices.#pause
- #bold[Cycle]#pause : A Closed path in which all the edges are different 	and all the intermediate vertices are different#pause
- #bold[Tree]#pause : A connected undirected graph with no cycles#pause
- #bold[Rooted Tree]#pause : A tree in which one vertex has been designated 	as the root. Rooted trees have parent-child 	relationships between adjacent nodes.

== Rooted Trees
#notes
#place(dy:0.7em,dx:12em)[#diagram(
  node((0,0)," ",stroke:1pt,radius:15pt,name:<1>),
  node((-1.5,0.8)," ",stroke:1pt,radius:15pt,name:<21>),
  node((-0.5,0.8)," ",stroke:1pt,radius:15pt,name:<22>),
  node((0.5,0.8)," ",stroke:1pt,radius:15pt,name:<23>),
  node((1.5,0.8)," ",stroke:1pt,radius:15pt,name:<24>),

  node((-1.8,1.5)," ",stroke:1pt,radius:15pt,name:<31>),
  node((-1.4,1.5)," ",stroke:1pt,radius:15pt,name:<32>),
  node((-1,1.5)," ",stroke:1pt,radius:15pt,name:<33>),

  edge(<1>,<21>),
  edge(<1>,<22>),
  edge(<1>,<23>),
  edge(<1>,<24>),

  edge(<21>,<31>),
  edge(<21>,<32>),
  edge(<21>,<33>),
)]

#place(dy:2.5em,)[If a node has no parent, \ it must be the *root node*.

If a node has a parent \ and no children, it is \ a *leaf* _or_ *terminal* node.

If it is a parent and has a child/children, it is an *internal* node.

If all nodes have *at most* two children, then a rooted tree becomes a *binary tree*.
]