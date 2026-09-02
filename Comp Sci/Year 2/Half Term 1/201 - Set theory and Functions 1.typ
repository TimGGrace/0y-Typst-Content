#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

#import "@preview/circuiteria:0.2.1": *

#QuickQuestions(
  firstSet: (
    (text(22pt)[One principle of OOP is "Favour composition over inheritance".
    
    State one other principle.],[
      - Program to interfaces, not implementation
      - Encapsulate what varies
    ]),
    (text(22pt)[Draw a logic circuit for the expression: $ Q = overline(A+B dot overline(A)) $],[
      #circuit({
        
        wire.stub((1,0),"west",name:"B")
        gates.gate-not(x:1.5,y:0.75,h:0.5,w:0.5,id:"NOT")
        wire.stub("NOT-port-in0","west",name:"A", length:1)
        gates.gate-and(x:2.8,y:0.625,h:0.5,w:0.5, id:"AND")
        wire.wire("w1",("NOT-port-out","AND-port-in0"),style:"zigzag")
        wire.wire("w2",((1,0),"AND-port-in1"),style:"zigzag",zigzag-ratio: 70%)
        wire.intersection((1,1))

        gates.gate-nor(x:4,y:1,h:0.5,w:0.5,id:"NOR")
        wire.wire("w3",((1,1),"NOR-port-in0"),style:"zigzag",zigzag-ratio: 0%)
        wire.wire("w4",("AND-port-out","NOR-port-in1"),style:"zigzag")

        wire.stub("NOR-port-out","east",name:"Q")

      })
    ]),
    (text(22pt)[State the command used to delete a table.],[DROP]),
    
  ),
  secondSet: (
    (text(22pt)[Describe the principle\ operation of a barcode scanner.],text(18pt)[
    #enum(numbering:"i.", start:1)[
       The scanner shines a laser across the barcode using a mirror
    ][
      The different coloured bars reflect different quantities of light\ (white reflects more than black)
    ][
      The intensity of the reflection is measured by the scanner.
    ][
      The measured widths of each bar are converted into a number.
    ]
    ]),
    (text(22pt)[State the output of the program:

    `
void printy(string s) {
  if (s.Length > 1) {
    printy(s.Substring(1));
  }
  Console.WriteLine(s);
}
printy("loopy"); `
    ],text(18pt)[`y
py
opy
oopy
loopy`]),
  )
)

== Starter 2: Sets of Numbers
#mwb
For each of the following sets of numbers:
1. Write down the name of the set.
2. Give three examples of numbers in the set.

#text(40pt,purple.darken(20%))[$ NN quad quad ZZ quad quad QQ quad quad RR $]

#bold[Extension]: Do you know any other sets of numbers? Describe them!

= Set Theory and Functions
#note[Topic: 4.4 Theory of Computation\
Topic: 4.12 Fundamentals of Functional Programming]
#only(2)[
  #place(center+horizon,
  image("img/venn_meme.png",height:120%))
]
#only(3)[
  #place(center+horizon,
  image("img/201_spec.png", height:120%))
]

== Basic Examples of sets
#mwb
*A set is an unordered collection of values in which each value occurs at most once.* Not every collection is a set.

Which of these are sets?
1. The days of the week

2. All even numbers

3. The names of all humans

4. All distinct computer programs

5. The natural numbers

== Why are sets important?
Sets are mathematical abstractions of collections of things. 
They are so abstract that we can represent lots of things using them.#pause

They are the building blocks for much of mathematics. They underpin functions, vectors, groups, probability.#pause

In Computer Science, they are behind much of the theory including:
#text(22pt)[- Data structures, including graphs
- Programming languages
- Turing machines
- Types of problems
- Functions]

== Set notation
#green-book
Sets are often written using curly brackets:
$
  {3, 6, 91, ...}
$
- $3, 6$ and $9$ are called elements or members.
- The ellipsis ($...$) indicates that the set is infinite.
- The order of the elements doesn't matter, only what's in it.

== Set notation
#green-book
Sets can be defined as a possibly infinite list\
EG: #text(22pt)[${a, b, c, ... , y, z}$, ${1, 2, 4, 8, 16, ...}$ ${"North","South","East","West"}$]#pause

$x in A$ means "$x$ is a member of the set $A$"\
Thus $2 in {2, 4, 8}$ but $3 in.not {2, 4, 8}$#pause

$emptyset$ or ${ }$ is the *empty set*, which contains no members.\
It's used in set theory kind of like $0$ in arithmetic.#pause
#v(-1em)
#text(60pt)[
  $
    in, in.not, emptyset
  $
]

== Set notation
#green-book
Sets can also be defined using *set comprehension notation*.\ This is especially useful for infinite sets!#pause

EG: ${x | x <= 5}$ means "$x$, where $x$ is less than or equal to $5$"#pause

${2^n | n in ZZ}$ is all integer powers of $2$.#pause

${x|x in ZZ and 6 < x < 12}$ is the same as ${7, 8, 9, 10, 11}$#pause

($x in RR$ or $x in NN$ is sometimes assumed from the context)#pause

We can define the Rationals with:
#place(dx:9em,dy:0.8em,)[$
  QQ = {a/b | a, b in ZZ and b != 0}
$]

== You Try:
#only(1)[#notes
1. Describe a set, $A$, which contains all natural numbers\ greater than $10$.

2. Describe a set, $B$, which contains all natural numbers which are multiples of $10$.

3. Describe a set, $C$ which are all even numbers, up to and including $12$.

4. Describe a set, $D$ which contains all natural multiples of $3$ below $5,000$.]
#only(2)[
#text(red)[
  1. $A = {x | x in NN and x > 10}$

  2. $B = {10x | x in NN}$

  3. $C = {2x | x in ZZ and 2x <= 12}$

  4. $D = {3x | x in NN and 3x < 5000}$
]
]

== Cardinality
#green-book
A set can be either finite or infinite\
EG:\
finite: ${A, B, C}$
infinite: ${2x | x in NN and x >= 5}$#pause

For a finite set, the *cardinality* is the number of elements in the set.#pause

It's a little tricker for infinite sets, but we'll deal with that next time.

= Functions
== Logarithms
Explain to the person next to you what a logarithm is.

(The person next to you may not know what this is if they don't do\ A-level Maths!)#pause

A *logarithm* tells you the power that is needed to make a certain number.

EG:
If $2^3 = 8$, then $log_2(8) = 3$

== Starter: Functions
#mwb
Match the functions to the descriptions
#grid(columns:(1fr,1fr),column-gutter: 100pt,
[
  $a(x) = 5x$#pin(0)

  $b(x) = 5^x$#pin(1)

  $c(x) = 2x^2 - 5x + 1$#pin(2)

  $d(x) = x + 2$#pin(3)

  $e(x) = log_2(x)$#pin(4)

  $f(x) = x^7 - x$#pin(5)
],
[
  #rect(fill:green.transparentize(40%),stroke:green.darken(40%)+2pt,inset:10pt,
  [
      #pin("lin")Linear
    ])

    #rect(fill:gray.transparentize(40%),stroke:gray.darken(40%)+2pt,inset:10pt,
    [
      #pin("log")Logarithmic
    ])

    #rect(fill:orange.transparentize(40%),stroke:orange.darken(40%)+2pt,inset:10pt,
    [
      #pin("poly")Polynomial
    ])

    #rect(fill:blue.transparentize(40%),stroke:blue.darken(40%)+2pt,inset:10pt,
    [
      #pin("exp")Exponential
    ])
])#pause
#let props = (start-dy:-10pt,start-dx:5pt,end-dx:-20pt)
#pinit-arrow(0,"lin",..props)#pause
#pinit-arrow(1,"exp",..props)#pause
#pinit-arrow(2,"poly",..props)#pause
#pinit-arrow(3,"lin",..props)#pause
#pinit-arrow(4,"log",..props)#pause
#pinit-arrow(5,"poly",..props)

== Functions
#grid(columns:(1fr,1fr), column-gutter: 40pt,
[
  *Mathsey*\
  A *function* is a mapping of values from a *domain* (eg $RR$) to a set of values from a *co-domain*.#pause

  eg. $f(x) = 6x$ might have the domain and co-domain as the real numbers ($RR$). It takes a real input, and returns a real output.
],
only(3)[
  *CompSci-ish*\
  A function will simply translate an *argument* from one certain data type to another certain data type.

  $ 5 --> #rect[Add 2] --> 7 $

  *A function is a rule that, for a given set of inputs, assigns an output*
])

== Function type
#green-book
We represent function translation using the format:
$
  f : A -> B
$
Where
- $f$ is the function name.
- $A$ is the *domain*, the set of all inputs
- $B$ is the *co-domain*, the set from which the outputs are chosen.
EG:
$
  f: RR -> ZZ
$

== Example - double a number
Let's say we have a function that doubles a non-negative number.

We could write this as:
$
  "double": NN -> NN
$

Which creates the mapping
#let coDom = range(9).map(n => if calc.rem(n,2) == 0 [#n] else {text(gray.darken(10%))[#n]}).join(", ")
$
  "Domain" &= {0, 1, 2, 3, 4, ...}\ \
  "Co-domain" &= {#coDom, ...}
$

== Codomain vs Range
For that function, we could discuss either the co-domain or the range.

The co-domain is the set from which we chose our outputs. The range is the set of all possible outputs.

#bold[Why both?] Sometimes we don't care about all of the values, and instead just need to know the datatype of the result. Other times, it's important to be able to discuss the range explicitly.

== Codomain vs Range
#mwb
For the function $"squareInt": ZZ -> ZZ$

What is the codomain, and what is the range?

#only(2)[
  See the issue with range? We could write it as
  $
    {x^2 | x in ZZ}
  $
  but that's the question just with extra words...
]

== Example 2
#green-book
We have a function that returns true if a number is prime.

This will take a natural argument and produce a Boolean result.
$
  "isPrime": NN -> "Boolean"
$
#v(2em)
Note: 
- $"Boolean"$ is the short hand for ${"True", "False"}$
- $"String"$ is the set of all strings

== Domain and Co-domain
#mwb
For each of the following functions, work out what the domain and codomain will be:
1. $"squareRealNumber"$#only(2)[#text(red)[$: RR -> RR$]]

2. $"isNaturalNumberOdd"$#only(2)[#text(red)[$: NN -> "Boolean"$]]

3. $"RoundNumber"$#only(2)[#text(red)[$: RR -> ZZ$]]

4. $"convertMonthNumberToName"$#only(2)[#text(red,20pt)[$:{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12} -> "String"$]]

== Which of these statements are true?
#mwb

1. The set of numbers in the co-domain is always smaller than the domain.

2. Every value in the domain has a unique matching value in the co-domain.

3. The domain and the co-domain are always the same data type.

#only(1)[4. The output of a function doesn't always have to match every value in the co-domain.]
#only(2)[#text(red)[4. The output of a function doesn't always have to match every value in the co-domain.]]

#Worksheet()[
  On Google Classroom:\
  *L201 Worksheet*
]