#import "../../../Templates/template.typ": *
#import "@preview/irif:0.0.2": *
#import "@preview/pinit:0.2.2"
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))


== Key Assignment Review 14: LP Solvers
#notes

= First Order Differential Equations
#note[Integrating Factors]

== Find:
#notes
#grid(columns:(0.2fr,1fr),[
1. $ "d"/("d"x)(x y) $

2. $ "d"/("d"x)(y sin x) $

3. $ "d"/("d"x)(x y^2) $
],only(2)[
#text(red)[
  $ "d"/("d"x)(x y) = x frac("d"y,"d"x) + y $

$ "d"/("d"x)(y sin x) = frac("d"y,"d"x)sin x + y cos x $

$ "d"/("d"x)(x y^2) = 2 x y frac("d"y,"d"x) + y^2 $
]
])

== A Level 1DEs
#notes
#grid(columns:(1fr,1fr),
[
  #text(20pt)[Find y for $ frac("d"y,"d"x) = x $ given that $x=2$ when $y=3$]
  #only("2-")[
    #text(red,18pt)[
      $
        y &= integral x "d"x = 1/2 x^2 + c \ \
        y|_(x=2) &= 3 = 1/2 times 2^2 + c \
        &=> c = 1 \
        therefore y = 1/2 x^2 + 1
      $
    ]
  ]
],
[
  #text(20pt)[
    Find y for $ frac("d"y,"d"x) = y $ given that $x=0$ when $y=2$
  ]
  #only(3)[
    #text(red, 18pt)[
      $
        1/y frac("d"y,"d"x) &= 1 \
        therefore integral 1/y "d"y &= integral 1 "d"x \
        =>ln y &= x + c \
        @ (0, 2): ln 2 &= c \ 
        therefore y = e^((x + ln 2)) &= 2 e^x
      $
    ]
  ]
])

== Harder problems
Using separation of variables, we can solve:
$
  frac("d"y,"d"x) = x - 3 x y
$#pause

But this one is much harder:
$
  frac("d"y,"d"x) = x - 3 y
$
How do we solve it?

== Solving
#place(dy:-1em, dx:5em)[#text(18pt,)[$
  frac("d"y,"d"x) &= x - 3 y \
  therefore frac("d"y,"d"x) + 3 y &= x \ \ 

  "IF": e^(integral 3"d"x) &= e^(3x) \
  therefore e^(3x)frac("d"y,"d"x) + 3e^(3x)y &= x e^(3x) \ \
  => frac("d","d"x)(y e^(3x)) &= x e^(3x) \
  y e^(3x) &= integral x e^(3x) "d"x = 1/3 x e^(3x) -integral 1/3 e^(3x)"d"x \
  &= 1/3 x e^(3x) - 1/9 e^(3x) + C \
  therefore y &=  1/3 x - 1/9 + C e^(-3x)
$]]

== Solving Practice
#notes
Find the general solution to:
#text(22pt)[1. $
     sin(x) frac("d"y,"d"x) + y cos(x) = 2x
   $

2. $
     frac("d"y,"d"x) + 2/x y = 4/x^2
   $

3. $
     x frac("d"y,"d"x) + 4 y = x^(-5/2)
   $

4. $
     x frac("d"y,"d"x) + 3y = 1/x
   $]

== "Exam"ple question
#notes
#place(dy:0.5em,)[#text(18pt)[A tank at a chemical plant has a capacity of #pin(0)$250$ litres#pin(1). \ The tank #pin(2)initially contains $100$ litres#pin(3) of #pin(4)pure water#pin(5).

#pin(6)Salt water#pin(7) enters the tank at a rate of #pin(8)$3$ litres every minute#pin(9). Each litre of salt water entering the tank contains #pin(10)$1$ gram of salt#pin(11).

It is assumed that the salt water mixes instantly with the contents of the tank upon entry.

At the instant when the salt water begins to enter the tank, a valve is opened at the bottom of the tank and the solution in the tank #pin(12)flows out at a rate of $2$ litres per minute#pin(13).

Given that there are $S$ grams of salt in the tank after $t$ minutes.
#enum(numbering:"a)")[
  Show that the situation can be modelled by the differential equation
  $
    frac("d"S,"d"t) = 3 - frac(2S,100+t)
  $
][
  Hence find the number of grams of salt in the tank after $10$ minutes.
]
]]#pause
#pinit-highlight(0,1)#pause
#pinit-highlight(2,3)
#pinit-highlight(4,5)#pause
#pinit-highlight(6,7)
#pinit-highlight(8,9)#pause
#pinit-highlight(10,11)#pause
#pinit-highlight(12,13)

== You Try
#text(18pt)[
  Two different colours of paint are being mixed together in a countainer.

  The paint is stirred continuously so that each colour is instantly dispersed evenly 
]