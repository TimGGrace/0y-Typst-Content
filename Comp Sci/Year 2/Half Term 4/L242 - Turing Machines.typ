#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)

#let fsm1 = diagram(
  node-stroke:1pt,
  node((0,0),circle()[S1],name:<A>,radius:1.5em),
  edge((-0.8,0),"<|-"),
  edge(<A>,<A>,"-|>", [1],bend:120deg),
  node((1.5,0),[S2],name:<B>, radius:1.5em,),
  edge(<A>,<B>,[0],bend:30deg,"-|>"),
  edge(<B>,<A>,[0],bend:30deg,"-|>"),
  edge(<B>,<B>,[1],bend:120deg,"-|>")
)
#let fsm2 = diagram(
  node-stroke:1pt,
  node((0,0),[S1],name:<A>,radius:1.5em),
  edge((-0.8,0),"<|-"),
  node((1.5,0),[S2],name:<B>, radius:1.5em,),
  node((0.3,0.8),[S3],name:<C>,radius:1.5em),
  node((2,0.8),circle()[S4],name:<D>,radius:1.5em),
  
  edge(<A>,<B>,[a],bend:30deg,"-|>",label-sep: -2pt),
  edge(<B>,<A>,[b],bend:30deg,"-|>",label-sep: -2pt),
  edge(<B>,<B>,[a],bend:120deg,"-|>",label-sep: -2pt),
  edge(<C>,<A>,[a],bend:30deg,"-|>",label-sep: -2pt),
  edge(<C>,<D>,[b],"-|>", bend:30deg,label-sep: -3pt),
  edge(<D>,<C>,[d],"-|>", bend:30deg,label-sep: -3pt),
  edge(<B>,<D>,[c],"-|>", bend:30deg,label-sep: -3pt)
  
)
== Starter
#notes
1. Describe what this FSM will accept:
#place(dy:-3em,dx:15em)[#fsm1]
#v(3cm)
2. Which of the following will this FSM *not* acept?
#place(dy:-1.5em,dx:15em)[#fsm2]
#place(dy:15pt)[#text(22pt)[#enum(numbering:"a.")[abac][abbaac][aaaaaaaaaaaaac][aacdaaaaaabac][aaaacd][aacdaabc]]
]

= Turing Machines
#note[Keywords: `Turing; tape; state transition diagrams; transition rules; read write head; infinite tape; Universal Turing Machines`]
#only(2)[#place(dy:-8em,dx:7em)[
  #image("img/242 spec.png", height:120%)
]]

== Turing Machines
#place(dx:-3em,dy:10em)[#image("img/Turing.png", width:6em,)]
In 1936, after Alonzo Church's paper called `Entscheidungsproblem`, Alan Turing wrote a paper with the catch title:
#align(center)[`On Computable Numbers, with an Application to the Entscheidungsproblem`]#pause
Within this paper, he introduced the concept of a *Turing Machine*

== Turing Machines
#notes
*Turing Machines* are useful models, as it was shown that anything a modern computer can do can also be represented using a Turing machine.

In fact, Turing machines can do more, as they've got *infinite memory*
#place(dx:20em,dy:1em,)[#image("img/turing machine.png", height:10em,)]

== Turing Machines
#notes
This is an imaginary machine that consists of:
1. A deterministic finite state automaton
2. An infinitely long tape

We can think of a Turing Machine as a computer with a #bold[single fixed program].

== Creating a Turing Machine
#notes
#place(dx:20em,dy:6em,)[#image("img/turing machine.png", height:10em,)]
To make the machine, we will need:
- A finite alphabet of symbols (eg `0`, `1`, #emoji.square)#pause
- A finite set of states (eg S0, S1, S2...)#pause
- One of these must be the start state #pause
- An infinite tape with discrete squares #pause
- A read-write head that can move.#pause

#place(dy:2em)[The read-write head can:
- Read the current square
- Change the current square
- Move left or right]

== Let's try!
#mwb
Draw the following tape on your whiteboards:
#table(columns:range(0,12).map(_=>1fr), inset:20pt, align:center,
table.cell(stroke:(left:0pt))[],[#emoji.square],[`0`],[`1`],[`0`],[`0`],[`1`],[`1`],[`1`],[`1`],[#emoji.square],table.cell(stroke:(right:0pt))[])
#place(dy:0.5em,dx:12.8em)[#rotate(-90deg)[#text(60pt)[$->$]]]

== Let's try!
#let TM1 = diagram(
  node-stroke:1pt,
  node((0,0.5),[S0],name:<S0>,radius:2em),
  edge((-1,0.5),<S0>,"-|>"),
  node((2.5,0),[S1],name:<S1>,radius:2em),
  node((5,0.8),circle(radius:1.5em)[S2],name:<S2>,radius:2em),

  edge(<S0>,<S0>,bend:120deg,"-|>",[0, 1 | $<-$], label-sep:-3pt),
  edge(<S0>,<S1>,"-|>",bend:30deg,[#emoji.square | $->$]),
  edge(<S1>,<S1>,bend:120deg,"-|>",[0, 1 | #emoji.square $->$], label-sep: -3pt),
  edge(<S1>,<S2>,bend:30deg,"-|>",[#emoji.square | $<-$], label-sep:-3pt,) 
)
#TM1

== Let's try: reset!
#mwb
Draw the following tape on your whiteboards:
#table(columns:range(0,12).map(_=>1fr), inset:20pt, align:center,
table.cell(stroke:(left:0pt))[],[#emoji.square],[`0`],[`1`],[`0`],[`0`],[`1`],[`1`],[`1`],[`1`],[#emoji.square],table.cell(stroke:(right:0pt))[])
#place(dy:0.5em,dx:12.8em)[#rotate(-90deg)[#text(60pt)[$->$]]]

== Let's try!
#place(dy:1em)[#diagram(
  node-stroke:1pt,
  node((0,0),[S1],name:<S1>,radius:2em),
  edge((-1,0),<S1>,"-|>"),
  node((1.5,0),[S2],name:<S2>,radius:2em),
  node((1,1),circle(radius:1.5em)[Stop],name:<Stop1>,radius:2em),
  node((2.5,1),[S3],name:<S3>,radius:2em),
  node((3,0),circle(radius:1.5em)[Stop],name:<Stop2>,radius:2em),

  edge(<S1>,<S1>,bend:120deg,"-|>",[0,1|$->$],label-sep:-3pt),
  edge(<S1>,<S2>,"-|>",[#emoji.square | $<-$]),
  edge(<S2>,<S2>,bend:120deg,"-|>",[1 | 0 $<-$], label-sep:-3pt),
  edge(<S2>,<Stop1>,"-|>",[#emoji.square | $->$], label-sep:-3pt,),
  edge(<S2>,<S3>,"-|>",[0 | 1 $<-$], label-sep:-5pt, label-side:right, label-pos:0.7),
  edge(<S3.south>,<S3.east>,bend:-120deg,"-|>",[0,1 | $<-$], label-sep:-5pt),
  edge(<S3>,<Stop2>,"-|>",[#emoji.square | $->$], label-side:right,label-sep:-3pt,)
)]

== Transition Functions
#notes
An alternative way these can be shown is a Transition function, \ like this:
$ delta ("S1", 1) = ("S2", #emoji.square, -> ) $

This means:
1. If you are at S1, and read a 1#pause
2. Move to S2#pause
3. Change the symbol to a square#pause
4. Move the head to the right
== Practice
#mwb
Write the state transitions for the following State Transition Diagram:
#TM1
== Solution:
#grid(columns:(1fr,1fr),
[ $delta ("S0",0) = ("S0",0,<-)$

  $delta ("S0",1) = ("S0",1,<-)$ 

  $delta ("S0",#emoji.square) = ("S1",#emoji.square,->)$ 

     ],
[$delta ("S1",0) = ("S1",#emoji.square,->)$ 

  $delta ("S1",1) = ("S1",#emoji.square,->)$
  
  $delta ("S1",#emoji.square) = ("S2",#emoji.square,<-)$])

== But what's so important about them?
#notes
Turing Machines provide a *model of computation*, so can help us understand what is, and is not, *computable*.

Since no physical computer can be more powerful than a Turing Machine, if a Turing Machine cannot solve a yes/no problem, then it is *undecidable*.

== UTM
#notes
The UTM (Universal Turing Machine) simulates the behaviour of \ other Turing Machines when given their transition rules and their input data encoded onto its own tape.

It's a Turing Machine that runs other Turing Machines! (Yo dawg...)

The theory of the UTM underpins the *stored program concept* for the #bold[Von Neumann Architecture].

The consequence is that programs and data really are the same thing.

#link("https://math.hws.edu/eck/js/turing-machine/TM.html")[#rect(stroke:1pt,radius:15pt,inset:10pt,fill:fadedBlue.lighten(50%),[Click to have a play!])]

== For the rest of the lesson
#Comp
1. Complete a Turing Machine exam question \ (use BPCompSci and the exam question spreadsheet) #pause

2. Complete the example questions in the BPCompSci slides for this lesson (L242 Turing Mahcines)#pause

3. Add your Section C Questions to the assignment on Google Classroom#pause

4. Complete CRP's class' Section C Questions on BPCompSci
