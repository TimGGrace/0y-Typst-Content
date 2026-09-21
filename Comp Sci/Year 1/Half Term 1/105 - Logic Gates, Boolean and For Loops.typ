#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

#import "@preview/circuiteria:0.2.1": *

#QuickQuestions(
  firstSet: (
    (text(22pt)[Write the following infix in RPN:$ (9+3)*2-1 $],[$9 quad 3 quad + quad 2 quad * quad 1 quad -$]),
    ([Write $0001" "0010_2$ in hexadecimal.],[$12_h$]),
    ([State the stored program concept.],[Programs must be resident in main memory to be executed;

    Instructions are fetched sequentially and executed one at a time by the processor;
    ]),
  ),
  secondSet: (
    ([Explain the term 'volatile memory'.],[Memory whose data is\ lost if power is lost.]),
    ([Convert $1100.1001_2$ into decimal.],[$12 9/16 (=12.5625_10)$]),
  )
)

== Weekly Reviews
Every week, we'll have a weekly review.#pause

It's a short 10 mark assessment. You don't need to worry, it's all about recall and skills we've covered.

We'll talk later about why, but all of the research shows #align(center)["testing #bold[is] learning"]#pause

You'll have 15 minutes to complete it,*then* you'll mark it yourself. Don't stop early!

#weeklyReview(title:"R100 - Binary, Hex and RPN")

==
#mwb
``` 
static void Main(string[] args) {
  int cakeEaten = "";
  cakeEaten = Console.ReadKey();
  Console.WriteLine("Did you eat my cake?");
  switch (cakEaten) {
    case "Yes"
      Console.Writeline("That's naughty!");
      break;
    case "No":
      Console.WriteLine(You liar");
      Console.ReadKey();
}
```
#place( bottom+center, dy:1em,
  align(center)[In pairs: #text(fadedBlue)[Identify the mistakes in this C\# code\ (can you find all 9?)]]
)

== Truth Tables and Boolean Algebra
The purpose of truth tables is to consider the behaviour of a logic gate/circuit.

With two inputs, $A$ and $B$, you have $4$ rows. Traditionally, you lay them out like so:
#grid(columns:(1fr,5fr), column-gutter: 50pt,
align(center)[#table( columns:(1fr,1fr,1fr),
  $A$, $B$, $??$,
  $0$,$0$,[],
  $0$,$1$,[],
  $1$,$0$,[],
  $1$,$1$,[],
)],
only(2)[
  #set enum(numbering:"a)")
  Extension:
  + How many rows would you need with $3$ inputs?
  + How many rows with $n$ inputs?
])

== Do you know your logic gates?
#discuss
You need to know the following gates.\ With the people near you, can you draw the gates and truth tables?

#list[AND][OR][NOR][NAND][XOR]

== Gates
#green-book
#only(1)[
#grid(columns:(1fr,1fr),
align(center)[
  #text(fadedBlue,46pt)[AND]
  #circuit({
    wire.stub((0,1.5),"west",name:"A")
    wire.stub((0,1),"west",name:"B")
    wire.stub((1,1.25),"east",name:"Q")

    gates.gate-and(x:0,y:0.75,w:1,h:1,id:"AND")
    wire.wire("w0",((0,1),"AND-port-in1"),style:"zigzag")
    wire.wire("w1",((0,1.5),"AND-port-in0"),style:"zigzag")

  })
  #table( columns:(2em,2em,2em),
  $A$, $B$, $Q$,
  $0$,$0$,$0$,
  $0$,$1$,$0$,
  $1$,$0$,$0$,
  $1$,$1$,$1$,
)
],
align(center)[
  #text(fadedBlue,46pt)[OR]
  #circuit({
    wire.stub((0,1.5),"west",name:"A")
    wire.stub((0,1),"west",name:"B")
    wire.stub((1,1.25),"east",name:"Q")

    gates.gate-or(x:0,y:0.75,w:1,h:1,id:"AND")
    wire.wire("w0",((0,1),"AND-port-in1"),style:"zigzag")
    wire.wire("w1",((0,1.5),"AND-port-in0"),style:"zigzag")

  })
  #table( columns:(2em,2em,2em),
  $A$, $B$, $Q$,
  $0$,$0$,$0$,
  $0$,$1$,$1$,
  $1$,$0$,$1$,
  $1$,$1$,$1$,
)
]
)]
#only(2)[
  #align(center)[
  #text(fadedBlue,46pt)[NOT]
  #circuit({
    wire.stub((0,1.5),"west",name:"A")
    wire.stub((1.2,1.5),"east",name:"Q")

    gates.gate-not(x:0,y:1,w:1,h:1,id:"AND")
    wire.wire("w0",((0,1),"AND-port-in0"),style:"zigzag")

  })
  #table( columns:(2em,2em),
  $A$, $Q$,
  $0$,$1$,
  $1$,$0$,
)
]
]
#only(3)[
#grid(columns:(1fr,1fr),
align(center)[
  #text(fadedBlue,46pt)[NAND]
  #circuit({
    wire.stub((0,1.5),"west",name:"A")
    wire.stub((0,1),"west",name:"B")
    wire.stub((1.2,1.25),"east",name:"Q")

    gates.gate-nand(x:0,y:0.75,w:1,h:1,id:"AND")
    wire.wire("w0",((0,1),"AND-port-in1"),style:"zigzag")
    wire.wire("w1",((0,1.5),"AND-port-in0"),style:"zigzag")

  })
  #table( columns:(2em,2em,2em),
  $A$, $B$, $Q$,
  $0$,$0$,$1$,
  $0$,$1$,$1$,
  $1$,$0$,$1$,
  $1$,$1$,$0$,
)
],
align(center)[
  #text(fadedBlue,46pt)[NOR]
  #circuit({
    wire.stub((0,1.5),"west",name:"A")
    wire.stub((0,1),"west",name:"B")
    wire.stub((1.2,1.25),"east",name:"Q")

    gates.gate-nor(x:0,y:0.75,w:1,h:1,id:"AND")
    wire.wire("w0",((0,1),"AND-port-in1"),style:"zigzag")
    wire.wire("w1",((0,1.5),"AND-port-in0"),style:"zigzag")

  })
  #table( columns:(2em,2em,2em),
  $A$, $B$, $Q$,
  $0$,$0$,$1$,
  $0$,$1$,$0$,
  $1$,$0$,$0$,
  $1$,$1$,$0$,
)
]
)
]
#only(4)[
  #align(center)[
  #text(fadedBlue,46pt)[XOR]
  #circuit({
    wire.stub((0,1.5),"west",name:"A")
    wire.stub((0,1),"west",name:"B")
    wire.stub((1,1.25),"east",name:"Q")

    gates.gate-xor(x:0,y:0.75,w:1,h:1,id:"AND")
    wire.wire("w0",((0,1),"AND-port-in1"),style:"zigzag")
    wire.wire("w1",((0,1.5),"AND-port-in0"),style:"zigzag")

  })
  #table( columns:(2em,2em,2em),
  $A$, $B$, $Q$,
  $0$,$0$,$0$,
  $0$,$1$,$1$,
  $1$,$0$,$1$,
  $1$,$1$,$0$,
)
]
]

== Boolean Algebra Identities
#green-book
We'll be doing algebra with Boolean!

It's a strange world where the only\ available numbers are 0 and 1.#pause

The regular rules of algebra apply (you'll see those later), but there are some extra ones because of the 0/1 restriction.

We call these *Identities*. You'll need to know 9 for today.

#let props = (inset: 10pt, radius:15pt, fill:orange.lighten(60%), stroke:orange+2pt)

== NOT
#green-book
We indicate a variable gets 'notted' by drawing a line over it.
$
  A -> overline(A) -> overline(overline(A)) -> overline(overline(overline(A))) -> ...
$#pause
Our first identity relates to that 'double not'

If you going to *not not* do something, you're doing it! The double NOT cancels.
#align(center)[
  #rect(..props,
    $
  overline(overline(A)) = A
$)]
== OR
#green-book
In Boolean algebra, *OR* is denoted by a plus sign, $+$
$
  A + B
$#pause

We need to know/work out what happens in the following cases:
#only(2)[#grid(columns:(1fr,1fr),
[
  - $A + 0$

  - $A + 1$
],
[
  - $A + A$

  - $A + overline(A)$
])]
#only(3)[#grid(columns:(1fr,1fr),
rect(..props)[
  - $A + 0 = A$

  - $A + 1 = 1$
],
rect(..props)[
  - $A + A  = A$

  - $A + overline(A) = 1$
])]

== AND
#green-book
In Boolean algebra, *AND* is denoted by a dot, $dot$
$
  A dot B
$#pause

We need to know/work out what happens in the following cases:
#only(2)[#grid(columns:(1fr,1fr),
[
  - $A dot 0$

  - $A dot 1$
],
[
  - $A dot A$

  - $A dot overline(A)$
])]
#only(3)[#grid(columns:(1fr,1fr),
rect(..props)[
  - $A dot 0 = 0$

  - $A dot 1 = A$
],
rect(..props)[
  - $A dot A  = A$

  - $A dot overline(A) = 0$
])]

= For Loops
#note[Keywords: `For; counter; loop variable; iteration; definite loop; step;`]#pause
#place(center+horizon,
image("img/meme-for.png"))
== What if you wanted to output something 10 times?
#only(1)[#place(center+horizon,
image("img/for-loops.png"))
]
#only(2)[
  #align(center+horizon)[#text(56pt,fadedBlue)[Would you like to know a\ better way?]]
]

== Use a For loop!
#green-book
```cs
static void Main(string[] args) 
{
  
  for (int i = 0; i < 10; i++) 
  {
    Console.WriteLine("I love Computer Science!");
  }

}
```
A *for* loop is known as *definite iteration*. The variable *`i`* is called a 'counter variable'. By convention, most programmers use `i`.

== Additional features
```cs
for (int i = -10; i < 11; i++) {
  Console.WriteLine(i);
}
```#pause
#v(3em)
#grid(columns:(1fr,1fr),column-gutter: 20pt,
```cs
for (int i = 0; i < 21; i += 2) {
  Console.WriteLine(i);
}
```,
only(3)[```cs
for (int i = 0; i < 11; i ++) 
{
  Console.WriteLine(2 * i);
}
```])
#Worksheet()[On BPCompSci:\ *W103 - for*]