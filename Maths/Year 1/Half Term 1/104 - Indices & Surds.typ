#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet:(
    (text(20pt)[What inequality must the discriminant satisfy if the equation $a x^2 + b x + c = 0$ has no real solutions?#v(-0.4em)],[$b^2 - 4 a c < 0$]),
    (text(20pt)[What are the coordinates of the vertex of $y = (x - a)^2 + b)$#v(-0.4em)],[$(a, b)$]),
    (text(20pt)[The gradient of a line is $4/5$\ State the gradient of the line perpendicular to it.#v(-0.4em)],[$-5/4$]),
    (text(20pt)[State the coordinates of the midpoint of $(2,6)$ and $(-4,-10)$#v(-0.4em)],[$(-1,-2)$]),
    (text(20pt)[State the gradient of the line passing through $(0,2)$ and ($-3,0$)],[$m = frac(2 - 0, 0 - -3)= 2/3$]),
  ),
  secondSet: (
    ([Find the roots of the equation $ y = 3x^2 + 2x - 4 $#v(-0.4em)],[$x in {frac(-1 + sqrt(13),3),frac(-1 - sqrt(13),3)}$]),
    ([Express $y = x^2 + 2x - 15$ in both factorised #bold[and] completed square form.#v(-0.4em)],[ $ y &= (x+5)(x-3)\ &= (x+1)^2-16 $]),
    ([Find the value(s) of $k$ such that $ y = 3x^2 + 2k x + 1 $ has one repeated real root.],[
      $
        y &= 3x^2 + 2k x + 1\ \
        &b^2 - 4a c = 4k^2 - 12\ \ \
        "1 root" &@ b^2 - 4 a c = 0\
        therefore 4k^2 - 12 &= 0\
        k & in {sqrt(3), -sqrt(3)}
      $
    ]),
  )
)

== MathsHub (Lunchtime Workshop)
#only(1)[#place( dy:1em,
  image("img/maths-hub.png")
)]
#place(top+right, dy:-1em,dx:1em,
image("../../../Templates/maths-explor-general.png",height:30%))
#only(2)[
  - Runs between #bold[#text(green)[12:00 - 12:45]],\ *Mondays and Wednesdays* in #bold[#text(red)[N29]]

  - You can ask for help on any A-Level Maths-related problem: be it a homework query, a concept you have not understood in class or questions from a past paper you are stuck on - get expert help when you need it!
  - You can attend as little or as often as you like.
  - There are regularly two maths teachers present, as well as second year maths students to help you.
  - Peace of mind, 1-2-1 friendly maths assistance - so come along! Much cheaper than private tuition!!!
]

#KeyPerson(
  image-path:"../Maths/Year 1/Half Term 1/img/Shakuntala.png",
  link-path: "https://en.wikipedia.org/wiki/Shakuntala_Devi",
  title:[Shakuntala Devi],
  content: text(20pt)[#v(-2em)
Shakuntala Devi was born in India to a family of circus performers. Although she did not have a formal education, she displayed a remarkable skill for mental arithmetic.

Two of her most famous exploits include:
+ Finding the 23rd root of a 201-digit number within 50 seconds - outperforming contemporary computers by twelve seconds,
+ Determining the product of two randomly selected 13-digit numbers within 28 seconds: 686,369,774,870 $times$ 2,465,099,745,779.

Devi was later inducted into the 1982 Guinness Book of World Records for this feat and her remarkable abilities.

  ]
)

= Indices & Surds
#note[The Laws of Indices, Manipulating Fractional and Negative Indices, Simplifying Surds, Rationalising the Denominator]

== Discuss
#discuss\ \
#text(36pt)[In your table groups, come up with a list of all of the laws of indices.]

== The Laws of Indices
#yellow-book
$
x^a times x^b &= x^(a+b)\ \
x^a div x^b &= x^(a - b)\ \
(x^a)^b &= x^(a b)\ \
x^(-a) &= 1/(x^a)\ \
x^(1/a) &= root(a,x)\ \
x^0 &= 1
$

#MWBQ(
  title:"True or False",
  (text(36pt)[$ x sqrt(x) equiv x^(3/2), quad quad x > 0 $],text(36pt)[TRUE]),
  (text(36pt)[$ 1/(x^3) equiv x^(-3), quad quad x != 0 $],text(36pt)[TRUE]),
  (text(36pt)[$ frac(x^2+x^4,x^3) equiv x^2 + x, quad quad x != 0 $],text(36pt)[FALSE]),
  (text(36pt)[$ (x^2)^3 equiv x^5, quad quad x > 0 $],text(36pt)[FALSE]),
  (text(36pt)[$ x^2 + x^4 equiv x^6 $],text(36pt)[FALSE]),
  (text(36pt)[$ 1/(x^(-1)) equiv x, quad quad x != 0 $],text(36pt)[TRUE]),
  (text(36pt)[$ frac(sqrt(x),x) = x^(1/2), quad quad x > 0 $],text(36pt)[FALSE]),
  (text(36pt)[$ x^2 times x^4 = x^8 $],text(36pt)[FALSE]),
  (text(36pt)[$ frac(x^50,x^5) equiv x^10, quad quad x != 0 $],text(36pt)[FALSE]),
  (text(36pt)[$ (root(3,x))^2 equiv root(3,x^2) $],text(36pt)[TRUE]),
  
)

== Example: Simplify $25^(-3/2)$ without a calculator

== Example: Simplify $5a^3 b^2 c times 6a^8 b c^(-3)$

== Example:\ Write in the form $8^k$
#yellow-book
$
  8^3 times frac(2,root(4,8))
$#pause
#text(red)[$
  &equiv 8^3 times frac(8^(1/3),8^(1/4))\
  &equiv 8^3 times 8^(1/12)\
  &equiv 8^(37/12)
$]

== Write each of these in the form $8^k$
#notes
#grid(columns:(1fr,1fr),
[
+ $ 8^200 times 8^(-300) $ #uncover(2)[#text(red)[$ equiv 8^(-100) $]]

+ $ frac(2,sqrt(8)) $ #uncover(2)[#text(red)[$ equiv 8^(-1/6) $]]
],
[
  #set enum(start:3)
  + $ root(3,64) times (8^7)^(1/6) $ #uncover(2)[#text(red)[$ equiv 8^(11/6) $]]

+ $ 4 times sqrt(2) times root(3,16) $ #uncover(2)[#text(red)[$ equiv 8^(23/18) $]]
])


== Discuss
#discuss
#align(center)[
  #text(56pt)[
    Are all of these surds?
    $
      sqrt(1), sqrt(2), sqrt(3), sqrt(4), sqrt(5)\
      sqrt(6), sqrt(7), sqrt(8), sqrt(9), sqrt(10)
    $
  ]
]

== You Try:
#notes
Write each of these in the form $sqrt(k)$, where $k in NN$\
#bold[Do not use a calculator]

+ $5 sqrt(3)$

+ $8 sqrt(5)$

+ $25 sqrt(15)$

== Rationalise the Denominator
#yellow-book
#grid(columns:(1fr,1fr),
$ 5/sqrt(3) $,
only(2)[$ 4/(1+sqrt(2)) $])

== You Try: Rationalise
#notes
#grid(columns:(1fr,1fr),
[
  + $ 8/sqrt(5) $ #uncover(2)[#text(red)[$ frac(8 sqrt(5),5) $]]

  + $ 16/sqrt(2) $#uncover(2)[#text(red)[$ 8 sqrt(2) $]]
],
[
  #set enum(start:3)
  + $ frac(2, 3-sqrt(p)) $#uncover(2)[#text(red)[$ frac(6 + 2 sqrt(p), 9 - p) $]]
])

== Practice!
#notes
*Key Questions:*\
Page 1: Q2, Q12
#place( dy:1em,
rect( inset:10pt,stroke:2pt+fadedBlue,fill:fadedBlue.lighten(70%),
  [Then move to:\ 
  #align(center)[
    #text(orange)[#bold[Indices]]\
    Page 2: Q8, Q11\
    #text(red)[#bold[Indices]]\
    Page 2: Q13 - Q19\
    #text(orange)[#bold[Surds]]\
    Page 4: Q14, Q18\
    #text(red)[#bold[Surds]]\
    Page 4: Q20 - Q26
  ]
  ])
)
#place( dy:-3em,dx:16em,
  TLMaths
)