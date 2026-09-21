#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet:(
    (text(22pt)[Write down the Cosine Rule],[$a^2 = b^2 + c^2 - 2 b c cos A$\ or\ $cos A = (b^2 + c^2 - a^2)/(2 b c)$]),
    (text(22pt)[State the gradient of the line passing through $(x_1,y_1)$ and $(x_2,y_2)$],[$m = (y_2 - y_1)/(x_2 - x_1)$]),
    (text(22pt)[State the line of symmetry of $y = (x-3)^2 + 4$],[$x = 3$]),
    (text(22pt)[State the line of symmetry of $y = -2(x-3)^2 + 4$],[$x = 3$]),
    (text(22pt)[The gradient of a line is $1/m$\ State the gradient of the line perpendicular to it.],[$-m$]),
  ),
  secondSet:(
    (text(22pt)[State the coordinates of a vertex of the parabola with equation $ y = (x-5)^2 - 7 $],[$(5, -7)$]),
    (text(22pt)[Sketch the graph of $ y = 25 - x^2 $],[
      #cetz.canvas(length: 5cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -6, x-max: 6, y-min: -10, y-max: 28,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-8,8),x=>25 - x*x,style:(stroke:red+3pt)
    )
    cetz-plot.plot.annotate({
      content((-4,-4),[$-5$])
      content((6,4),[$5$])
      content((1.5,28),[$25$])
      }
    )
  }
  )
})
    ]),
    (text(22pt)[Complete the square for $ 2x^2 - 20p x + 3 $],[
      $
        & 2x^2 - 20 p x + 3\
        equiv& 2(x^2 - 10p x) + 3\
        equiv& 2((x-5p)^2 - 25p^2)+3\
        equiv& 2(x - 5p)^2 - 50p^2 + 3
      $]),
  )
)
== Local Universities Showcase:\ Mathematics at Portsmouth
#place(top+right, dx:1.5em,dy:-1.5em,
  image("../../../Templates/maths-explor-uni.png", height:30%)
)
#only(1)[#text(22pt)[- The University of Portsmouth offers a highly ranked, career-focused approach to studying mathematics, combining world-class academic research with an exceptionally supportive student environment.

- Students have access to a unique, daily drop-in initiative called the _Maths Café_, which provides informal, friendly, one-on-one help with mathematical methods, coursework, and problem-solving.
- The department explicitly shapes its curriculum around contemporary tech trends, offering specialized routes like the BSc (Hons) Mathematics with Machine Learning.
- The University of Portsmouth holds a prestigious gold rating in the UK Teaching Excellence Framework (TEF).
]]
#only(2)[#text(22pt)[
  #bold[Examples of Courses on Offer]\
  - Mathematics for Finance and Management BSc (Hons)
  - Mathematics with Machine Learning BSc (Hons)
  - Mathematics with Statistics BSc (Hons)
  #v(2em)
  The standard entry requirements across all three of these mathematics courses are identical. You are fundamentally required to have 112-120 UCAS tariff points, #bold[which must include at least 40 points explicitly from A level mathematics] (equivalent to a grade C).
#v(2em)
  Typical A level offer: BBB - BBC
]]
#only(3)[
  #bold[Advantages of Being a Student at the\ University of Portsmouth]\

  -  The Portsmouth Students' Union manages over 140 clubs, societies, and volunteering networks alongside an active international community encompassing 150 countries.
  - As a flat, highly connected coastal city, you can easily walk or cycle between halls of residence, lecture theatres and the beach.
  
  - Portsmouth is routinely recognized as one of the most affordable student cities in the UK for living costs and rent.
  
]

= The Discriminant and Quadratic Modelling
== The Quadratic Formula
#yellow-book#pause
#text(40pt)[$
  x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2a)
$]#pause

The most important part of this formula is the $b^2 - 4a c$

This is called the #bold[Discriminant]

== The Discriminant
#text(40pt)[$ b^2 - 4a c $]
The Discriminant identifies how our two roots appear.

If $b^2 - 4 a c > 0$, then we will have two roots.
#only(1)[
  #grid(columns:(1fr,1fr),cetz.canvas(length: 5cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -6, x-max: 6, y-min: -10, y-max: 28,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-8,8),x=>25 - x*x,style:(stroke:red+3pt)
    )
  }
  )
}),
cetz.canvas(length: 5cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -6, x-max: 6, y-min: -10, y-max: 28,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-8,8),x=>x*x - 4 * x - 4,style:(stroke:red+3pt)
    )
  }
  )
})
  )
]
#only("2-")[
  
  
  If $b^2-  4 a c = 0$, then we will have *repeated* roots.
]
#only(2)[
  #grid(columns:(1fr,1fr),cetz.canvas(length: 5cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -6, x-max: 6, y-min: -10, y-max: 2,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-8,8),x=>-.2 * x*x,style:(stroke:red+3pt)
    )
  }
  )
}),
cetz.canvas(length: 5cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -6, x-max: 6, y-min: -10, y-max: 28,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-8,8),x=>x*x - 4 * x+4,style:(stroke:red+3pt)
    )
  }
  )
})
  )
]
#only("3-")[
  If $b^2 - 4 a c < 0$, then we will have *complex* roots, which don't appear on this graph...
  #v(-2em)
  #grid(columns:(1fr,1fr),cetz.canvas(length: 5cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -6, x-max: 6, y-min: -45, y-max: 1,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-8,8),x=>-15 - x*x,style:(stroke:red+3pt)
    )
  }
  )
}),
cetz.canvas(length: 5cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -6, x-max: 6, y-min: -2, y-max: 48,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-8,8),x=>x*x - 4 * x+ 18,style:(stroke:red+3pt)
    )
  }
  )
})
  )
  #yellow-book
]

== You Try:
#notes
Calculate the Discriminant for the following quadratics and explain what it shows:
+ $y = 2x^2 + 3x + 2$ #only(2)[#text(red)[$quad b^2 - 4 a c = -7 < 0 => $ no real roots]]
+ $y = 2x^2 + 4sqrt(2)x + 4$ #only(2)[#text(red)[$quad b^2 - 4 a c = 0 => $ one repeated roots]]

+ $y = 10x - 2 - 3 x ^2$ #only(2)[#text(red)[$quad b^2 - 4 a c = 76 > 0 => $ two distinct real roots]]

== Find a simplified expression for the\ discriminant of
#yellow-book
#text(36pt)[$
  y = (k - 3) x^2 + 2k x + 4k
$]#pause
#text(red)[
  $
    b^2 - 4 a c &= (2k)^2 - 4(k-3)(4k)\
    &= 4k^2 - 4(4k^2- 12k)\
    &= 4k^2 - 16k^2 + 48k\
    &= 48k - 12k^2
  $
]

== You Try:
#notes
Find a simplified expression for the discriminant of each of these:

+ $y = 2 p x^2 + 4 p x - 13$ #only(2)[#text(red)[$quad b^2 - 4 a c = 16p^2 + 104p$]]

+ $y = (q+1)x^2 + (4q - 3)x + 2q$ #only(2)[#text(red)[$quad b^2 - 4 a c = 8q^2 - 32q + 9$]]

== Find the value(s) of $k$ such that\ $x^2 + 2k x + 16 = 0 $\ has one repeated real root.
#yellow-book
#pause
#text(red)[
  One repeated real root $=> b^2 - 4 a c = 0$

  $
    (2k)^2 - 4 times 1 times 16 &= 0\ \
    => 4x^2 - 64 &= 0\ \ 
    => k^2 - 16 &= 0\ \
    => k = plus.minus 4
    
  $
]

== Find the vertex of each of the following:
#notes
+ $(x-3)^2 + 7$ #only(2)[#text(red)[$quad (3 ,7 )$]]
+ $(x+2)^2 + 5$ #only(2)[#text(red)[$quad (-2 ,5 )$]]
+ $2(x-1)^2 -9$ #only(2)[#text(red)[$quad (1 ,-9 )$]]
+ $-(x+5)^2 + 1$ #only(2)[#text(red)[$quad (-5 ,1 )$]]
+ $1/3 (x+1/7)^2 + 1/9$ #only(2)[#text(red)[$quad ( -1/7, 1/9)$]]
+ $x^2 -4x$ #only(2)[#text(red)[$quad (2 , -4)$]]
+ $x^2 + 16x + 54$ #only(2)[#text(red)[$quad ( -8, -10)$]]

+ $2x^2 - 12x - 3$ #only(2)[#text(red)[$quad ( 3, -21)$]]

== Sketch the graph of $ y=29.4x - 4.9x^2 $
#pause
#cetz.canvas(length: 10em, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -1, x-max: 7, y-min: -10, y-max: 45,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-1,8),x=>29.4 * x - 4.9 * x * x,style:(stroke:3pt)
    )
    cetz-plot.plot.annotate({
      content((6.5,3),[$6$])
    })
  }
  )
})#pause
#place( center+horizon,dx:6.5em,
  rect( inset:15pt,radius:20pt,fill:fadedBlue.lighten(40%),stroke:fadedBlue+2pt,
    text(30pt)[What are the coordinates\ of the turning point of the graph?]
  )
)

==
A ball is thrown vertically upwards with a speed of $29.4"ms"^(-1)$.\
The height of the ball, $h$ metres may be modelled by the equation
$
h=29.4t - 4.9t^2
$
where $t$ is the time given in seconds.
#set enum(numbering:"a)")
+ Find the height of the ball after $1.5$ seconds.
+ Find the time it takes for the ball to reach a height of $24.5$ metres.
+ Explain what your two solutions in part b) represent.

== Find an equation of the quadratic curve, given:
#discuss
It crosses the $x$-axis at $x = 0$ and $x = 120$.

The curve has a maximum of $y = 72$

== An archhas a span of $20$m and a maximum height of $30m$.\ Find a quadratic equation to model the arch.
#cetz.canvas(length: 10em, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -1, x-max: 7, y-min: -10, y-max: 45,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-1,8),x=>29.4 * x - 4.9 * x * x,style:(stroke:3pt)
    )
    cetz-plot.plot.add(
      ((3, 44.1),(3, 44.1)),mark:"|",mark-size:20pt,mark-style:(stroke:2pt+black)
    )
    
    cetz-plot.plot.annotate({
      content((6.5,3),[$20$])
      content((4.5,47),[$(10,30)$])
    })
  }
  )
})

== Practice!
#notes
*Key Questions:*\
Page 21: Q4 (b)&(d)\
Page 22: Q1
#place( dy:1em,
rect( inset:10pt,stroke:2pt+fadedBlue,fill:fadedBlue.lighten(70%),
  [Then move to:\ 
  #align(center)[
    #text(orange)[#bold[Using the Discriminant]]\
    Page 21: Q5 - Q8\
    #text(red)[#bold[Using the Discriminant]]\
    Page 21: Q9 - Q15\
    #text(orange)[#bold[Quadratic Modelling]]\
    Page 22: Q2 - Q4\
    #text(red)[#bold[Quadratic Modelling]]\
    Page 23: Q5 - Q10
  ]
  ])
)
#place( dy:-3em,dx:16em,
  TLMaths
)