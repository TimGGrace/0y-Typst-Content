#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#mwb
What is the time complexity of this algorithm?
#grid(columns:(1fr,0.8fr),
[` For i <- 1 to n
  x <- a[i]
  j <- i
  while x < a[j - 1]
    a[j] <- a[j - 1]
    j <- j - 1
  endwhile
  a[j] = x
endfor
`],
[Input: \
`a = {0, 3, 6, 2, 1}
n = length(a)`])
#only(2)[
  #place(dy:-4em,dx:15em)[#text(red,44pt)[O(n#super[2])]]
]

#let frame(stroke) = (x, y) => (
  left: if x > 0 {stroke} else {0pt},
  right: if x < 3 {stroke} else {0pt},
  top: if y > 0 {stroke} else {0pt},
  bottom: if y < 3 {stroke} else {0pt}
)
== Making a grid
#mwb
#v(2.5cm)
One way to create these 16 equally sized squares is to draw them, one at a time, taking 16 steps.

Another way is to fold the paper in half repeatedly until the fold lines form the 16 boxes on the unfolded paper.
1. For the folding paper method, how many operations are required?

2. What is the Big O running time for each method?
#place(dy:-15.5em,dx:12em)[#table(stroke: frame(1pt), columns:range(0,4).map(_=>40pt),rows:range(0,4).map(_=>40pt),
..range(0,16).map(_=>[]))]

= Types of Problem
#note[Keywords: `Tractable; Intractable; Decision problem; Undecidable; Heuristic; Computable; Non-computable; Halting problem`]
#only(2)[
  #place(dy:-8em,dx:24em)[#image("img/240 meme.png", height:140%)]
]
#only(2)[
  #align(center+horizon)[#image("img/240 spec.png", height:130%)]
]
== Types of problem
We need to be able to classify different types of problem. #pause

Mostly, because while we like to claim that we can solve everything with a computer and an algorithm, we can't. #pause

#align(center)[#text(40pt)[*What is happiness?*]] #pause

Enter our first classification: \
*computable* and *non-computable*

== Computable v Non-Computable
#notes
A problem is #underline[computable] if there exists an algorithm that \ solves the problem. 

The algorithm must _always_ terminate and must _always_ produce the correct output for all possible inputs. #pause

A problem is #underline[non-computable] if no algorithm can ever exist which solves the problem.

== Classification of Computable problems
Even if a problem is computable, whether or not a solution can _feasibly_ be found may still depend on the size of the input.#pause

Example: \
Split the following numbers into two subsets with equal sums:
$ {18, 23, 27, 19, 22, 21, 66, 26} $
#mwb

== Classification of Computable problems
In order to crack that previous problem, you would need to find a combination of numbers that adds to half the total sum. #pause

That will involve possibly checking *every subset*. 

That's *O(2#super[n])*, so a massive problem. #pause

Consider a list of 100 items. It will need 2#super[100] subsets to be calculated. How many years would this take at 100 million subsets _per second_? #pause

Enter another classification: *Intractable problems*

== Intractable Problems
#notes
An Intractable Problem is:

A _computable problem_ for which a _polynomial_ time (or better) \ algorithm does not exist or has yet to be found. #pause

A *tractable* problem is thus one for which a _polynomial_ or better algorithm _does_ exist. #pause

Cracking the RSA method relies on factorising massive numbers, which is _currently_ intractable.

== Example
#discuss
Passwords are generated randomly and stored as n-bit strings 
- The length of each password is chosen to be 64 bits \ in order to make it difficult to guess. 
- You can assume that randomly generating one bit \ can be done in constant time.

Why is generating a 64 bit password considered a tractable problem but guessing this password is considered an intractable problem?

== Approximate Solutions
#notes
There are lots of intractable problems out there that we still solve. #pause

The trick is that we don't always find the *best* solution, just a *really good one*. EG: Scheduling/timetabling for the entire college. #pause

Quick answers require a different approach. In such cases, we can find _sub-optimal_ answers in polynomial time.

== Heuristic Algorithm
#notes
We can use a _Heuristic_ to reduce the size of a problem space or \ change the constraints of the problem.

#link("https://www.perseus.tufts.edu/hopper/morph?l=euriskw&la=greek#lexicon")[Heuristic comes from the Ancient Greek $epsilon acute(upsilon) rho iota sigma kappa omega$ (click for more!)]#pause

We're aiming to use knowledge of the problem we're solving to find a _good_ solution, even if it isn't _optimal_. #pause

Technically, these solutions _may_ be optimal, but because they won't _always_ be optimal, they aren't considered proper solutions.

== Decision Problems
#notes
A *decision problem* is a problem for which the answer \ for every inputis either _yes_ or _no_.

EG: Deciding if a number is prime.

== Undecidable Problems
#notes
These are *not* just 'not a decision'.

An *undecidable problem* is one that *is* a decision problem, but is *not* computable. #pause

There's a famous one that we need to discuss, \ called the _Halting problem_

== The Halting Problem
#notes
Sensibly, we want to know if a computer program or \ algorithm will terminate.

We would like to make an algorithm to decide that! #pause

Formally:
#align(center)["Given a program and its inputs, can you determine whether or not that program will terminate, without running the program."]

== The Halting Problem
This was proved impossible by and Alonzo Church (1936) and more famously by Alan Turing (1936) #pause

The proof is really interesting (later this lesson), but the result is more important for us: #notes
#align(center)[#text(40pt)[#bold[This proves that problems exist which no algorithm can ever solve.]]]

== The Halting Problem proof [Beyond Spec]
Let's say we have a function called `Halt` that takes two inputs, a function and its input. This magic function returns 'Yes' if the function halts, and 'No' if the function doesn't halt. #pause

Now consider another function, `OhDear`. This takes an input of a function, `f`.

`OhDear` returns 'Yes' if `Halt(f, f)` is 'No' (ie: passing the function to itself causes an infinite loop)\ 
`OhDear` enters an infinite loop and does not end if `Halt(f, f)` says 'Yes' #pause

What happens if we call `Halt( OhDear, OhDear )`?

== The Halting Problem proof [Beyond Spec]
If we call `Halt( OhDear, OhDear )`, there are two possible outcomes:
1. If `Halt` returns 'yes', that means that `OhDear( OhDear )` should terminate. But `Halt` returning 'yes' would cause `OhDear( OhDear )` to go into an infinite loop.#pause

2. If `Halt` returns 'no', that means that `OhDear( OhDear )` goes into an infinite loop. But `Halt` returning 'no' would cause `OhDear( OhDear )` to halt.#pause

Both of these are contradictions, thus the only assumption we have made (that we can create `Halt(f)` in the first place) must be false.

== P vs NP [Also Beyond Spec]
Also beyond spec, but there's a million dollar prize for proving this either true or false, so it's good to hear about. #pause

- P: If a problem is easy to come up with a solution, it is a 'P problem'.#pause

- NP: If a solution is easy to check, it is considered an 'NP problem'.#pause

- If P vs NP is true, it means that all problems easy to check must also be easy to solve, thus an algorithm *can* be found.#pause

- EG: 
  - Our splitting our set into subsets of equal total.
  - The Tantrix game (look it up)