#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show math.equation: set text(font:"New Computer Modern Math")
#show: set page(fill: fadedYellow)

== 10 Minutes Bebras Practice
You will all be participating in the 2025 Bebras Computational Thinking challenge in the *second week after half term*. \ \
Practice using the *Bebras 2020-2024 Elite challenges*. \ \
Go to * https://bebras.uk * and click on challenge tab. \ Click on Elite under 2024 Challenge.


== Starter
Which cards do you have to turn over to test the rule:\
`If a card has an odd number on one side, then the other side is grey.`


#place(center+horizon,dy:3em,dx:-11em,rect(radius:25pt,width:7em,height:10em,stroke:3pt+black,text(size:150pt,$7$)))
#place(center+horizon,dy:3em,dx:-3.5em,rect(radius:25pt,width:7em,height:10em,fill:green,stroke:3pt+black,[]))
#place(center+horizon,dy:3em,dx:4em,rect(radius:25pt,width:7em,height:10em,stroke:3pt+black,text(size:150pt,$4$)))
#place(center+horizon,dy:3em,dx:11.5em,rect(radius:25pt,width:7em,height:10em,stroke:3pt+black,fill:rgb(150,150,150),[]))

= Logic Gates and Boolean Algebra
#only(1)[#place(left,dy:1em)[`Keywords: 
Logic; Boolean Algebra; Truth Table; AND; OR; NOT; NOR; NAND; XOR; Logic Circuit; Commutative; Associative; Distributive 
`]]
#pause
//#place(center,dy:-9em,image("../../Images/L118 Spec.png"))

== Imagine you’re a bouncer in spoons. You see four people in front of you… \ Who do you need to investigate?
#enum(
  [Do you need to ask the age of the person drinking a coke?],
  [Do you need to ask what the person - who is clearly in their 50s – is drinking?],
[Do you need to ask the age of the person with a pint of lager?],
[Do you need to ask what the person - who is clearly underage - is drinking? ]
)

== These problems are logically equivalent!

There are some people/cards you need to check because the rule applies directly to them. \ \
#pause
There are some people/cards you don't need to check as the rule doesn't apply to them. \ \
#pause
There are some people/cards you need to check because the rule *may* apply to them. #emph[They may break the rule]

== Boolean expressions
A *Boolean expression* is a condition that can be TRUE or FALSE \ \
#pause
Boolean expressions can be compounded by means of the operators *AND, OR and NOT* \ \ 
#pause
#place(center,dx:10em,dy:1em,image(width:20%,"../../../Templates/mwb.png"))
Write the truth table and draw out the logic circuit symbols for:
#enum([OR gate],
[AND gate],
[NOT gate])

== Practice
//#place(dy:2em,image("../../Images/L118 Gate Practice.png"))
#notes
#pause
#place(dy:4em,dx:10em,rect(stroke:red,fill:white,text(red)[OFF]))
#place(dy:9.8em,dx:10em,rect(stroke:red,fill:white,text(red)[ON]))
#place(dy:15.7em,dx:10em,rect(stroke:red,fill:white,text(red)[OFF]))
#place(dy:4em,dx:23em,rect(stroke:red,fill:white,text(red)[ON]))
#place(dy:8.5em,dx:23em,rect(stroke:red,fill:white,text(red)[OFF]))
#place(dy:13.4em,dx:23em,rect(stroke:red,fill:white,text(red)[ON]))

== Practice
#notes
Write a Boolean Expression for:
//#image("../../Images/L118 Gate Bool1.png")
#pause
#text(red,size:40pt)[$Y = overline(A).B$]
== Practice
#notes
Write a Boolean Expression for:
//#image("../../Images/L118 Gate Bool2.png")
#pause
#text(red,size:30pt)[$Y &= (A+B)dot overline(B) \ #pin(1)&=A.overline(B)+B.overline(B) = A.overline(B)+0=A.overline(B)$#pin(2)]
#pause
#pinit-highlight(1,2,fill:rgb(0,0,255,30),extended-height:1.8em,dy:-35pt)
#place(center+horizon,dx:8em,dy:10em,rect(text(red)[NEVER DO THIS IN AN EXAM],stroke:red+3pt))

== Recall
#mwb
#text(size:32pt)[
  Write the truth table and draw out the logic circuit symbols for:
  #enum(
    [NOR gate],
    [NAND gate],
    [XOR gate])
]

== Practice
What is the *Boolean Equation* for the following circuit?
//#image("../../Images/L118 Gate Bool3.png")
#pause
#text(red,size:40pt,[$ Y = overline(A).B+A.B $])

== Practice
#text(red,size:40pt,[$ Y = overline(A).B+A.B $])
#place(center+horizon,
grid(columns:(1.5fr,0.8fr),
[#table(columns:(1fr,1fr,1fr),
[A],[B],[Y],
[0],[0],[#uncover(2)[0]],
[0],[1],[#uncover(2)[1]],
[1],[0],[#uncover(2)[0]],
[1],[1],[#uncover(2)[1]])
#text(size:32pt)[What is this equivalent to?]],
[#uncover(2)[#rect(radius:15pt,text(size:40pt,red,[$ Y = B $]),stroke: 3pt+red,inset:10pt)]]))

== Simplifying Boolean Algebra
*Why????* \
#uncover("2-6")[Fewer logic gates, means simpler circuits, which means cheaper designs and cheaper processors etc.\ ]
*How?* \
#uncover("3-6")[ - Using a truth table \ ]
#uncover("4-6")[- Using algebra \ ]
#uncover("5-6")[- Exam board prefers the algebra method \ ]
#uncover("6")[- #text(green)[Maths skills required: factorising and multiplying out brackets]]

== Boolean Algebraic Laws
#text(size:32pt)[
*#text(blue)[Commutative]* \
  $A dot B = B dot A \ A + B = B + A$ \
*#text(green)[Associative]* \
  $A dot (B dot C) = (A dot B) dot C \ 
  A + (B + C) = (A + B) + C$ \
*#text(red)[Distributive]* \
  $A dot (B + C) = A dot B + A dot C \
  A + B dot C = (A + B) dot (A + C)$
]

== Simplification using algebra
#enum(
  [Look at the expression.],
  [*Don't panic*],
  [Use one of the *identities* or laws of *commutativity, associativity, distributivity* to reduce one part of the expression.],
  [*Repeat* step 3 until there is nothing left to reduce.]
)

== Example
#text(size:40pt)[
Let's simplify:
$ A + overline(A) dot A $
#uncover("2-3")[$ => A + 0 $]
#uncover("3")[$ => A $]
]

#uncover("2-3")[#place(center,dx:8em,dy:-5.5em,text(30pt,[$arrow.b overline(A) dot A = 0$]))]
#uncover("3")[#place(center,dx:8em,dy:-2.3em,text(30pt,[$arrow.b A+A = 0$]))]

#pause
#place(dx:12em,image(width:15%,"../../../Templates/note-paper.svg"))
#text(30pt,enum(
  [$(A+B) dot (A+C)$],
  [$B dot (A + overline(B))$],
  [$A + A dot B$]
))

== You Try
#notes
#grid(columns:(1fr,1fr),column-gutter: 20pt,
text(32pt,enum(
  [$A dot B + overline(A) dot B$],
  [$overline(A) + B dot overline(A)$],
  [$overline(A) dot (A + B)$],
  [$B dot (A + A dot B)$],
  [$(A + A) dot (A + B)$],
  [$A + A dot A + overline(A) dot B$]
)),
uncover(2)[#text(size:32pt,fill:red,enum(
  [$=B$],
  [$= overline(A)$],
  [$= overline(A) dot B$],
  [$= A dot B$],
  [$= A$],
  [$= A + B$]
))])

== More practice!
Google "MIT Boolean Algebra Worksheet" \ \
A `.pdf` titled 'Problem Set 1' should be the top result. \ \
Have a go at the first set of boolean algebra questions, Q1 to Q27 \ \
Be aware: They will sometimes skip the $dot $ between elements. If there's no symbol, you can assume a dot, eg: $ y overline(y) equiv y dot overline(y)$
