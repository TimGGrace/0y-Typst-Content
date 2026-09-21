#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet:(
    (text(20pt)[State the coordinates of the turning point of the curve\ $y = 5 - 3(x-8)^2$ #bold[and] say whether it is a maximum or a minimum.#v(-1em)],[$(8,5)$, maximum]),
    (text(20pt)[State the value of $p$, given\ $sqrt(x) = x^p$#v(-1em)],[$p=1/2$]),
    (text(20pt)[Solve the equation\ $(2x+1)(3x-8)=0$#v(-1em)],[$x in {-1/2, 8/3}$]),
    (text(20pt)[State the coordinates of the midpoint of $(-1,5)$ and $(8,-3)$#v(-1em)],[$(7/2, 1)$]),
    (text(20pt)[State the gradient of the line passing through $(3,18)$ and $(-2,3)$],[$frac(18-3,3--2)=3$]),
  ),
  secondSet: (
    (text(22pt)[Given that $k in NN$,\ rationalise the denominator for $9/sqrt(k)$],[$9/sqrt(k) times sqrt(k)/sqrt(k) = frac(9 sqrt(k),k)$]),
    (text(22pt)[Write in the form $5^k$ $ 125/root(3,5) $],[$125/root(3,5) = 5^3 times 5^(1/3)=5^(8/3)$]),
    (text(22pt)[The height, $h$m of water in a fountain at a time, $t$s can be modelled by#v(-0.5em) $ h=-4t^2 + 4t + 2 $#v(-0.5em) Find the greatest height of the water and the time at which it occurs.],[
      $
        h &= -4t^2 + 4t + 2\
        &= -4(t^2 - t) + 2\
        &= -4((t-1/2)^2-1/4)+2\
        &= 3-4(t-1/2)^2
      $
      When $t=1/2$s, $h_("MAX")=3$m
    ]),
  )
)

== Let's talk about homeworks.\ What's wrong with this?
#let props = (inset:15pt,radius:20pt,fill:orange.lighten(60%))
#place(top+right, dy:-1em,dx:1em,
image("../../../Templates/maths-explor-general.png",height:30%))
#only("1-2")[
  #place( dy:2em,
    image("img/105-hw-ex-1.png")
  )
]
#only(2)[
  #place( center+horizon,dy:-2em,dx:5em,
    rect( ..props,
      [It's so blurry!
      
      #bold[Check] what you upload.]
    )
  )
]

#only("3-4")[
  #place( dy:2em,
    image("img/105-hw-ex-2.png")
  )
]
#only(4)[
  #place( center+horizon,dy:-2em,dx:5em,
    rect( ..props,
      [It's upside-down!
      
      #bold[Check] what you upload.]
    )
  )
]

#only("5-6")[
  #place( dy:2em,
    image("img/105-hw-ex-3.png")
  )
]
#only(6)[
  #place( center+horizon,dy:2em,dx:5em,
    rect( ..props,
      [It's been marked, but not corrected.
      
      How are you supposed to know\ what to fix?]
    )
  )
]

= Inequalities 1
#note[Solving Linear Inequalities, Solving Quadratic Inequalities, Using the Discriminant]

== Sets of Numbers
#yellow-book

We need to recognise some specific sets of numbers:
#set text(size:70pt)
#set align(center)
#v(2em)
#grid(columns:range(5).map(_=>1fr),
uncover("1-")[$NN$],
uncover("2-")[$ZZ$],
uncover("3-")[$QQ$],
uncover("4-")[$RR$],
uncover("5-")[$II$],
)
#uncover(5)[
  #place( horizon+right,dx:-1.5em,dy:-0.5em,
    $CC$
  )
]

== Inequalities
#set text(size:25pt)
#set align(left)

Regions on a number line can be represented in the following algebraic ways:

- using #bold[Set Notation]

- using #bold[Interval Notation]

== This shaded region can be described by:
#yellow-book
#only("1-2")[
  #place( dy:4em,
    cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -5, x-max: 5, y-min: -1, y-max: 1,
    axis-style:"school-book", x-tick-step:1, y-tick-step:none,
    size:(3,0.3), grid: "major",
  {
    let (a, b) = ((2,0),(4,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:white,stroke:5pt+red), mark-size:25pt)

    cetz-plot.plot.add((b,b),
      mark:"o",mark-style:(fill:red,stroke:5pt+red), mark-size:25pt)
  })
})
  )
]
#only(2)[
#place( center+bottom,
  text(red,56pt)[$
    {x:x in RR, 2 < x <= 4} \ \
    x in (2,4]
  $]
)
]

#only("3-4")[
  #place( dy:4em,
    cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -5, x-max: 5, y-min: -1, y-max: 1,
    axis-style:"school-book", x-tick-step:1, y-tick-step:none,
    size:(3,0.3), grid: "major",
  {
    let (a, b) = ((3,0),(5,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:white,stroke:5pt+red), mark-size:25pt)

    (a, b) = ((-1,0),(-6,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:red,stroke:5pt+red), mark-size:25pt)

    
  })
})
  )
]
#only(4)[
#place( center+bottom,
  text(red,40pt)[$
    {x:x in RR, x <= -1} union {x: x in RR, x > 3} \ \
    x in (- infinity, -1] union (3, infinity)
  $]
)
]

#MWBQ(
  title:"Write in set notation and in interval notation",
  (cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -5, x-max: 5, y-min: -1, y-max: 1,
    axis-style:"school-book", x-tick-step:1, y-tick-step:none,
    size:(3,0.3), grid: "major",
  {
    let (a, b) = ((2,0),(4,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:white,stroke:5pt+red), mark-size:25pt)

    cetz-plot.plot.add((b,b),
      mark:"o",mark-style:(fill:red,stroke:5pt+red), mark-size:25pt)
  })
}),text(48pt)[$ {x: x in RR, 1<x<5} \ \ x in (1, 5) $]),
(cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: 2, x-max: 11, y-min: -1, y-max: 1,
    axis-style:"school-book", x-tick-step:1, y-tick-step:none,
    size:(3,0.3), grid: "major",
  {
    let (a, b) = ((8,0),(11,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:white,stroke:5pt+red), mark-size:25pt)

  })
}),text(48pt)[$ {x: x in RR, x > 8} \ \ x in (8, infinity) $]),
(cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -5, x-max: 5, y-min: -1, y-max: 1,
    axis-style:"school-book", x-tick-step:1, y-tick-step:none,
    size:(3,0.3), grid: "major",
  {
    let (a, b) = ((3,0),(-3,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:red,stroke:5pt+red), mark-size:25pt)

    cetz-plot.plot.add((b,b),
      mark:"o",mark-style:(fill:red,stroke:5pt+red), mark-size:25pt)
  })
}),text(48pt)[$ {x: x in RR, -3<=x<=3} \ \ x in [-3,3] $]),
(cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -7, x-max: 3, y-min: -1, y-max: 1,
    axis-style:"school-book", x-tick-step:1, y-tick-step:none,
    size:(3,0.3), grid: "major",
  {
    let (a, b) = ((1,0),(3,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:white,stroke:5pt+red), mark-size:25pt)

    (a, b) = ((-5,0),(-7,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:red,stroke:5pt+red), mark-size:25pt)
  })
}),text(40pt)[$ {x: x in RR, x > 1}union {x:x in RR,x<=-5} \ \ x in (-infinity,-5]union (1,infinity) $]),
  (cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -5, x-max: 7, y-min: -1, y-max: 1,
    axis-style:"school-book", x-tick-step:1, y-tick-step:none,
    size:(3,0.3), grid: "major",
  {
    let (a, b) = ((-3,0),(1,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:red,stroke:5pt+red), mark-size:25pt)

    cetz-plot.plot.add((b,b),
      mark:"o",mark-style:(fill:red,stroke:5pt+red), mark-size:25pt)

    let (a, b) = ((5,0),(7,0))
    cetz-plot.plot.add((a,b), style:(stroke:10pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:red,stroke:5pt+red), mark-size:25pt)
  })
}),text(40pt)[$ {x: x in RR, -3<=x<=1}union {x:x in RR,x>=5} \ \ x in [-3,1]union [5,infinity) $]),
)

== Solving a linear inequality
#yellow-book
Solve $ 2 - 3x >= 17 $
Write your answer in interval notation.#pause
#text(red)[
  $
    -3x &>= 15\ \
    x &<= -5\ \ \
    x in& (-infinity,-5]
  $
]

== Beyond Linear Inequalities
When solving inequalities, beyond the linear ones, we will often rely on a graphical method. This means we'll need to *sketch* the graph!#pause

This lets us answer questions such as $f(x) < 0$, which is equivalent to asking "where is $f(x)$ below the $x$-axis?"#pause

Similarly, $f(x) > 0$ is equivalent to asking "where is $f(x)$ above the $x$-axis?"

== Solve the inequality, writing your\ answer in set notation:
#yellow-book
$ (x-5)(x+5) < 0 $
#only(2)[
  #cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -7, x-max: 7, y-min: -30, y-max: 10,
    axis-style:"school-book", x-tick-step:5, y-tick-step:none,
    size:(2,1), grid: "major",
  {
    let (a, b) = ((3,0),(-3,0))
    cetz-plot.plot.add(domain:(-7,7),x=>(x - 5)*(x + 5))

  })
})
]#only("3-")[
  #cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -7, x-max: 7, y-min: -30, y-max: 10,
    axis-style:"school-book", x-tick-step:5, y-tick-step:none,
    size:(2,1), grid: "major",
  {
    let (a, b) = ((3,0),(-3,0))
    cetz-plot.plot.add(domain:(-7,7),x=>(x - 5)*(x + 5))

    let (a, b) = ((-5,0),(5,0))
    cetz-plot.plot.add((a,b), style:(stroke:5pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:white,stroke:3pt+red), mark-size:15pt)

    cetz-plot.plot.add((b,b),
      mark:"o",mark-style:(fill:white,stroke:3pt+red), mark-size:15pt)
  })
})
]
#only(3)[
  $
    {x: x in RR, -5 < x < 5}
  $
]

== Solve the inequality, writing your\ answer in set notation:
#yellow-book
$ x^2 > 9 $
#only(2)[
  $ => x^2 - 9 > 0 => (x - 3)(x + 3) > 0 $
  #cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -5, x-max: 5, y-min: -10, y-max: 10,
    axis-style:"school-book", x-tick-step:3, y-tick-step:none,
    size:(2,1), grid: "major",
  {
    cetz-plot.plot.add(domain:(-7,7),x=>(x - 3)*(x + 3))

  })
})
]#only("3-")[
  #cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -5, x-max: 5, y-min: -10, y-max: 10,
    axis-style:"school-book", x-tick-step:3, y-tick-step:none,
    size:(2,1), grid: "major",
  {
    cetz-plot.plot.add(domain:(-7,7),x=>(x - 3)*(x + 3))

  
    let (a, b) = ((-3,0),(-5,0))
    cetz-plot.plot.add((a,b), style:(stroke:5pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:white,stroke:3pt+red), mark-size:15pt)

    (a, b) = ((3,0),(5,0))
    cetz-plot.plot.add((a,b), style:(stroke:5pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:white,stroke:3pt+red), mark-size:15pt)
  })
})
]
#only(3)[
  $
    {x: x in RR, x < -3}union {x:x in RR, x>3}
  $
]

== Solve the inequality, writing your\ answer in set notation:
#notes
$ (3x+2)(31-5x) >= 0 $
#only(2)[
  #cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -1, x-max: 6.5, y-min: -10, y-max: 10,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
    size:(1,1), 
  {
    cetz-plot.plot.add(domain:(-2,7),x=>(3*x + 2)*(31 - 5 * x))

  })
})
]#only("3-")[
  #cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -1, x-max: 6.5, y-min: -50, y-max: 200,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
    size:(1,1), 
  {
    cetz-plot.plot.add(domain:(-2,7),x=>(3*x + 2)*(31 - 5 * x))

  
    let (a, b) = ((-2/3,0),(31/5,0))
    cetz-plot.plot.add((a,b), style:(stroke:5pt+red))

    cetz-plot.plot.add((a,a),
      mark:"o",mark-style:(fill:red,stroke:3pt+red), mark-size:15pt)

    cetz-plot.plot.add((b,b),
      mark:"o",mark-style:(fill:red,stroke:3pt+red), mark-size:15pt)
  })
})
]
#only(3)[
  $
    {x: x in RR, -2/3 <= x <= 31/5}
  $
]

== What can your calculator tell you?
Both the Numworks and Classwiz can solve quadratic, cubic and quartic inequalities.#pause

For the numworks, use the Grapher, and type in the inequality directly.

For the classwiz, use the "$x y> 0$ Inequality" mode. You will need to have expanded brackets.#pause

Eeryone, try $x^2 > 9$ from before.

== Using the Discriminant
#yellow-book
$
  y = x^2 + k x + 5
$
For what values of $k$ does this curve have no real roots?\ Write your answer in set notation.#pause

No real roots $=> b^2 - 4 a c < 0$
$
  x^2 - 4 times 1 times 5 < 0\
  => k^2 -20 < 0\
  => (k - sqrt(20))(k+sqrt(20)) < 0\ \
  => {k:k in RR, -2sqrt(5) < k < 2 sqrt(5)}
$

== Using the Discriminant
#yellow-book
$
  (k-1)x^2 + 4x + (k+2) = 0
$

For which values of $k$ does the equation have two distinct real roots?\
Write your answer in interval notation.
$
  a = (k-1), b = 4, c = k + 2\
  "Distinct real roots" => b^2 - 4 a c > 0\
  therefore 4^2-4(k-1)(k+2) > 0\
  16 - 4(k^2 + k - 2) > 0\
  -4k^2  - 4k + 24 > 0\
  k^2 + k - 6 < 0\
  (k+3)(k-2) < 0\
  -3 < k < 2\
  "as "k!= 1"," k in (-3,1)union (1,2)
$

== You Try
#notes
Work out the values of $k$ for each of these equations, such that they all have no real roots. Write your answers in set notation.
#text(32pt)[+ $x^2 + 2k x + 3 = 0$ \ #uncover(2)[#text(red)[${k:k in RR, -sqrt(3)<k<sqrt(3)}$]]

+ $x^2 - k x + 3 -k= 0$ \ #uncover(2)[#text(red)[${k:k in RR, -6<k<2}$]]

+ $(2k-1)x^2 + (k+1) x + k = 0$ \ #uncover(2)[#text(red)[${k:k in RR, k<=1/7}union{k:k in RR,k > 1}$]]
]

== Practice!
#notes
*Key Questions:*\
Page 41: Q6
#place( dy:1em,
rect( inset:10pt,stroke:2pt+fadedBlue,fill:fadedBlue.lighten(70%),
  [Then move to:\ 
  #align(center)[
    #text(green)[#bold[Inequalities]]\
    Page 41: Q1-3\
    #text(orange)[#bold[Inequalities]]\
    Page 41: Q5,7\
    #text(red)[#bold[Inequalities]]\
    Page 42: Q16-21\
  ]
  ])
)
#place( dy:-3em,dx:16em,
  TLMaths
)
#place( dx:10em,
  rect( fill:orange.lighten(60%),stroke:orange+1pt, inset:10pt,radius:15pt,
    [Remember:\
    - Do the Key Question
    - Start on the orange questions
    - Go up or down if you need]
  )
)