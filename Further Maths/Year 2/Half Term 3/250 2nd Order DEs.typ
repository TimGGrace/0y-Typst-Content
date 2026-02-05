#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#import "@preview/flagada:1.0.1" : *
#let dydx = $("d"y)/("d"x)$
#let d2ydx2 = $("d"^2y)/("d"x^2)$
== Starter
#notes
Spot and explain the mistakes:
#place()[#grid(columns:(1fr,1fr),[
#text(20pt)[$
  x #dydx + (1 + x)y &= 1 \
  #dydx + (1 + x)/x y #pin(0)&= 1#pin(1) \
  "IF" = e^(integral 1/x + 1 "d"x) &= x e^x \
  x e^x #dydx + (1+x)x e^x y &= 1 \
  => x e^x y = x + c \
  therefore y = e^(-x) + c/(x e^x)
$]
],[
#text(18pt)[$
  & (x+5)^3 #dydx + 4 (x+5)^2y = 2 \
  & #dydx + 4/(x+5)y = 2/(x+5)^3 \
  &"IF" = e^(integral 4/(x+5)"d"x) = (x+5)^4 \
  & therefore (x+5)^4 #dydx + 4 (x+5)^3y = 2 (x + 5) = 2x + 10 \
  & "d"/("d"x)(y(x+5)^4)=#pin(2)integral (2x + 10) "d"x = x^2 + 10x #pin(3) \
  & y(x+5)^4 = integral (x^2 + 10x)"d"x = x^3/3 + 5x^2 + c \
  & y = frac(x^3/3 + 5x^2 + c,(x+5)^4)
$]
])]

#only("2-")[#pinit-highlight(0,1, stroke:0.5pt)]
#only("3-")[#pinit-highlight(2,3, stroke:0.5pt, dy:-30pt,extended-height: 50pt)]
= Differential Equations
== Sofia Kovalevskaya (1850 - 1891)
#place(dy:-3em,dx:18em)[#flag("RU", height:70pt)]
#grid(columns:(auto,1fr),column-gutter: 20pt)[
  #image("../images/Sofia_Kovalevskaya.jpg")
  #rect(inset:20pt,radius:30pt,stroke:1pt,fill:yellow.lighten(50%))[
    #link("https://mathshistory.st-andrews.ac.uk/Biographies/Kovalevskaya/")[More Info]
  ]
  ][
#text(18pt)[Sofia Kovalevskaya was a Russian born mathematician who made valuable contributions to the theory of differential equations. Although prevented from entering university in Imperial Russia because of her gender, Sofya had a talent for mathematics and was determined to pursue higher education. She arranged a sham marriage in 1868 to circumvent laws requiring fathers or husbands to permit foreign travel, then convinced Karl Weierstrass (German mathematician, 1815-1897) to begin privately teaching her in 1870.

The success of her work enabled her to become the first woman to obtain a modern doctorate in mathematics, and in 1889 the first woman since Laura Bassi (Italian physicist, 1711-1778) and Maria Gaetana Agnesi (Italian mathematician, 1718-1799) to be appointed to a full professorship in Europe.]
][
  
]
== Recap
#notes
Find the general solution to:
1. $
     x^2 #dydx + x y = x + 2
   $

2. $
     x #dydx - y = -x^2 e^x
   $
3. Show that the solution to $sin x #dydx + y cos x = sin^2 x$ is $ y = 1/2 x "cosec" x - 1/2 cos x + A "cosec" x $

== Notations to be ready for
#red-book
#grid(columns:(1fr,1fr),inset:20pt,
[Leibniz: #pin(0)$ #dydx, frac("d"^2 y, "d"x^2) $#pin(1)],
[Lagrange: $ y', y'' $],
[Euler: $ D_x y, D_x^2 y $],
[Newton: #pin(2)$ dot(x), dot.double(x) $#pin(3)])
#only(2)[
  #pinit-highlight(0,1, dx:120pt, extended-width: 10pt, dy:20pt,extended-height: -30pt)
  #pinit-highlight(2,3, dx:120pt, extended-width: 10pt, dy:20pt,extended-height: -30pt)
]

== Terminology
Recap:
Define *order*, *homogeneous* and *linear* in terms of Differential Equations.

== Discovery time!
#only("1-2")[Let's solve:
$
  a #dydx + b y = 0
$]
#only(2)[
  $
    => #dydx &= -(b y)/a => integral 1/y "d"y = integral -b/a "d"x \
    ln y &= -b/a x + c => y = A e^(-b/a x)
  $
  But what is $-b/a$? We know it solves this equation, so let's try something...
]
#only("3-4")[
  If $y = A e^(m x)$, it must satisfy the equation from before.
  $ 
  therefore a times cancel(A) m cancel(e^(m x)) + b times cancel(A e^(m x)) &= 0 \ \
  a m + b &= 0
  $
  This is what we call the *Auxiliary Equation* \ \
]
#only(4)[
  That form looks very similar. Can you see it?
  $
    a #dydx + b y = 0 quad quad quad quad a m + b = 0
  $
]

== Treating that equation like a polynomial
#red-book
When we treat the differential equation like a polynomial, \ and find a real root, it implies something about the solution. #pause

For our linear equation, we had:
$
  a #dydx + b y = 0 \ => "Auxiliary Equation: "a m + b = 0 => m = -b/a \ y = A e ^(-b/a x)
$ #pause
#place(dy:1em)[Does that apply to second order DEs?]
== Let's try!
#notes
Given the equation
$
  #d2ydx2 - 5 #dydx + 6y = 0
$
#only("2-")[
    $=> "Auxiliary Equation: " m^2 - 5m + 6 = 0 \
  m in {3, 2} $ \
]
#only(3)[
  Verify that $y = A e^(3x) "and" y = B e^(2x)$ are valid solutions to the DE.
]
#only(4)[
  $
    9 e^(3x) - 15 e^(3 x) + 6 e^(3x) &= 0 quad #emoji.checkmark \
    4 e^(2x) - 10 e^(2 x) + 6 e^(2x) &= 0 quad #emoji.checkmark
  $
]

== Formally
#red-book
#text(20pt)[Should the Auxiliary equation for a linear differential equation \ have a real solution, then the Complementary function will take the form $ y = A e^(lambda x) $ where $lambda$ is the solution.]

#uncover(2)[
  Should the auxiliary function has only real roots, then the General solution will #text(16pt)[likely] take the form $ y = sum A_n e^(lambda_n x) quad quad quad quad "eg:" y = A e^(lambda_1 x) + B e^(lambda_2 x) $
]
== Example
#red-book
Find the general solution to
$
  2 #d2ydx2 - 2#dydx - 24 y = 0
$
#uncover(2)[
#text(red)[
  Auxiliary: $2m^2 - 2m - 24 = 0 => m in {4, -3}$

  $therefore y = A e^(4x) + B e^(-3x)$
]
]
== You Try
#notes
Find the general solution to:
1. $
     #d2ydx2 + #dydx - 6y = 0
   $

2. $
     #d2ydx2 - 10 #dydx + 24y = 0
   $

3. $
     2 frac("d"^2 P, "d"q^2) + frac("d"P,"d"q) - P = 0
   $

4. $
     -5 dot.double(x) + 33 dot(x) + 14 x = 0
   $
#place(dy:-10em,dx:15em)[
  #text(blue.darken(20%))[
    EXT: Find the particular solution to \
    $#d2ydx2 - 3 #dydx - 10y = 0$ \
    Given that initially $y = 13/2$ and $#dydx=8$

    Sketch the graph of $y$ against $x$.
  ]
]
== "Initial" Conditions
#red-book
Find the particular solution to
$ #d2ydx2 - 3 #dydx - 10y = 0 $
Given that initially $y = 13/2$ and $#dydx=8$

== Boundary Conditions
#red-book
Find the particular solution to
$ #d2ydx2 - 3 #dydx - 10y = 0 $
When $x = 0, y = 0$ and when $x = 1, y = 100$

== Special case
#red-book
Find the Complementary functions for $ #d2ydx2 - 6#dydx + 9y = 0$
#uncover("2-")[
  #text(red)[
    $ m = 3 => y = A e^(3 x) $
    But a second order DE needs two arbitary constants, and we only have one.

    Verify that $B x e^(3 x)$ is also a valid Complementary function.
  ]
]
#uncover(3)[

  Can we verify that for a general second order DE?
]
== Repeated Roots
$
  a #d2ydx2 + b#dydx + c y = 0
$
Try $y = A e^(lambda x) + B x e^(lambda x)$, 

assuming that $a lambda^2 + b lambda + c = 0$ as $lambda$ is the \ solution to the auxiliary equation.

== Repeated Roots
#red-book
Should the auxiliary equation have repeated roots, our \ General Solution will take a new form:
#place(dx:8em)[#rect(inset:20pt,stroke:1pt,radius:30pt)[$ y = A e^(lambda x) + B x e^(lambda x) $]]
\ \ \
This is also a useful trick later, when we get onto some \ non-homogeneous differential equations.

== You Try
#notes
Find the general solutions:
1. $
     #d2ydx2 - 10 #dydx + 25 y = 0
   $

2. $
     4 frac("d"^2x,"d"t^2) - 4 frac("d"x,"d"t) + x = 0
   $
#text(purple)[
  3. #bold[EXT:] $
                   #d2ydx2 + 16 y = 0
                 $
]