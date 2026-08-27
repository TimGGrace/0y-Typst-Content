#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))

== Starter
#notes
Write each of the following in terms of exponentials
$ y = sinh x quad quad quad y = cosh x quad quad quad y = tanh x $

Give a reason why each could be an odd one out.

== Differentiation
#red-book
By considering the definitions of $sinh x$ and $cosh x$, \ find their derivatives.
#grid(columns:(1fr,1fr),
only("2-")[
  #text(26pt)[$ y &= sinh x \
  &= frac(e^x-e^(-x),2) \
  ("d"y)/("d"x) &= frac(e^x + e^(-x),2) \
  &= cosh x
  $]
  
  ],
  only(3)[
    #text(26pt)[$
    y &= cosh x \
    &= frac(e^x + e^(-x),2) \
    ("d"y)/("d"x) &= frac(e^x - e^(-x),2) \
    &= sinh x
    $]
])

== Differentiation
#red-book
Find the gradient function of $tanh x$
#only(2)[
  $
  y &= tanh x = (sinh x)/(cosh x)  \
  ("d"y)/("d"x) &= frac(cosh x times cosh x - sinh x times sinh x,cosh^2 x) \
  &= 1/(cosh^2 x) = sech^2 x
  $
]

== Practising it
#red-book
Find the equation of the tangent to the curve \
$y = sinh (x/2)$ at $x = 2 ln 3$

#uncover(2)[
  $ y &= sinh x/2, quad lr((e^(x/2)-e^(-x/2))/2 |)_(x=2ln 3) = 4/3 \
  ("d"y)/("d"x) &= 1/2 cosh x, quad lr((e^(x/2)+e^(-x/2))/4|)_(x = 2 ln 3) = 5/6 
  $
  #place(dy:10pt)[
    $ therefore y - 4/3 &= 5/3(x - 2 ln 3) => y = 5/3 x + 4/3 - 5/3 ln 3 $
  ]
]

== Practicing it
#red-book
Find the area between the curve $y = sinh x/2$, \ the $x$-axis, $x = 0$ and $x = 2 ln 3$

#only(2)[
  $
  A &= integral^(2ln 3)_0 sinh x/2 "d"x = [2 cosh x/2]^(2 ln 3)_0 \
  &= [(2 cosh ln 3) - (2 cosh 0)] \
  &= [(e^(ln 3)+e^(-ln 3)) - (e^0 + e^0)] = 3 + 1/3 - 1 - 1 = 4/3
  $
]

#MWBQ(title:[Find $frac("d"y,"d"x)$],
([$ y = cosh 3x $],[$ frac("d"y,"d"x) =  3 sinh 2x $]),
([$ cosh(x)sinh(2x) $],[$ frac("d"y,"d"x) = sinh(x)sinh(2x) + 2 cosh(x)cosh(2x) $]),
([$ tanh x^2 $],[$ frac("d"y,"d"x) &= sech^2(x^2) times 2x \ &= 2 x sech^2 x^2 $]),
)
#MWBQ(title:"Calculate",
([$ A = integral sinh x "d"x $],[$ A = cosh x + c $]),
([$ A = integral sinh 2x "d"x $],[$ A = 1/2 cosh 2x + c $]),
([$ A = integral_0^(ln 2) cosh 2x "d"x $],[$ A &= [1/2 sinh 2x]^(ln 2)_0 = [1/2 sinh(ln 4) - 0] = 15/16 $]),
)

== You Try
#notes
#grid(columns:(1fr,1fr),
text(20pt)[
  Differentiate:
1. $cosh 2x$
2. $sinh 5x$
3. $tanh 3x$
4. $2 cosh 4x  - 5 sinh 3x$
5. $3 cosh 2x + 6 sinh 5x$
6. $coth x$
7. $sech x$
8. $3 cosh^5 3x$
9. $2 sinh^4 8x$
10. $ln cosh x$
],
text(20pt)[
  Integrate:
1. $sinh 2x$
2. $cosh 4x$
3. $sinh x/3$
4. $2 cosh x/5$
5. $3 cosh 5x - 2 sinh x/2$
6. $sech^2 3x$
7. $tanh^2 x sech^2 x$
8. $tanh 4x$
9. $x sinh x$
10. $sinh^6 2x cosh 2x$
])

== Let $y = x sinh x$
#notes
1. Show that $frac("d"^2 y, "d"x^2) = x sinh x + 2 cosh x$, and find $frac("d"^4 y, "d"x^4)$

2. Write down a conjecture for $frac("d"^(2n) y, "d"x^(2n))$

3. Use induction to prove your conjecture.

== How do we differentiate the \ inverse functions?
#red-book
$ y = "arsinh" x $
#only(2)[
  $ 
  sinh y = x &=> frac("d"y,"d"x) cosh y = 1 => frac("d"y,"d"x) = sech y \ frac("d"y,"d"x) &= 1/(cosh y) = 1/(sqrt(1 + sinh^2 y)) = 1/sqrt(1 + x^2)
  $
]

== $"arcosh" x$ and $"artanh" x$
#red-book
#grid(columns:(1fr,1fr),[
  $y = "arcosh" x$
  #only("2-")[#text(18pt)[
    $
    cosh y = x&=> frac("d"y,"d"x) sinh y = 1 \
    frac("d"y,"d"x) &= 1/(sinh y) \ &= 1/sqrt(cosh^2 y - 1) \ &= 1/sqrt(x^2 - 1) \ "where" &x > 1
    $
  ]]
],
[
  $y = "artanh" x$
  #only("3")[#text(18pt)[
    $
    tanh y = x&=> frac("d"y,"d"x) sech^2 y = 1 \
    frac("d"y,"d"x) &= 1/(sech^2 y) \ &= 1/(1 - tanh^2 y) \ &= 1/(1 - x^2) \ "where" &-1 < x < 1
    $
  ]]
])

== You Try
#notes
#grid(columns:(1fr,1fr),
[
  Find $frac("d"y,"d"x)$ for the following:
  1. $y = "arcosh" 3x$
  2. $y = "arsinh" x/2$
  3. $y = "artanh" 5x$
  4. $y = "artanh" (2x + 5)$
  5. $y = "arsinh" x^2$
  6. $y = "arcosh" 1/x$  
],
[
  #v(3cm)
  #text(purple)[#bold[EXT: ]]Use the $ln$ definitions for $"arsinh"$, $"arcosh"$ and $"artanh"$ to prove their derivatives.
])

== Next time
Can we use the '$ln$' trick to find these?
$
&integral "arsinh" x "d"x \
&integral "arcosh" x "d"x \
&integral "artanh" x "d"x 
$