#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.1"
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))

#let dydx = $("d"y)/("d"x)$
== Starter
#notes
1. Find $"d"/("d"x)(x y)$ #only(2)[#text(red)[$= x #dydx + y$]]

2. Find $"d"/("d"x)(y sin x)$#only(2)[#text(red)[$= y cos x + sin x #dydx$]]

3. Find $"d"/("d"x)(x y^2)$#only(2)[#text(red)[$= y^2 + 2x y #dydx$]]

4. Find $"d"/("d"x)(sinh(x)e^y)$#only(2)[#text(red)[$= cosh(x)e^y + sinh(x)e^y#dydx$]]

5. Find $"d"/("d"x)(ln(x)tan(2y))$#only(2)[#text(red)[$= tan(2y)/x + 2ln(x)sec^2(2y)#dydx$]]

== What is a differential equation?
#red-book
Technically, this is an equation involving a variable, $x$, a function of $x$ (usually '$y$'), and the derivative of the function #dydx .

The goal is to work out what function satisfies that equation.

It's often easiest to imagine these as a *vector field*.

EG. $ #dydx = 2x $

== $ #dydx = 2x $
#place(dy:1em,dx:1em)[#draw-vector-field(dydx:(x,y)=>2*x,domain:(-5,5),range:(-5,5), size:(8,8), stroke-width:0.6)]
#place(dx:13em)[
  The gradient at any point on this graph can be \ calculated as $2x$, so we'll see a quadratic \ if we choose any specific point.
]
== $ #dydx = y - x $
#place(dy:1em,dx:1em)[#draw-vector-field(dydx:(x,y)=>y - x,domain:(-5,5),range:(-5,5), size:(8,8), stroke-width:0.6)]
#place(dx:13em)[
  Every point within this space has a direction \ and a magnitude.#pause

  If we want to find a particular function in here \ we can imagine dropping a point into this \ field and watching where it goes.#pause

  More formally, this is *integration*. \ What does the $+c$ represent then?
]
== Differiental Equations
What kinds of shapes do these more complicated equations make?
#grid(columns:(1fr,1fr),[
$ #dydx = 2x y $
#only("2-")[
  #place(dx:2em)[#draw-vector-field(dydx:(x,y)=>2*y*x,domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step: 0.5)]
]
],[
$ #dydx = 3x + y $
#only(3)[
  #place(dx:2em)[#draw-vector-field(dydx:(x,y)=>y + 3*x,domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step:0.5)]
]
])
== Differential Equations
Sometimes they are more complicated.
$ 
  frac("d"^2 y, "d"x^2) + #dydx + y = e^x
$
This means that there is some function y such that the sum of $y$, the first derivative and the second derivative makes $e^x$ #pause

We'll look at techniques to solve a small number of different types of DEs on this course, but they do go much further.

So far in A Level Maths, you've used *Separation of Variables*

== Drawing Fields
#mwb
For $-4<=x<=4$ and $-4<=y<=4$ sketch the family of solutions for 
#only("2-3")[$
  #dydx = x^2
$]
#only(3)[
  #place(dx:10em)[#draw-vector-field(dydx:(x,y)=>x*x,domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step:0.5)]
]
#only("4-5")[$
  #dydx = y^2
$]
#only(5)[
  #place(dx:10em)[#draw-vector-field(dydx:(x,y)=>y*y,domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step:0.5)]
]
#only("6-7")[$
  #dydx = x y
$]
#only(7)[
  #place(dx:10em)[#draw-vector-field(dydx:(x,y)=>y*x,domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step:0.5)]
]
#only("8-9")[$
  #dydx = x+y
$]
#only(9)[
  #place(dx:10em)[#draw-vector-field(dydx:(x,y)=>x+y,domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step:0.5)]
]
#only("10-11")[$
  #dydx = x^2 - y^2
$]
#only(11)[
  #place(dx:10em)[#draw-vector-field(dydx:(x,y)=>x*x - y*y,domain:(-3,3),range:(-3,3), size:(8,8), stroke-width:0.6, step:0.5)]
]

== Separation of Variables - Recap
#red-book
Find the general solut1ion to $ #dydx = (2x)/y $
#only("2-3")[
  #text(red)[$
    y#dydx &= 2x =>    &&integral y "d"y = integral 2x "d"x \
    therefore 1/2 y^2 &= x^2 + c =>    &&x^2 - 1/2 y^2 + c = 0
  $]
  Given that $y=0$ when $x=1$, find $c$.
]
#only(3)[
  #place(dx:5em,dy:5pt)[#text(red)[
    $
      1 - 0 + c = 0 => c = -1 => x^2 - 1/2 y^2 - 1 = 0
    $]]
]

== Recap: You Try
#notes
Find the solution to each differential equation, given the initial conditions.
1. $#dydx = x y, x = 0, y = 2$

2. $#dydx = e^y / 3, x = e, y = -1$

3. $#dydx = (sin x)/y, x = pi/2, y=1$

4. $dydx = (1 + y^2)/2, x=1, y=0$

5. $#dydx = y - x, x = 0, y = 3$

== solutions
#only(1)[
  $#dydx = x y, x = 0, y = 2, x = e, y = -1$
  #text(red)[
    $
      integral 1/y "d"y &= integral x "d"x \
      ln y &= 1/2 x^2 + c \
      y &= e^(1/2 x^2 + c) equiv A e^(1/2 x^2) \
      y|_((0,2)) = 2 &= A e^0 => A = 2 \
      therefore y &= 2 e^(1/2 x^2)
    $
  ]
]
#only(2)[
  $#dydx = e^y / 3$
  #place(dx:8em,)[#text(red)[
    $ 
      integral e^(-y) "d"y &= integral 1/3 "d"x \
      -e^(-y) &= 1/3 x + c => y = -ln lr(|c-1/3 x|) \
      y|_((e,-1)) = -1 &= -ln(c-1/3 e) \
      e &= c-1/3 e => c = 4/3 e \
      therefore y &= - ln lr((4/3 e - 1/3 x))
    $
  ]]
]
#only(3)[
  $#dydx = (sin x)/y, x = pi/2, y=1$
  #text(red)[
    $
      integral y "d"y &= integral sin x "d"x => 1/2 y^2 = - cos x + c \
      y^2 &= c - 2 cos x |_((pi/2,1)) = 1 = c - 2 times 0 => c = 1 \
      therefore y^2 &= 1 - 2 cos x "or" y = sqrt(1 - 2 cos x)
    $
  ]
]
#only(4)[
  $dydx = (1 + y^2)/2, x=1, y=0$
  #text(red)[
    $
      integral 1/(1+y^2)"d"y &= integral 1/2 "d"x => tan y = 1/2 x + c \
      "@"(1,0) &= 0 = 1/2 + c => c = -1/2 \
      therefore tan y &= 1/2 x - 1/2 "or" y = arctan lr((1/2 x - 1/2))
    $
  ]
]
#only(5)[
  $#dydx = y - x, x = 0, y = 3$
  #text(red)[

    Can't be solved right now. We can't separate the variables.

    Sorry!

    We'll look at some options for these now and next lesson.
  ]
]

== From the Starter
#red-book
Find $"d"/("d"x)(x y)$ #only("2-4")[#text(red)[$= x #dydx + y$]]
#only("3-4")[
  $
    therefore integral x#dydx + y "d"x = x y + c
  $
]
#only(4)[
  So if we had: $ x#dydx+y = x^2 $
  We could integrate both sides, and get:
  #place(dy:10pt,dx:3em)[$
    integral x#dydx+y"d"x = integral x^2 => x y = 1/3 x^3 + c => y = 1/3 x^3 + c/x
  $]
]
#only(5)[
  $ x#dydx+y = x^2 $
  #place(dx:10em)[
    #draw-vector-field(dydx:(x,y)=>(x*x - y)/x, domain:(-3,3), range:(-3,3),step:0.5)
  ]
]

== From the Starter
#red-book
Find $"d"/("d"x)(y sin x)$#only("2-3")[#text(red)[$= y cos x + sin x #dydx$]]
#only(3)[
  $
    therefore integral #dydx sin x + y cos y "d"x = y sin x + c
  $

  Which is effectively reversing the product rule!
]

== Example
#red-book
Find the General Solution to:
$
  2 x y #dydx + y^2 = x^2
$
#only(2)[
  #place()[#text(red)[
    $
      y^2 -> 2y#dydx, x->1, therefore "product rule!" \
      integral 2 x y #dydx + y^2 "d"x = integral x^2 "d"x \
      x y^2 = 1/3 x^3 + c => y^2 = 1/3 x^2 + c/x
    $
  ]]
  #place(dx:18em)[
    #draw-vector-field(dydx:(x,y)=>(x*x - y*y)/(2*x*y), domain:(-3.5,3.5),range:(-3.5,3.5),step:0.4999,stroke-width: 0.4)
  ]
]

== Practice Time!
#notes
Find the general solutions by reversing the product rule:
1. $x^3 #dydx + 3x^2 y = 1/x $

2. $sqrt(x)#dydx + 1/(2 sqrt(x))y = x + 1$

3. $cosh(x)#dydx + sinh(x)y = 2$

4. $ln(x)e^y + e^y / x = x$

5. $x^3 y^2 #dydx + x^2 y^3 = 2$

6. $x^2 #dydx + 4x y = 3$

== Alternative Method
Use the substitution $x = y^2$ to find the general solution to 
$
  2x y #dydx + y^2 = 2x + 1
$