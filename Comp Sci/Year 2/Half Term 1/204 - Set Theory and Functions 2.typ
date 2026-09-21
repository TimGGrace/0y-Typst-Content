#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.1"
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#QuickQuestions(
  firstSet: (
    (text(22pt)[State the difference between aggregation and composition.#v(-0.5em)],text(22pt)[In association, if the containing object is destroyed, the contained object is not. In composition, the contained object is destroyed.#v(-1em)]),
    (text(22pt)[What is meant by the cardinality of a finite set?#v(-0.5em)],text(22pt)[The number of elements.#v(-1em)]),
    (text(22pt)[Complete the truth table for the expression $overline(A+overline(B))$
    #place(dx:-40pt,dy:15pt,box(width:116%,table( columns:range(5).map(_=>1fr), align:center, inset:3pt,
      table.cell(inset:(x:5pt,y:15pt))[$A$],
      table.cell(inset:(x:5pt,y:15pt))[$B$],
      table.cell(inset:(x:5pt,y:15pt))[$overline(B)$],
      table.cell(inset:(x:5pt,y:15pt))[$A+overline(B)$],
      table.cell(inset:(x:5pt,y:15pt))[$overline(A+overline(B))$],
      $0$,$0$,[],[],[],
      $0$,$1$,[],[],[],
      $1$,$0$,[],[],[],
      $1$,$1$,[],[],[],
  )))],text(22pt)[
    #place(dx:-40pt,dy:25pt,box(width:116%,table( columns:range(5).map(_=>1fr), align:center, inset:3pt,
      table.cell(inset:(x:5pt,y:15pt))[$A$],
      table.cell(inset:(x:5pt,y:15pt))[$B$],
      table.cell(inset:(x:5pt,y:15pt))[$overline(B)$],
      table.cell(inset:(x:5pt,y:15pt))[$A+overline(B)$],
      table.cell(inset:(x:5pt,y:15pt))[$overline(A+overline(B))$],
      $0$,$0$,$1$,$1$,$0$,
      $0$,$1$,$0$,$0$,$1$,
      $1$,$0$,$1$,$1$,$0$,
      $1$,$1$,$0$,$1$,$0$,
  )))
  ]),
  ),
  secondSet:(
    ([Describe the difference\ between IP addresses and MAC addresses.],[MAC addresses are used\ for individual hops, whereas IP addresses are used for addressing across the internet.
    ]),
    ([Given the sets $A$ and $B$ below, state $A union B$$ A &= {1, 2, 3, 4, 5, 8}\ B &= {3, 6, 9} $],[${1, 2, 3, 4, 5, 6, 8, 9}$]),
    )
)

== Starter: Set Cardinality
#mwb
#only(1)[1. What is the cardinality of a set?

2. For each of the pairs of sets, write down which has a larger cardinality.#set enum(numbering:"a)")
  + ${1, 2, 3}$ or ${-1, 0, 1, -4}$
  + ${1,2,3}$ or $emptyset$
  + $emptyset$ or ${}$
  + ${0, 1, 2, ..., 997,998,999}$ or $NN$
  + $NN$ or $RR$
  + The set of all countries in the world or the set of all spoken languages in the world]
  
#only(2)[
1. What is the cardinality of a set?\ #text(red)[The number of elements in a finite set.#v(-1em)]

2. For each of the pairs of sets, write down which has a larger cardinality.#set enum(numbering:"a)")
  + ${1, 2, 3}$ or #text(red)[${-1, 0, 1, -4}$]
  + #text(red)[${1,2,3}$] or $emptyset$
  + #text(red)[$emptyset$] or #text(red)[${}$]
  + ${0, 1, 2, ..., 997,998,999}$ or #text(red)[$NN$]
  + $NN$ or #text(red)[$RR$]
  + The set of all countries in the world or #text(red)[the set of all spoken languages in the world]
]

= Set Theory and Functions 2
#pause
#note[Keywords: `Subset; Proper subset; Infinite set; countable set; countably infinite; uncountable; Venn diagram; union; intersection; difference; cartesian product;

Function Type; composition; domain; co-domain;`]#pause
#place(center+horizon,
image("img/204-spec.png",height:120%))

#MWBQ(
  (text(40pt)[True or false $ x=4\ x in QQ $],align(center)[#text(40pt)[TRUE]]),
  (text(40pt)[True or false $ x = sqrt(2)\ x in QQ $],align(center)[#text(40pt)[FALSE]]),
  (text(40pt)[True or false $ x=0\ x in NN $],align(center)[#text(40pt)[TRUE]]),
  (text(40pt)[True or false $ x=0\ x in "even numbers" $],align(center)[#text(40pt)[TRUE]]),
  (text(40pt)[Write down the numbers in the set $ {x^2 | x in NN and x < 5} $],align(center)[#text(40pt)[$ 0,1,4,9,16 $]]),
  (text(40pt)[Using set comprehension notation, describe the set$ {5,7,9,11,13,15} $],align(center)[#text(40pt)[$ {2x+1|x in NN and 2<=x<=7} $]]),
  (text(40pt)[Write down the numbers in the set $ {x|x in ZZ and x^2 < 10} $],align(center)[#text(40pt)[$ -3,-2,-1,0,1,2,3 $]]),
  (text(40pt)[Using set comprehension notation, describe the set$ {12,15,18,21,24,27,30,33,36} $],align(center)[#text(40pt)[$ {3x|x in NN and 4<= x <= 12} $]]),

)
== Subsets (Proper & Improper)
#green-book
"$A$ is a *subset* of $B$", written $A subset.eq B$ means that everything\ in $A$ is also contained in $B$.\
eg. $QQ subset.eq RR$#pause

The symbol $subset$ means *proper subset*\
ie. $A subset B$ means $A subset.eq B$ and $A != B$#pause

The symbol can be turned around to mean 'superset'\
eg. $A supset B = B subset A$ 

== Some useful examples
$
  "even numbers" subset ZZ\ \
  {1, 5, 1/2,-4.13} subset RR\ \
  {1/2,1/3,1/4,1/5} subset {x|x in QQ and x<1}\ \
  {0} subset NN\ \
  NN subset ZZ subset QQ subset RR
$
==
#mwb
$A$ is the set of primes less than $10$\
$B$ is the set of odd numbers less than $10$\
$C$ is the set of even numbers less than $10$\
Which of the following statements is true?

$
  A subset.eq B, quad quad
  B subset.eq A, quad quad
  A subset.eq C, quad quad
  C subset.eq A, quad quad
  B subset.eq C, quad quad
  C subset.eq B, quad quad
$#pause
#align(center,text(red)[#bold[None!]])

== Cardinality
#green-book
The cardinaltiy of a set is the number of elements\ within the set.

For a finite set, we count the elements.#pause

For an infinite set, we refer to it as *countable* or #text(orange)[#bold[uncountable]]#pause

If an infinite set can be 'paired with' the natural numbers, it is countable.

== Examples!
#grid(columns:(1fr,1fr),
[
  #underline[Countables]
  - Natural Numbers
  - Even Numbers
  - Odd numbers
  - Integers
  - Rationals
  - Computable numbers
],
only(2)[
  #underline[Uncountables]
  - Real numbers
  - Irrational numbers
])

== Venn Diagrams recap
#mwb
1. What does $A inter B$ mean?

2. Shade $A inter B$ ona Venn Diagram
3. What does $A union B$ mean?
4. Shade $A union B$ on a Venn Diagram
5. What does $A union B`$ mean?
6. Shade $A union B`$ on a Venn Diagram

== Venn Diagrams and Boolean
They're linked!

$+$ is very similar to $union$, $dot$ and $union$ too.

Let's test on a Venn Diagram $A+B+A dot B$

== Cartesian Product
#green-book
$A times B$ is the set of all possible pairs from $A$ and $B$.

eg. $A={1,3,5}, B={1,2,4,8}$ then:
$
  A times B = {&(1,1),(1,2),(1,4),(1,8),\
  &(3,1),(3,2),(3,4),(3,8),\
  &(5,1),(5,2),(5,4),(5,8)
  }
$
You try:\
Given $S_1={4,8,3},S_2={8}$, find $S_1 times S_2$

== How does that link with our other maths?
#green-book
*Coordinate systems*\
$(1, 1), (1, 1.1), (1, 1.2), ...$ could be written as $RR times RR equiv RR^2$#pause

This could be really useful for function notation. Something calculating the distance from the origin to a point could be written as:
$
  f: RR^2 -> RR
$#pause

We can then write 3D coordinates as $RR^3$

== Function Types
#green-book
If we say that the function `roundToInt` has the function type:
$ "roundToInt": RR->ZZ $

We can say that:
$
  (-4.2,-4) &in "roundToInt"\
  (100.5,101) &in "roundToInt"
$#pause

Using this notation, $"roundToInt" in (RR times ZZ)$\
So, $RR times ZZ$ represents a mapping of every real to every integer.

== Recap
#mwb
Write a definition of the domain and
a definition of the co-domain for a 
Function. Use the example 
$
  f: NN -> RR
$#pause
#text(red)[
  Domain: $NN$ in the example. This is the set of possible inputs/arguments to the function.

  Co-domain: $RR $ in the example. This is the set from which the function's outputs are chosen. Not all of the elements in the co-domain need to be possible outputs.
  
]

== Function Composition
#green-book
*Function composition combines two functions to get\ a new function.*#pause

Given two functions\
$f: A -> B$ and $g: B -> C$

$g compose f$ is called the *composition* of $g$ and $f$.#pause

It is a function whose domain is $A$ and co-domain is $C$.
$
  (g compose f): A -> C
$

== Function composition
Example:\
If the domain and co-domains of $f, g$ are $RR$, and\
$f(x) = x+2$ and $g(y) = y^3$

then $(g compose f)(x) = (x+2)^3$ and $(f compose g)(x) = x^3 + 2$

== You Try
#mwb
For the functions
$
  F(x) = x + 1
  V(g) = 3g
$
What are the results of the following function aplications?
+ $F(x)$ if $x=5$ #only(2)[#text(red)[#bold[$quad quad 6$]]]

+ $V(y)$ if $y=5$ #only(2)[#text(red)[#bold[$quad quad 15$]]]
+ $F compose V(x)$ if $x=5$ #only(2)[#text(red)[#bold[$quad quad 16$]]]
+ $F compose F compose F(x)$ if $x=2$ #only(2)[#text(red)[#bold[$quad quad 5$]]]

#Worksheet()[
  *L204* on Classroom
]