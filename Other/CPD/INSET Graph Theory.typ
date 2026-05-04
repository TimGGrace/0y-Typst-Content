#import "../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)

== Graphs Starter
#mwb
#place(dy:1em,)[#text(24pt)[
  Amy, Ben, Cat, Dave, Emma and Fred are waiting in a \ doctor's surgery. Looking around the room, each of them sees \ that they know some of the other people in the room. \ \
  Ben knows five of the other people sitting in the room, Cat knows four of the others, Emma and Fred both know three of the others, Dave knows two of the others and Amy only knows one of the other people.\ \
  When one person knows another, you can assume that they know each other. \
  #bold[Who knows who in the waiting room?]
]]

= Graphs
#note[Keywords: `Vertex; Node; edge; arc; neighbour; degree; weighted graph; directed graph;`]

#KeyPerson(
  title: "Dr Daphne Koller BSc, MSc, PhD", 
  image-path: "../Comp Sci/Year 1/Half Term 5/img/Daphne Koller.png",
  link-path:"https://ai.stanford.edu/~koller/bio.html",
  content:[
    Daphne founded Insitro, a drug discovery startup, using machine learning to predict and test treatments for diseases. 

    Her work as a Bayesian statistician helps machine learning models learn from vast collections of data.
  ])

== Sprouts
#mwb

  Starting with a few spots drawn on a page, players will take it in turn adding a line to the game. The last player to take a move wins.

  In a turn:

#text(20pt)[
  #uncover("2-")[
    1. Draw a line from from one spot to another. 
      - You can join a dot to itself.
  ]
  #uncover("3-")[
    2. Draw a new spot somewhere on that new line.
  ]
  #uncover("4-")[
    Restrictions:
    - No spot can have more than 3 connections.
  ]
  #uncover("5-")[
    - You cannot cross anything when drawing a line.
  ]
]
#uncover(6)[
  #place(dy:-8em,dx:18em,rect(inset:10pt,radius:15pt,fill:orange.lighten(40%),stroke:1pt,align(center)[#text(32pt)[Who is our \ Sprouts Champion?]]))
]
== Definitions
#notes
#text(22pt)[
  #table(columns:(0.5fr,1.5fr),stroke:0pt,row-gutter:15pt,
  [Graph:],[A diagram consisting of points, called verticies, \ joined by lines called edges. Each edge joins two vertices],
  uncover("2-")[Vertex _or_ Node:],uncover("2-")[An object in a graph],
  uncover("3-")[Edge _or_ Arc:],uncover("3-")[A line representing a connection between two nodes in a graph],
  uncover("4-")[Neighbour:],uncover("4-")[Vertices are considered neigbours if they share an edge],
  uncover("5-")[Degree _or_ Order:],uncover("5-")[The number of edge connections on a vertex],
  uncover("6-")[Weighted Graph:],uncover("6-")[A graph in which all edges are given a value, called weight],
  uncover("6-")[Directed Graph:],uncover("6-")[A graph in which all edges are given a direction]
)
]

== Examples of graph
#v(2em)
#table(columns:(1fr,1.2fr, 1fr),
[Graph],[Vertices],[Edges],
[Internet],uncover("2-")[Web Pages],uncover("3-")[Hyperlinks],
[Social Networks],uncover("2-")[People],uncover("3-")[Friendships],
[Circuits],uncover("2-")[Components \ (eg. resistors, logic gates)],uncover("3-")[Wires],
[Transportation],uncover("2-")[Airports],uncover("3-")[Routes],
[Chemicals],uncover("2-")[Molecules],uncover("3-")[Bonds])
#uncover(2)[
  #discuss
  On your own, then in pairs, decide what the edges could represent in these graphs.
]


== Recap
#notes
Today, we've covered:
- Used `Sprouts` to practice graph terminology#pause

- *Definitions* for `Graph`, `Node`, `Edge`, `Neighbour`, `Degree`#pause

- Discussed how graphs can be used to represent a range of real-world scenarios