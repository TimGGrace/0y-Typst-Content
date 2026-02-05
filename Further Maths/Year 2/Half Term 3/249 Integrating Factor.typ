#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#let dydx = $("d"y)/("d"x)$
== Starter
#notes
For the following questions,
1. Sketch the gradient field for $-3<=x<=3, -3<=y<=3$
2. Solve the DE with the given initial conditions. Sketch your solution on your gradient field.

#enum(numbering:"a.")[$ #dydx=2x-1, "initial:(1,1)" $][
  $
    #dydx -2x y = 0, "initial: (0,1)"
  $
][
  $
    tanh(x)#dydx + sech^2(x)y = 1, "initial: (1, coth(1))"
  $
]

== Solutions
#only(1)[#place(dy:1em,dx:1em)[#draw-vector-field(dydx:(x,y)=>2*x - 1,domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step:0.5)]]
#only(2)[#place(dy:1em,dx:1em)[#draw-vector-field(dydx:(x,y)=>x - 3 * x * y,domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step:0.5)]]
#only(3)[#place(dy:1em,dx:1em)[#draw-vector-field(dydx:(x,y)=>(1 - y/(calc.cosh(x)*calc.cosh(x)) ) / calc.tanh(x),domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step:0.5)]]

== Find the general solution
1. $
     #dydx = x - 3x y
   $
2. #text(purple)[$
     #dydx = x - 3 y
   $]

Why is that second one different if it looks so similar?
#uncover("2-")[
  #place(dy:-6.65em,dx:8em)[
    #text(red)[$ =>y=A e^(-3/2 x^2) + 1/3 $]
  ]
]
#uncover(3)[
  #place(dy:1em,)[We'll be looking at these questions this lesson. The variables cannot be separated, and it's not immediately a product rule.]
]



== Rearranging DEs
#red-book
The standard way to write a DE is with the $y$ parts on one side, \ and everything else on the other.

EG: $
      #dydx = x y + x + 1 -> #dydx -x y = x + 1
    $
This does help us to spot those product-rule questions too.

== Classifying DEs
#red-book
Different types of DE will have different typical solutions \ and methods. Classifying them is then really useful!

#grid(columns:(1fr,1fr),
[
*Order of a DE*
$
  #dydx = x - 3 x y &-> "1st order" \ \
  ("d"^2y)/("d"x^2) + 2 #dydx + 4y &= x \ &->"2nd order"
$
],uncover(2)[
*Homogeneous vs \ non-homogeneous*
$
  #dydx &= 3 x y -> "Hom." \ \
  #dydx &= x + y -> "non-Hom."
$
])
== Classifying DEs
#red-book
#only(1)[*Linear vs non-linear*
#grid(columns:(1fr,1fr),
[$
   #dydx &= 3 x y + x^2 -> "linear" \ \
    2 x y#dydx + y^2 &= x -> "non-linear"
 $])]
 #only("2-")[
  - *Order*: Like a polynomial, but looking at the highest \ order of Differential.]
#only("3-")[  - *Homogeneous*: An equation that can be re-arranged such that the RHS is 0. (ie. only terms involving $y$)]
#only("4-")[  - *Non-homogeneous*: An equation where there are terms that do not include $y$.]
#only("5-")[  - *Linear*: Any equation where terms are only involving $y$ and derivatives of $y$.]
#only("6-")[  - *Non-linear*: An equation where there are terms involving non-linear $y$ terms (eg. $y^2, e^y, y #dydx$)]

== So far
We've seen 1st order homogenous DEs that can be solved by separation of variables. (linear and non-linear) \
EG: $
      #dydx -2x y = 0 "or" #dydx = e^x y^2
    $#pause
We've seen 1st order non-linear non-homogeneous equations where the product rule applies, \
EG: #place(dx:10em)[$
      sin x #dydx + y cos x = 2 x
    $]

== The next step
#red-book
The next kind of differential equation we're going to tackle is \ when the product rule seems like it might apply, \ but the terms don't quite line up.
$
  x^2 #dydx + 4x y = 3
$
#uncover("2-")[
  #place(dx:10em,dy:1em)[#text(red,20pt)[$
    script(times x^2) quad x^4#dydx +4 x^3 y &= 3 x^2 quad script(times x^2) \
    "d"/("d"x)(x^4 y) &= 3x^2 \
    x^4 y &= x^3 + c \
    y &= 1/x + c/x^4
  $]]
]
#uncover(3)[
#place(dy:1em,dx:-0.5em)[#rect(fill:fadedBlue.transparentize(50%),stroke:1pt,inset:10pt,radius:15pt)[
  We call $x^2$ here the $->$\ *integrating factor*
]]
]
== Integrating Factor
#red-book
An Integrating factor can be used to create perfect derivatives \ for 1st order linear differential equations. \ (Although the method can be modified to work with non-linear ones)

Useful for those in the form:
$
  #dydx + P(x) y = Q(x)
$
(Linear, in terms of $y$)#pause\
#rect(inset:10pt,radius:10pt)[It can be shown that the integrating factor is always $e^(integral P(x)"d"x)$]

== Find the general solutions:
#red-book
#grid(columns:(0.8fr,0.8fr,0.2fr),[
  $
    #dydx = x - 3 y
  $
#uncover("2-")[
#text(red)[
  $
    #dydx + 3y &= x -> P(x) = 3 \
    "IF" &= e^(integral 3"d"x) = e^(3x) \
    therefore e^(3x) #dydx &+ 3 e^(3x)y = x e^(3x) \
    e^(3x)y &= integral x e^(3x)"d"x \ &...
  $
]
]
],
[
  $
    #dydx + 2/x y = 4/x^2
  $
  #uncover(3)[
    #text(red)[
      $
      P(x) = 2/x -> "IF" &= e^(integral 2/x "d"x) = x^2 \
      therefore x^2 #dydx + 2x y &= 4 \
      therefore x^2 y &= integral 4"d"x \
      &...
      $
    ]
  ]
])
== You Try
#notes
Find the general solution to:
#grid(columns:(1fr,1fr))[
1. $
     x #dydx + 4y = x^(-5/2)
   $
2. $
     #dydx - 2y = e^(10x)
   $
3. $
     #dydx + 2 x y = sin x
   $
4. $
     #dydx + y/x = 2x^3
   $][
5. $
     2 x #dydx -y = x^2
   $
6. $
     #dydx + (2y)/x = x
   $
7. $
     #dydx + y x = 4 x
   $
8. $
     t ("d"x)/("d"t) - 3x = t^2
   $
   ]

== "Exam"ple question
#notes \
#only(1)[#image("../images/DE Exam Question.png", width:100%)]
#only(2)[
  #place(dy:-12em)[
    #image("../images/DE Exam Question MS.png", width:100%)
  ]
]
== "Exam"ple question
#notes \
#only(1)[#place(dy:-2em)[#image("../images/DE Exam Question 2.png", height:100%)]]
#only(2)[
  #place(dy:-2em)[
    #image("../images/DE Exam Question MS 2.png", height:100%)
  ]
]