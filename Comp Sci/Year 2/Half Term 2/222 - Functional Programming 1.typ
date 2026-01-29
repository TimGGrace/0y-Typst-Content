#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#mwb
For each of the following functions, work out what the domain and codomain will be:

1. `squareRealNumber`
2. `isNaturalNumberOdd`
3. `RoundNumber`
4. `convertMonthNumberToName`

= Functional Programming
// #only(2)[#place(dy:-8em,dx:-1em)[#image(width:110%,"../Images/222 Spec1.png")]]
// #only(3)[#place(dy:-8em,dx:4em)[#image("../Images/222 Spec2.png")]]

== Recall
We can represent functions as $ f : A -> B $
#only(2)[
  #mwb
  What are $f$, $A$ and $B$?
]
#only(3)[
  #notes
  $f$ is the identifier of the function.
  
  $A$ is the *domain* of the function (all inputs)

  $B$ is the *codomain* of the function \ (the set from which the outputs are chosen)

  $ "eg     " f : RR -> ZZ^+ $
]

== Which of these statements is true?
#mwb
1. The set of numbers in the co-domain is always smaller than the domain.
2. Every value in the domain has a unique matching value in the co-domain.
3. The domain and the co-domain are always the same data type.
#only(1)[4. The output of a function doesn't always have to match every value in the co-domain.]
#only(2)[#text(red)[4. The output of a function doesn't always have to match every value in the co-domain.]]

== Introducing Haskell
*First Class Objects* (or values, a.k.a. literal values) are objects which can:
#only(1)[- appear in expressions
- assigned to variables
- be passed as arguments
- be returned from function calls]
#only(2)[
  - #text(red)[R]eturned by functions
  - #text(red)[A]rguments to a function
  - Stored in #text(red)[V]ariables
  - Used in #text(red)[E]xpressions
]

== Introducing Haskell
#notes
Haskell is a *functional programming language*. \
ie. It uses the Functional Programming Paradigm

Each program is a single statement that will be evaluated.

In a *functional* programming language, \ \
*functions are first class objects*

== Imperative vs Declarative vs Functional
Imperative
- Instructions given line by line, in order.
- Tells the computer *how* to do everything.
Declarative
- Provides a demand
- Tells the computer *what* to do, without the *how*
Functional
- Provides a list of true statements/mappings
- A single evaluation will occur
- Functions have a *single* input and a *single* output.
== Functional Programs
#notes
Just like mathematical functions, these can be looked at like a replacement. \
EG:
$ f(x) = x^2, quad g(x) = 2x + 3 \
g(f(x)) = g(x^2) = 2(x^2)+3 $ #pause
For Haskell:
$ &(\\x -> (\\y -> (2 + x * y))) quad 3 quad 4 \
 =& (\\y->(2 + 3*y)) quad 4 \ 
 =& (2 + 3 * 4) = 2 + 12 = 14 $

== Anonymous Functions
The function $(\\x -> (\\y -> (2 + x * y)))$ is called an *anonymous* function, because it doesn't have a name!

It accepts a single input at a time.

EG: $ & (\\x -> (\\y -> (2 + x * y))) quad 5  \ 
=& (\\y -> (2 + 5 * y)) $

This function has *returned* a function! \
This is called *partial function application*

== Partial Function Application
#notes
Another example with different notation: 

`add x y = x + y` 

`add 3 4` #pause \
`addThree 4` #pause \
`7`

`addThree` is a partial function because the first input has been applied, and a function ready for the second input has been returned.

== Partial Function Application

On a technical level, we can't write \
#align(center)[`add` $: (RR times RR) -> RR$] 

because the function only accepts one input!

#align(center)[`add` $: RR -> (RR->RR)$] 
Strictly, it returns a mapping that will perform an addition...

You may also see
#align(center)[`add` $: RR -> RR -> RR$] 

== Functions in Haskell
#notes
In Haskell we might define add to be: \
#align(center)[`add x y = x + y`] #pause
Technically, this expands to the definition
#align(center)[`add = (\x -> (\y -> x + y))`] #pause

Demonstrate the partial function application for the call `add 2 3` \
#pause
`(\x -> (\y -> x + y)) 2 3` \
`(\y -> 2 + y) 3` \
`2 + 3` \ `5`

== Practice!
#Comp
On BPCompSci


Try some basic commands and functions \ to get used to interface \
*W200 - Haskell - Basic Functional Programming*
