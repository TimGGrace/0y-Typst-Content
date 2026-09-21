#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet: (
    (text(22pt)[Simplify the Boolean Expression
    $
      Q = overline(overline(A)+overline(B)dot overline(B + A dot B dot overline(A)))
    $],text(18pt)[
      $
        &= overline(overline(A)+overline(B)dot overline(B + A dot B dot overline(A)))\
        &= overline(overline(A)+overline(B)dot overline(B + 0))\
        &= overline(overline(A)+overline(B)dot overline(B))\
        &= overline(overline(A)+overline(B))\
        &= overline(overline(A dot B))\
        &= A dot B
      $
    ]),
    ([Write the Boolean equivalent of $A xor B$ using only AND, OR and NOT.],[$A dot overline(B) + overline(A) dot B $]),
    ([Define subtype polymorphism in the context of Object Oriented Programming],text(20pt)[When a behaviour of a parent class is overriden by a subclass.]),
  ),
  secondSet: (
    (text(20pt)[The following floating point number is written with a 8 bit mantissa and 6 bit exponent.
    #table(columns:range(15).map(_=>1fr),
    $0$,$1$,$1$,$0$,$1$,$0$,$0$,$0$, 
    table.cell(stroke:(left: 1pt, right:1pt, top:0pt,bottom:0pt))[],
    $0$,$0$,$1$,$0$,$1$,$0$,
    table.cell(stroke:(top:1pt,left:0pt,bottom:0pt,right:0pt),colspan:8, align:center)[Mantissa],
    table.cell(stroke:0pt)[],
    table.cell(stroke:(top:1pt,left:0pt,bottom:0pt,right:0pt),colspan:6, align:center)[Exponent],
    )#v(-0.8em)
    Calculate its decimal value.#v(-1em)],[\
      $(1/2 + 1/4 + 1/16) times 2^(8 + 2)\ = 832_10$
    ]),
    (text(18pt)[Write an SQL instruction that would add the following information to the 'Students' table:\
    `{id: 4, name: Jane, DoB: 22/9/15}
{id: 5, name: Elsa, DoB: 9/7/16}`\
The Students table was created by:
#v(-1em)#rect(fill:fadedBlue.lighten(40%),`CREATE Table Students
(int ID, name TEXT, DoB DATE)`)
    ],[`INSERT INTO Students
VALUES 
(4, "Jane", "2016-09-22"),
(5, "Elsa", "2015-07-09")
`]),
  )
)

= Functional Programming
#note[Keywords: `Function type; function application; domain; co-domain; partial function application; first class object; Haskell`]
#only(2)[#place(center+horizon,
image("img/202-spec.png"))]
#only(3)[#place(center+horizon,
image("img/202-specb.png"))]

== Functional Programming in A-Level
For the topic, we will:
- Learn the basic concepts of the functional programming paradigm
- Write some basic functional programming commands using `Haskell`
- Be able to use lists in functional programming.#pause

In this lesson, we will:
- Write basic programs to evaluate mathsy things
- Use recursion

== What does Haskell look like?
Functional programs are going to look like a list of true statements, followed by a singular executable command.#pause

EG:
```Haskell
add x y = x + y

main = print(add 6 7)
```
#pause
This would print `13`#pause
#place( dy:-5em,dx:14em,
  rect( inset:20pt,radius:15pt,fill:orange.lighten(40%),stroke:orange+2pt,
    [Note:
    - Haskell can be picky with brackets!
    - Parameters do not need\ commas separating them.]
))

== Basic Program examples:
#only(1)[```Haskell
add1 x = x + 1
double x = 2 * x

main = print(add1 (double 5))
```]
#only(2)[
  ```Haskell
add x y = x + y
add1 x = x + 1
double x = 2 * x

main = print(add (add1 5) (double 7))
```
]

#MWBQ(
  (text(36pt)[What does the following program output:
  ```Haskell
take1 x = x - 1
triple x = 3 * x

main = print ( take1 (triple 5))
  ```],text(36pt)[`14`]),
  (text(36pt)[What does the following program output:
  ```Haskell
take1 x = x - 1
triple x = 3 * x

main = print ( triple (take1 5))
  ```],text(36pt)[`12`]),
  (text(32pt)[What does the following program output:
  ```Haskell
take1 x = x - 1
triple x = 3 * x
takethem x y = x - y

main = print ( takethem (triple 6) (triple 5))
  ```],text(36pt)[`14`]),
  (text(36pt)[Write a function that could add three numbers together],text(36pt)[
    ```Haskell
add x y z = x + y + z
    ```
  ]),
  (text(36pt)[Write a function that subtracts 6 from a number and then multiplies by 5.
  
  You may wish to use multiple functions.
  ],text(30pt)[
    #grid(columns:(1fr,1fr))[```Haskell
take6 x = x - 6
mult5 x = 5 * x
maths x = mult5 (take6 x)
    ```][OR:#v(-1em)```Haskell
maths x = 5 * (x - 6)
    ```]
  ]),
  
)

== Using recursion
There will need to be a base case and a general case.#pause
- Put the base case first
  - Haskell treats overloading like if/else.
  - It's matching a pattern as early as it can.

EG: to calculate the sum of all numbers from n down to 1, we could write the following program:

```Haskell total 1 = 1
total x = x + total (x - 1)
```

#MWBQ(
  (text(36pt)[What does the following program output:
  ```Haskell
fact 1 = 1
fact x = x * fact (x - 1)

main = print ( fact 5 )
  ```],text(36pt)[`120`]),
  (text(30pt)[What does the following program output:
  ```Haskell
fib 0 = 1
fib 1 = 1
fib x = fib (x-1) + fib (x-2)

main = print (fib 5)
  ```],text(36pt)[`8`]),  
)

#Worksheet(
  title:"Let's write our own programs with Haskell"
)[
  #link("https://onecompiler.com/haskell/" )[#underline[#text(fadedBlue)[https://onecompiler.com/haskell/]]]

  On BPCompSci:\
  *W200 - Haskell - Basic Functional Programming*
]

== First Class Objects
#green-book
One of the reasons Haskell is so picky with brackets is due\ to First Class Objects in functional programming.

All programming languages have this concept.#pause

A *First Class Object* is one that:
- can be #bold[R]eturned from a function#pause
- can be the #bold[A]rgument to a function#pause
- can be stored in a #bold[V]ariable#pause
- can be used in an #bold[E]xpression#pause)

#place( dy:-5em,dx:15em,
  rect( inset:20pt,radius:15pt,fill:orange.lighten(40%),stroke:orange+2pt,
    [In functional programming languages,\ functions are first class objects!]
))

#Worksheet(
  title:"Let's write our own programs with Haskell"
)[
  #link("https://onecompiler.com/haskell/" )[#underline[#text(fadedBlue)[https://onecompiler.com/haskell/]]]

  On BPCompSci:\
  *W200 - Haskell - Basic Functional Programming*
]