#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#import "@preview/cetz-plot:0.1.3" : *

== Starter
#notes
The diagram shows the curve with equation $ y = 4x - x^2$

1. Find the area of the shaded region.

2. Find the height of the rectangle from \ $x=0$ to $x=4$ which has the same \ area as the shaded region.
#place(dy:-5em,dx:18em)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-1,x-max:5,
  y-min:-1,y-max:5,
  {
    plot.add-fill-between(x=> 4*x - x * x, x=>0,domain:(-0,4), samples:1000, style:(stroke: red.darken(20%)+4pt, fill:red.lighten(70%)))
  })
  })
]

== The Mean Value Theorem for Integrals
#red-book
We know that you can find the area, $A$,  enclosed by \ $y = f(x), x in [a, b]$ with:
$ A = integral^b_a f(x)"d"x $ 

The Mean Value Theorem for Integrals states that, for any continuous function, there is always a rectangle with base $x in [a, b]$ with exactly the same area. 

It can also be shown that $f(x) = h$ has *at least one* solution.

== The Mean Value Theorem for Integrals
#red-book
How could we formally calculate this? #pause
$
  "Height" times "Width" &= integral^b_a f(x)"d"x \
  h(b-a) &= integral^b_a f(x)"d"x \
  h &= 1/(b-a) integral^b_a f(x)"d"x
$

== The Mean Value Theorem for Integrals
#red-book
Formally: 
#v(2cm)
If $f(x)$ is continuous over an interval, $[a, b]$, then there is at least one point $c in (a, b)$ such that 
$
  f(c) = 1/(b-a) integral^b_a f(x)"d"x
$

== Example:
#red-book
Find the mean value of $f(x) = 1/sqrt(x)$ on the interval $x in [4, 16]$
#only(2)[
  #place()[
    #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-1,x-max:18,
  y-min:-0.05,y-max:0.6,
  {
    plot.add-fill-between(x=> 1/calc.sqrt(x), x=>0,domain:(4,16), samples:1000, style:(stroke: none, fill:red.lighten(70%)))
    plot.add-fill-between(x=>1/3, x=>0, domain:(4,16),style:(stroke:none,fill:blue.transparentize(80%)))

    plot.add(x=>1/calc.sqrt(x), domain:(0.01,18), style:(stroke: red.darken(20%)+4pt))
    plot.add(x=>1/3, domain:(4,16), style:(stroke: blue.darken(20%)+4pt))
  })
  })
  ]

  #place(dy:1em,dx:12em)[#text(red)[
    $
      "Mean Value" &= 1/(16-4) integral^16_4 x^(-1/2)"d"x \
      &= 1/12 [2 x^(1/2)]^16_4 \
      &= 1/12 (8-4) \ &= 1/3
    $
  ]]
]

== You Try
#notes
The velocity of a particle after $t$ seconds is given by $ v = 1/8 t(9 - 4/sqrt(t))"ms"^(-1) $
1. Show that the mean velocity for $1 <= t <= 4$ is $2.03 "ms"^(-1)$ to $3$ \ significant figures.

2. Calculate the mean acceleration of the particle over the \ same time period.

== "Exam"ple question
#notes
AQA AS Core Pure 2020
#only(1)[#place(dy:1em,)[#image("img/256 exam Q1.png")]]
#only(2)[#place(dy:1em,dx:-1.5em)[#image("img/256 exam MS1.png", width:110%)]]

== Practice!
#notes
Find the exact mean value of the following functions:
#grid(columns:(1fr,0.5fr),[
1. $y = x^2, x in [1, 10]$

2. $y = sec^2 x, {x|x in RR, - pi/4 <= x <= pi/4}$

3. $y = tan x forall x in [0, pi/4]$

4. $y = sin 2 x cos^5 2 x$, from $x = 0$ to $x = pi/6$

5. $y = 2^x, x in [3,5]$

6. $y = 2cos x, x in [0, 2 pi]$
],
only(2)[
  #text(red)[
    $37$

    $4/pi$

    $(ln 4)/pi$

    $63/(128 pi)$

    $12/(ln 2)$

    $0$ ??
  ]
])

== Root Mean Square
#red-book
So, I think we can all agree, the $0$ there wasn't particularly \ helpful. #pause

To get a better idea of what's happening with periodic funcitons, we can find the *Root Mean Square*
$
  "RMS" = sqrt(1/(b-a) integral^b_a [f(x)]^2 "d"x)
$
This is a measure of how far away the function is from zero on average.

If you need to use this in the exam, they will give it to you.

== Root Mean Square
#red-book
Find the Root Mean Square of \ $f(x) = 2 cos(x)$ for the interval $[0, 2 pi]$

#only(2)[
  #place(dy:1em,)[#text(red)[
    $
      "RMS" &= sqrt(1/(2 pi - 0) integral^(2 pi)_0 [2 cos x]^2"d"x) = sqrt(1/(2 pi) integral^(2 pi)_0 4 cos^2 x"d"x) \
      &= sqrt(1/(2 pi) integral^(2 pi)_0 2 (1 + cos 2 x) "d"x) = sqrt(1/pi integral^(2 pi)_0 1 + cos 2x"d"x) \
      &= sqrt(1/pi [x + 1/2 sin 2x]^(2 pi)_0) = sqrt(1/pi [(2 pi) - (0)]) = sqrt(2)
    $
  ]]
]

== Practice Time!
#TLFMaths
#place(dy:1.2em,dx:22.1em,align(center)[Q6, Q10])

== Beyond the Spec!
Proving the Mean Value Theorem with a Secant

The theorem strictly states:
#align(center)[
  If $f(x)$ is continuous over a closed interval $[a, b]$ and differentiatable over the open interval $(a, b)$, then there exists a point $c in (a, b)$ such that the tangent at $c$ is parallel to the secant line through $(a, f(a)), (b, f(b))$. Thus:
$
  f'(c) = frac(f(b) - f(a), b - a)
$
]

== Beyond the Spec!
$
  F(x) = integral^x_a f(t)"d"t \
  therefore F'(x) = f(x) "and" F(b) - F(a) = integral^b_a f(x)"d"x \ \

  "if" f'(c) = frac(f(b) - f(a), b-a)
$

== Beyond the Spec!
#place(dy:2em,dx:11em)[
  #let f-x = x=> (x - 1)*(x - 2)*(x - 3)
  #let x-1 = 2 - calc.sqrt(3)/2
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-1,x-max:4,
  y-min:-5,y-max:5,
  {
    plot.add(f-x,domain:(-1,4), samples:1000, style:(stroke:blue))
    
    plot.add(((0.5,f-x(0.5)),(3.5,f-x(3.5))), mark: "x", mark-size:10pt)

    plot.add(getTangent(func:f-x,x-0:x-1),domain:(-1, 4), style:(stroke: orange))

    plot.add(((x-1,f-x(x-1)),(x-1,f-x(x-1))), mark:"x",mark-size:10pt, mark-style:(stroke:orange, fill:orange))
  })
  })
]