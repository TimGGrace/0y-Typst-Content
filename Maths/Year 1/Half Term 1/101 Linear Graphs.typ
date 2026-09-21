#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet:(
    ([State the formula for the area of a trapezium.],[$A = 1/2(a + b)h$]),
    ([State the cosine rule.],[$a^2 = b^2 + c^2 - 2b c cos A$]),
    ([State the quadratic formula.],[$x = frac(-b plus.minus sqrt(b^2 - 4a c),2a)$]),
    ([Factorise $x^2 + 4x + 3$],[$(x + 1)(x + 3)$]),
    ([Complete the square for\ $x^2 + 4x + 3$],[$(x + 2)^2 - 1$]),
  ),
  secondSet:(
    ([Simplify\ $5a^2 b^3 c^5 times 3a b^(-2) c^3$],[$15a^3 b c^8$]),
    ([Find the exact area #bold[and] perimeter of a sector with a radius of $5$ cm and angle $60^o$],[Area:\ $frac(60,360) times pi times 5^2 = frac(25,6) pi "cm"^2$\ Perimeter:\ $frac(60,360) times pi times 10 + 10$\ $quad = (5/3 pi + 10) "cm"$]),
    ([Town B is North East of Town A. State the bearing of Town A from Town B.],[$225^o$]),
  )
)

= Linear Graphs
#note[Given two points: distance between them, the midpoint, the gradient of the line joining them, the gradient of a perpendicular line, the equation of the line through them, sketching a line.
]

== $A$ and $B$ have coordinates $(0,4)$\ and $(6,7)$ respectively.
#yellow-book
#set enum(numbering:"a.")
+ Find the midpoint of $A$ and $B$ #only(2)[#text(red)[$(3, 11/2)$]]
+ Find the distance from $A$ to $B$ #only(2)[#text(red)[$3 sqrt(5)$]]
+ Find the gradient of the chord joining $A$ and $B$ #only(2)[#text(red)[$m = 1/2$]]
+ Find the equation of the line through $A$ and $B$ in the following forms:
    #enum(numbering:("i."))[$y-y_1 = m(x-x_1)$][$y=m x+c$][$p x + q y = r "where" p, q, r in ZZ$]
#only(2)[
  #place(dy:-2.5em,dx:18em,)[
    #text(red)[$y-4=1/2 (x-0)\ y = 1/2 x + 4\ -x + 2y = 8$]   
  ]
]
#place(dy:5em,dx:-1em,)[
#note[$in$ means 'belongs to' and $ZZ$ represents the set of all integers.]]

== Coordinate Geometry with\ $(x_1,y_1)$ and $(x_2,y_2)$
#yellow-book
#only(1)[Can you state the formulae to find the following:
1. The distance from $(x_1,y_1)$ to $(x_2,y_2)$

2. The midpoint of $(x_1,y_1)$ and $(x_2,y_2)$

3. The gradient of the line joining $(x_1,y_1)$ and $(x_2,y_2)$

4. The equation of the line passing through $(x_1,y_1)$ and $(x_2,y_2)$]

#only(2)[
  #place( dy:1em,dx:-1em,
    rect( inset:15pt,radius:20pt,stroke:2pt+orange,fill:orange.lighten(70%),
      align(center)[Distance:\ $ sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $]
    )
  )

  #place( dy:1em,dx:15em,
    rect( inset:15pt,radius:20pt,stroke:2pt+orange,fill:orange.lighten(70%),
      align(center)[Gradient:\ $ frac(y_2 - y_1,x_2 - x_1) $]
    )
  )

  #place( dy:8em,dx:2em,
    rect( inset:15pt,radius:20pt,stroke:2pt+orange,fill:orange.lighten(70%),
      align(center)[Midpoint:\ $ frac(x_1 + x_2,2) , frac(y_1 + y_2,2) $]
    )
  )

  #place( dy:8em,dx:15em,
    rect( inset:15pt,radius:20pt,stroke:2pt+orange,fill:orange.lighten(70%),
      align(center)[Equation:\ $ y-y_1 = m(x-x_1)$]
    )
  )
]

== Here are the equations of six lines.\ Are any of them parallel or\ perpendicular to each other?
#notes
#set enum(numbering:"A")
+ $y = -3x + 8$

+ $3x+y=-5$

+ $x+3y=10$

+ $x-3y=7$

+ $3x-y=12$

+ $x=-3y+2$
#only(1)[
  #place(dy:-8em,dx:10em,
  rect(inset:15pt,radius:20pt,stroke:2pt+orange,fill:orange.lighten(70%),
    [HINT: You might want to rearrange\ them first!]
  ))
]
#only(2)[
  #place(dy:-10em,dx:15em,
  text(red)[
    #bold[Parallel:]\
    A&B are parallel\
    C&F are parallel

    #bold[Perpendicular Pairs:]\
    A&D\
    B&D\
    C&E\
    E&F
    ]
  )
]

== How can we tell if two lines are parallel\ or perpendicular?
#yellow-book
$
  y = m_1 x + c_1 "and" y=m_2 x + c_2
$

== Example
#yellow-book
#only(1)[Determine whether the lines $4x-y=2$ and $x+4y=3$\ are perpendicular.
]

#text(purple)[
  First, we re-write both equations into the form $y = m x + c$
]

#MWBQ(
  title:"Coordinate Geometry",
  (text(34pt)[Write down the midpoint of $(3,2)$ and $(5,8)$],text(34pt)[$ (4,5) $]),
  (text(34pt)[Write down the length of the line joining $(-2,1)$ and $(1,5)$],text(34pt)[$ 5 $]),
  (text(34pt)[Write down the gradient of the line joining $(-4,5)$ and $(2,7)$],text(34pt)[$ 2/6 = 1/3 $]),
  (text(34pt)[Write down the length of the line joining $(4,7)$ and $(-1,3)$],text(34pt)[$ sqrt(41)$]),
  (text(34pt)[Write down the midpoint of $(8,-1)$ and $(2,6)$],text(34pt)[$ (5, 5/2 ) $]),
  (text(34pt)[Write down the gradient of the line joining $(-8,3)$ and $(-5,18)$],text(34pt)[$ 15/3 = 5 $]),
  (text(34pt)[Write down the reciprocal of $2/3$],text(34pt)[$ 3/2 $]),
  (text(34pt)[Line A has a gradient of $-4$.\ Line B is parallel to Line A.\ Write down the gradient of Line B.],text(34pt)[$ -4 $]),
  (text(34pt)[Line C has a gradient of $4/3$.\ Line D is perpendicular to Line C.\ Write down the gradient of Line D.],text(34pt)[$ -3/4 $]),
  (text(34pt)[The midpoint of the line between A and B is $(7, 1)$.\ A has the coordinates $(4, 2)$.\ What are the coordinates of B?],text(34pt)[$ (10, 0) $]),
)

== Sketching vs Plotting
- A sketch is a free-hand 'idea' of what the graph looks like, identifying important points.
- It does not need to be to scale, but should still be fairly sensible.
- A plot is a graph drawn on square paper to scale.
- The most likely situation where you will be asked to plot points accurately is during a Reduction to Linear Form problem (a topic we will meet later in the course).

== Example
#yellow-book
Sketch $y = 2x + 3$#pause
#place(dy:1em,dx:8em,
cetz.canvas(length: 12cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -2, x-max: 2, y-min: -1, y-max: 4,
    axis-style:"school-book",
    x-tick-step:1,y-tick-step:1,grid:"major",
  {
    cetz-plot.plot.add(
      domain:(-2,1),x=>2*x+3,style:(stroke:fadedBlue+3pt)
    )

  }
  )
})
)

== Example 2
#yellow-book
Sketch $2x + 3y = 12$#pause
#place(dy:1em,dx:8em,
cetz.canvas(length: 12cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -1, x-max: 7, y-min: -1, y-max: 5,
    axis-style:"school-book",
    x-tick-step:2,y-tick-step:2,x-grid:"minor",y-grid:"minor",
  {
    cetz-plot.plot.add(
      domain:(-1,7),x=>4 - (2/3) * x,style:(stroke:fadedBlue+3pt)
    )
  }
  )
})
)

== You Try:
#notes
Sketch the following lines, identifying clearly where they intersect\ the coordinate axes:
#set enum(numbering:"a.")
#grid(columns:2, column-gutter:20pt,
[+ $y = 2x - 3$
+ $y = 1/2 x + 5$
+ $x + y =10$
+ $3x +4y = 24$
+ $2x - y = 4$

+ $5x+2y=-3$],
uncover(2)[
  #grid(columns:(1fr,1fr,1fr),align:center,row-gutter:10pt,
  cetz.canvas(length: 3cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -1, x-max: 2, y-min: -4, y-max: 1,
    axis-style:"school-book",
    grid:false, x-tick-step:none,y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-1,2),x=>2*x - 3,style:(stroke:fadedBlue+3pt)
    )
    cetz-plot.plot.annotate({
      content((-0.6,-3),[$-3$])
      content((1.6,-1.3),[$3/2$])
      content((2,-3),text(red)[a.])
    })
  }
  )
}),
cetz.canvas(length: 3cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -11, x-max: 2, y-min: -2, y-max: 6,
    axis-style:"school-book",
    grid:false, x-tick-step:none,y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-11,2),x=>0.5*x +5,style:(stroke:fadedBlue+3pt)
    )
    cetz-plot.plot.annotate({
      content((-10,2),[$-10$])
      content((1,4),[$5$])
      content((-8,5),text(red)[b.])
    })
  }
  )
}),
cetz.canvas(length: 3cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -1, x-max: 4, y-min: -1, y-max: 4,
    axis-style:"school-book",
    grid:false, x-tick-step:none,y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-2,5),x=>4-x,style:(stroke:fadedBlue+3pt)
    )
    cetz-plot.plot.annotate({
      content((-1,4),[$10$])
      content((4,1),[$10$])
      content((3,3),text(red)[c.])
    })
  }
  )
}),
cetz.canvas(length: 2.8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -1, x-max: 10, y-min: -1, y-max: 6,
    axis-style:"school-book",
    grid:false, x-tick-step:none,y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-1,10),x=>0.25*(24 - 3*x),style:(stroke:fadedBlue+3pt)
    )
    cetz-plot.plot.annotate({
      content((-1,5),[$6$])
      content((8.5,1),[$8$])
      content((8,5),text(red)[d.])
    })
  }
  )
}),
cetz.canvas(length: 3cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -1, x-max: 4, y-min: -5, y-max: 1,
    axis-style:"school-book",
    grid:false, x-tick-step:none,y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-1,4),x=>2*x - 4,style:(stroke:fadedBlue+3pt)
    )
    cetz-plot.plot.annotate({
      content((1,-4),[$-4$])
      content((2.5,-1),[$2$])
      content((4,-3),text(red)[e.])
    })
  }
  )
}),
cetz.canvas(length: 3cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -1, x-max: 1, y-min: -2, y-max: 0.5,
    axis-style:"school-book",
    grid:false, x-tick-step:none,y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-2,1),x=>(-3 - 5*x) / 2,style:(stroke:fadedBlue+3pt)
    )
    cetz-plot.plot.annotate({
      content((-1,-0.6),[$-3/5$])
      content((0.5,-1.3),[$-3/2$])
      content((1,0.5),text(red)[f.])
    })
  }
  )
})

  )
]
)

== Perpendicular Bisectors
#yellow-book
The *Perpendicular Bisector* of A and B is the line that\ passes through the midpoint of A and B, and is at\ right angles to the line through A and B.

#place(center,dy:1em,)[#cetz.canvas(length: 8cm,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -3, x-max: 3, y-min: -3, y-max: 3,
    axis-style:none,
    grid:false, x-tick-step:none,y-tick-step:none,
  {
    cetz-plot.plot.add(((-2,1),(0,0),(2,-1)),mark:"o",mark-size:10pt)
    cetz-plot.plot.add(x=>2*x,domain:(-3,3))

    cetz-plot.plot.annotate({
      content((-2.5,1.5),[A])
      content((2.5,-1.5),[B])
      content((3,0),[Midpoint of A and B])
    })
  }
  )
})]

== Example
#yellow-book
Find the perpendicular bisector of $A(2,9)$ and $B(6,11)$.\ Write your answer in the form $y=a x+b$,\ where $a$ and $b$ are integers.#pause
#text(red)[
  $
    m_(A B) = frac(9-11,2-6) = frac(-2,-4) &= 1/2\ 
    "midpoint"=(frac(2+6,2),frac(9+11,2)) &= (4,10)\ \
    therefore y - 10 = -2(x - 4) & \
    => y = -2 x + 18 &
  $
]

== Practice!
#notes
*Key Questions:*
Page 5, Q8, 9

#rect( inset:10pt,stroke:2pt+fadedBlue,fill:fadedBlue.lighten(70%),
  [Then move to:\ 
  #align(center)[
    #text(green)[#bold[Basics]]\
    Page 5: Q1-Q5

    #text(orange)[#bold[Perpendicular Bisectors]]\
    Page 5: Q7

    #text(red)[#bold[Harder Problems]]\
    Page 6: Q14 - Q24
  ]
  ])
#place( dy:-15em,dx:15em,
  TLMaths
)