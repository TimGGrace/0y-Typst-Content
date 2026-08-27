#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#import "@preview/cetz-plot:0.1.3" : *
#let dydx = $("d"y)/("d"x)$
#let d2ydx2 = $("d"^2y)/("d"x^2)$

== Starter
#notes
Find the general solution to:
1. $
     #dydx + 2y = x
   $

2. $
     dot.double(x) + dot(x) - 6x = 0
   $
  
3. Find the particular solution to 
$
  frac("d"^2z,"d"t^2) - 9z = 0, "given" lr(frac("d"z,"d"t)|)_(t=0) = 16, z|_(t=0) = 4
$

== Solutions
#text(red)[
#only(1)[1. $
    "IF" = e^(2x), therefore e^(2x)#dydx + 2e^(2x)y &= x e^(2x) \
    e^(2x)y &= integral x e^(2x)"d"x = 1/2x e^(2x) - integral 1/2 e^(2x)"d"x \
    &= 1/2 x e^(2x) - 1/4 e^(2x) + c \
    therefore y &= 1/2 x - 1/4 + c e^(-2x)
  $]
#only(2)[2. $
    "AE" &= m^2 + m - 6 = 0, m in {2, -3}, \ \ therefore x &= A e^(2t) + B e^(-3t)
  $]
#only(3)[3. $
    "AE" &= m^2 - 9 = 0, quad m = 3, quad therefore x = A e^(3t) + B t e^(3t) \
    dot(x) &= 3A e^(3t) + B e^(3t) + 3B t e^(3t) \
    x|_(t=0) &= 4 = A + 0 => A = 4 \
    dot(x)|_(t=0) &= 12 = 3A + B + 0 => B = 4 \
    therefore x &= 4e^(3t) + 4t e^(3t)
  $]
  ]
= Differential Equations 2
#note[2nd Order Homogeneous 2]

== Purely Imaginary Roots
#red-book
Find the general solution to $ #d2ydx2 + 9 y = 0 $
#only("2-")[
  #text(red)[$
  "AE" = m^2 + 9 = 0 => m = plus.minus 3 "i" 
$]
]
#only(3)[
  #place(dx:6em,dy:20pt)[#text(red)[
$
  y &= A e^(3"i"x) + B e^(-3"i"x) \
  &= A(cos 3 x + "i" sin 3 x ) + B(cos -3 x + "i" sin -3 x) \
  &= A(cos 3 x + "i" sin 3 x ) + B(cos 3 x - "i" sin 3 x) \
  &= (A+B) cos 3 x + (A - B) "i" sin 3 x \
  &= C cos 3 x + D sin 3 x
$
]]
]
== Purely Imaginary roots in General
#red-book
Show that the general solution to $ #d2ydx2 + omega^2 y = 0 $ can be written in the form $ y = A cos omega x + B "i" sin omega x $
where $A, B, omega$ are real numbers.

== Complex roots
#red-book
Can we extend this to a complex root, $lambda plus.minus mu "i"$ ?
#uncover(2)[
#text(red)[
 $
   y &= A e^((lambda + mu "i") x) + B e^((lambda - mu "i")x) \
   &= A e^(lambda x)e^(mu"i"x) + B e^(lambda x)e^(-mu"i"x) \
   &= e^(lambda x)(A e^(mu"i"x) + B e^(-mu"i"x)) \
   &= e^(lambda x)(C cos mu x + D sin mu x)
 $ 
]
]

== Sketching the solutions
#red-book
It's natural that when we look at either of the two \ solution forms, we want to know what they look like!

Harmonic forms from A Level Maths can give us an answer.

#only(2)[
  $ y = A cos mu x + B sin mu x equiv R cos (x + alpha) $
  #place()[#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-5,x-max:5,
  y-min:-2,y-max:2,
  {
    plot.add(x=> 1.5 * calc.cos(1.5*x + 0.2), domain:(-5,5), samples:1000)

  })
  })]
]

#only(3)[
  $ y = e^(lambda x)(A cos mu x + B sin mu x) equiv R e^(lambda x)cos (x + alpha) $
  #place()[#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-5,x-max:5,
  y-min:-10,y-max:10,
  {
    plot.add(x=> calc.exp(x) * calc.cos(1.5*x + 0.2), domain:(-5,5), samples:1000)
  })
  })]
]

== Finding a Particular Solution
#red-book
Find and sketch the particular solution to
$
  &dot.double(x) - 2 dot(x) + 2 x = 0 \
  &"Initially" x = 1, dot(x) = 2 \
$
#uncover(2)[
  #text(red)[
    #place()[
      $
        "AE:" m^2 - &2m + 2 = 0 => m = 1 plus.minus "i" \ \
        therefore x &= e^(t)(A cos t + B sin t) \
        therefore dot(x) &= e^t (A cos t + B sin t) + e^t (B cos t - A sin t) \
        x|_(t=0) &= 1 = e^0 (A cos 0 + B sin 0) => A = 1 \
        dot(x)|_(t=0) &= 2 = e^0 (A cos 0 + B sin 0) + e^0 (B cos 0 - A sin 0) => B = 1 \
        therefore x &= e^t (cos t + sin t) = sqrt(2)e^t cos (t + pi/4)
      $
    ]
  ]
]
#uncover(3)[
  #place()[#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-5,x-max:5,
  y-min:-100,y-max:100,
  {
    plot.add(x=> calc.sqrt(2) * calc.exp(x) * calc.cos(x + calc.pi/4), domain:(-5,5), samples:1000)
  })
  })]
]

== Recall
#notes
Given the equation $ a #d2ydx2 + b #dydx + c y = 0 $
state the four possible forms the general solution may take, and the conditions under which it will take them.

== General Solutions
#red-book
#text(23pt)[If the auxiliary equation, $a m^2 + b m + c = 0$ have:
- Two distinct real roots, $lambda, mu$: \ $y = A e^(lambda x) + B e^(mu x) $

- Repeated real roots, $lambda$: \ $y = A e^(lambda x) + B x e^(lambda x) $

- Purely imaginary roots, $plus.minus omega "i"$: \ $y = A cos omega x + B sin omega x "or" R cos (omega x + alpha) $

- Complex roots, $alpha plus.minus beta "i"$:\ $y = e^(alpha x) (A cos beta x + B sin beta x) $]

== Practice! (4s.f. where appropriate)
#notes
#image("../images/2O DE Practice.png", width:90%)
#uncover(2)[
#place(dy:-12em, dx:2em)[
#rect(fill:yellow.lighten(50%), stroke:1pt,inset:20pt, radius:20pt)[
#text(red, 30pt)[
 1. $ x = A e^(-9t) + B t e^(-9 t)$

 2. $ y = A e^(-10 x) + B x e^(-10 x)$

 3. $ x = A sin (0.7746t) + B cos (0.7746t)$

 4. $ x = A e^(-9t) + B t e^(-9t)$

 5. $ p = e^(-3/10 q) (A sin (1.382q) + B cos (1.382q))$

 6. $ y = A e^(-2x) + B e^(-4x)$
]
]
]
]
== Damping
These second order DEs often describe real-world events.
If you think about a spring, for instance, its acceleration is based on the distance from its resting position, but so is its velocity.

Many such systems attempt to reach an equilibrium position.

EG:

#place(dy:-1.5em,dx:8em,)[#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-0.5,x-max:5,
  y-min:-1.2,y-max:1.2,
  {
    plot.add(x=> calc.exp(-x) * (calc.cos(-6*x) + calc.sin(-6 * x)), domain:(0,5), samples:1000)
  })
  })]

#uncover(2)[#place(dy:-5em,dx:4em)[
  #rect(width:500pt, height:200pt,inset:10pt, radius:20pt, fill:yellow.lighten(50%), stroke:1pt)[
    #align(center+horizon)[#link("https://www.desmos.com/calculator/dtall4ygdz")[#text(48pt)[Moving Examples! #emoji.face]]]
  ]
]]

== Damping
#red-book
When discussing these solutions, we consider \ *under-damped*, *over-damped* and \ *critically damped* systems.

The DEs all have particular solutions when these occur:
#text(21pt)[- *under-damped*: auxiliary equation has complex roots. #pause

- *over-damped*: auxiliary equation has distinct real roots.#pause
- *critically damped*: auxiliary equation has repeated negative roots. #pause
- *undamped* systems are when the AE roots are purely imaginary \ (Simple Harmonic Motion).]

