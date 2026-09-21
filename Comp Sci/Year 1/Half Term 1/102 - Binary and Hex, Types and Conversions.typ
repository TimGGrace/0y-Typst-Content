#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet:(
    ([Evaluate $ 2 quad 3 quad 9 quad + quad 5 quad - quad *$],[$14$]),
    ([Evaluate $ 9 quad 5 quad 3 quad + quad 2 quad 4 quad * quad - quad + $],[$9$]),
    ([Write the following RPN in infix notation: $ 5 quad 4 quad 3 quad - quad + $],[$5 quad + quad (4 quad - quad 3)$]),
  ),
  secondSet: (
    ([Write the following RPN\ in infix notation:$ 5 quad 4 quad 3 quad + quad - $],[$5 quad - quad (4 quad + quad 3)$]),
    ([Calculate $ 50-12 div 4 + 1 $],[$48$]),
  )
)

== Binary
This number is in binary...
#text(56pt)[$ 10110 $]
What is binary?#pause

What is this number in base $10$?

= Binary and Hexadecimal Number Bases
#note[Converting between binary, hexadecimal and decimal numbers]

== Number Bases
When we count, we use "`base 10`". That means there are $10$ available digits before you need to 'move' to the next column.
$ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 $#pause
In `base 12`, there are $12$ available digits. In `base 5`, $5$ digits.
$
  "base" 12&: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, ↊, ↋\
  "base" 5&: 0, 1, 2, 3, 4
$#pause
What do you notice about the largest digit, compared to the base used?

== Number Bases
In every number base, placevalue is determined by powers of the base.\
EG: $  18948.5024_(10) $
#table(columns:range(10).map(_=>1fr), stroke:(top:0pt,left:1pt,right:1pt,bottom:0pt), align:center,
..range(10).map(n=>{
  let pow = 5 - n
  return $10^(#pow)$}),
  $0$,$1$,$8$,$9$,$4$,$8$,$5$,$0$,$2$,$4$
)#pause
$  12343.1224_(5) $
#table(columns:range(10).map(_=>1fr), stroke:(top:0pt,left:1pt,right:1pt,bottom:0pt), align:center,
..range(10).map(n=>{
  let pow = 5 - n
  return $5^(#pow)$}),
  $0$,$1$,$2$,$3$,$4$,$3$,$1$,$2$,$2$,$4$
)

== Binary
#green-book
We can do the same with binary numbers!\
What about $10110.1010_2$?
#table(columns:range(10).map(_=>1fr), stroke:(top:0pt,left:1pt,right:1pt,bottom:0pt), align:center,
..range(10).map(n=>{
  let pow = 5 - n
  return $2^(#pow)$}),
  $0$,$1$,$0$,$1$,$1$,$0$,$1$,$0$,$1$,$0$
)
#pause
$
  &= 2^4 + 2^2 + 2^1 + 2^(-1) + 2^(-3)\
  &= 16+4+2+1/2+1/8\
  &= 22 5/8 ("base" 10)
$

== Counting in Binary
#notes
Let's create a list of the first few binary numbers.

Counting isn't that bad, but as we'll need to go to the next digit whenever we would write a $2$, it'll involve a lot of carrying...#pause
$0, 1, 10, 11, 100, 101, 110, 111, 1000, ...$

#MWBQ(
  (text(36pt)[Convert $14$ into binary],text(36pt)[$ 1110_(2) $]),
  (text(36pt)[Convert $ 101011_2 $ into decimal.],text(36pt)[$ &=32+8+2+1\ &=43 $]),
  (text(36pt)[Convert $51$ into binary],text(36pt)[$ 110011_(2) $]),
  (text(36pt)[Convert $ 1000110 $ into decimal],text(36pt)[$ &= 64+4+2\ &= 70 $]),
)

== Hexadecimal
#green-book
Hexadecimal is another name for `base 16`.

We'll need another $6$ digits, and rather than creating\ new symbols, we'll use the letters $A --> F$.#pause

Let's start by just counting up to $20_(16)$#pause

We can use a place value table to convert $1B$ into decimal.

== You Try
#notes
1. Write $B 4$ in decimal. #uncover(2)[#text(red)[$ = 16 times 11 + 4 = 180_(10) $]]

2. Write $45_(10)$ in hexadecimal. #uncover(2)[#text(red)[$ = 2 times 16 + 13 = 2 D_(16) $]]

#MWBQ(
  (text(36pt)[Convert $18_(10)$ into hexadecimal.],text(36pt)[$ 12 "or" 12_h "or" 12_(16) "or" 0"x"12 $],),
  (text(36pt)[Convert $2C_h$ into decimal.],text(36pt)[$ &= 2 times 16 + 12 times 1\ &= 44_(10) $],),
  (text(36pt)[Convert $60_(10)$ into hexadecimal.],text(36pt)[$ 3C_(16) $],),
  (text(36pt)[Convert $1A A_(16)$ into decimal.],text(36pt)[$ &= 1 times 16^2 + 10 times 16 + 10 times 1\ &= 426_(10) $]),
)

== Converting between hexadecimal and binary.
#green-book
A hexadecimal digit can range from $0--> 15$.

That's the same as $4$ binary digits!#pause

To convert straight from hexadecimal to binary, convert each digit into its $4$ digit binary, then stick it back together!\
eg:$ B 3_(16) $
#note[They love asking us to do this in the exam...]#pause
#place(center,dy:-2em,dx:8em,
  rect( fill:orange.transparentize(40%), stroke:orange+2pt,inset:15pt,radius:20pt,
    [$
       B &= 12 &&--> 1100_2\
       3 &  &&--> 0011_2\
       B 3_(16)& &&--> 1100 quad 0011_2 
     $]
  )
)

== Converting from binary to hexadecimal
#green-book
Let's do the same thing in reverse!
eg: $ 1110011 $#pause
Make it a multiple of $4$ digits, and split them up:
$ &0111_2 quad &&0011_2\ $#pause
Convert each of these _nibbles_ into hexadecimal.
$ &7_16 quad && 3_16\  &=0"x"73 $#pause
#place(center,dy:-8em,dx:10em,
  rect( fill:orange.lighten(40%), stroke:orange+2pt,inset:15pt,radius:20pt,
    align(left)[
      #bold[You try]:\
      Convert $110111000001$\
      into hexadecimal without\
      using decimal.
    ]
  )
)

#MWBQ(
  (text(36pt)[Convert $18_h$ into binary.],text(36pt)[$ 1 quad 1000 $]),
  (text(36pt)[Convert $ 101111011 $ into hex.],text(36pt)[$ 17B_h$]),
  (text(36pt)[Convert $11F F E E_16$ into binary.],text(36pt)[$ 1 quad 0001 quad 1111 quad 1111 quad 1110 quad 1110 $]),
  (text(36pt)[Convert $ 1111 quad 1010 quad 1100 quad 1110 $ into hexadecimal.],text(36pt)[
    #grid(columns:(0.8fr,5fr),
    only("2-")[
      #image("img/FACE.png", width:100%)
    ],
    only(3)[
      $ F A C E_16 $
    ])
  ]),
)


== What does this program output?
#mwb
```cs
static void Main(string[] args)
{
  int myNum = 6;

  Console.WriteLine(myNum);
  Console.WriteLine(myNum * 2.1);
}
```
#only(2)[
  #place( right+horizon, dx:-8em,
    text(red,50pt)[6\ 12.6]
  )
]

= Types and Conversions
== What is a data type?
#discuss#pause
All data is stored in the computer's memory as _binary_.

But we can _interpret_ that data in different ways.#pause

Perhaps $0110_2$ is a 6? Perhaps it's F (the 6#super[th] letter)?#pause

Perhaps it means that the user has gotten questions 2 and 3 correct, but not 1 and 4?#pause

*Data Types* are how we interpret the binary we're storing.

You've already used som, such as ```cs int```, ```cs double```, ```cs string```

== Conversions
#Comp
Let's have a look at a few ways we can convert between\ different data types.

We need to know about:
- Conversions

- Explitic Casting

- Implicit Casting

== Widening and Narrowing Conversions
#green-book
*Widening conversions* are when switching to the\
new type can *never* reduce information.\
In C\# these can happen automatically (implicit)

EG: storing an `int` in a `double`#pause

#text(orange)[#bold[Narrowing conversions]] are when some information may be lost.\
In C\#, you must do these explicitly.

== Parsing and ToString
All basic data types in C\# have\
a '`.Parse`' and a '`.ToString`' method.

*Parsing* is attempting to read a string as a different data type.

EG: ```cs int my_num = int.Parse("1337");```#pause

*`.ToString`* converts the value to a string. This can be particularly useful when trying ot access digits in numbers.

EG: ```cs string digits = my_num.ToString();```

#place(dy:5em,note[This happens with `Console.Write` automatically for us often.])