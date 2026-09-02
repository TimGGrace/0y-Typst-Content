#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet: (
    (text(20pt)[State the coordinates of the midpoint of $(x_1,y_1)$ and $(x_2,y_2)$#v(-1em)],[$(frac(x_1+x_2,2),frac(y_1+y_2,2))$]),
    (text(20pt)[The gradient of a line is $9/13$\ State the gradient of the line perpendicular to it.#v(-1em)],[$-13/9$]),
    (text(20pt)[State the gradient of the line passing through $(x_1,y_1)$ and $(x_2,y_2)$#v(-1em)],[$frac(y_2-y_1,x_2-x_1)$]),
    (text(20pt)[Is $x=3$ a vertical or horizontal line?#v(-1em)],[Vertical.]),
    (text(20pt)[The gradient of a line is $m$, state the gradient of the line perpendicular to it.#v(-1em)],[$-1/m$]),
  ),
  secondSet: (
    (text(20pt)[What is the gradient of\ the line segment joining the coordinates $(-1,2)$ and $(3,11)$?],[$9/4$]),
    (text(20pt)[Sketch the line $3x+y=6$],place(dx:3em,dy:-2.5em,)[
      #cetz.canvas(length: 5cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *
  set-style(fill:white)

  cetz-plot.plot.plot(
    x-min: -1, x-max: 7, y-min: -1, y-max: 7,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-1,2.5),x=>6 - 3*x,style:(stroke:fadedBlue+3pt)
    )
    cetz-plot.plot.annotate({
      content((.6,6),[$6$])
      content((2.4,0.6),[$2$])}
    )
  }
  )
})
    ]),
    (text(20pt)[By considering the distance between the coordinates, show that $A(1,0)$,$B(4,4)$ and $C(-1,4)$ form an isosceles triangle.],[#v(3em)$ d_(A B)=sqrt(3^2 + 4^2)&=5\
    d_(A C)=sqrt((-2)^2+4^2) &= sqrt(20)\ &= 2 sqrt(5)\
    d_(B C)=sqrt((-5)^2 + 0^2) &= 5 $]),
  )
)

== Let's talk about Homework
- We call these Key Assignments

- Homework is due and set at the same time every week to make it easier for you to organise your time.
  - #highlight(fill:yellow)[#bold[Due every Wednesday at 8pm]]
  - Set every Thursday at 8am

- Let's remind ourselves where to find the homeworks on #text(fadedBlue)[#underline[bpmaths.com]]

== Homework: #text(green.darken(30%))[Dos] and #text(red)[Don'ts]
#place(dy:0.5em,
  grid(columns:(1fr,1fr),column-gutter: 20pt,
box[
  #text(green.darken(30%))[#underline[DO:]]
  #list(marker:emoji.checkmark)[
    Attempt Q1 to Q20 inclusive.
  ][
    Try the "Weekend" extension questions.
  ][
    Clearly write your name and the KA number at the top of the first page.
  ][
    Answer longer questions with full, hand-writen working.
  ][
    Make sure your work is fully legible.
  ][
    Make sure your upload is clear.
  ]
], only(2)[#box[
  #text(red)[#underline[DO NOT:]]
  #list(marker:emoji.crossmark)[
    Copy someone else's work.
  ][
    Hand in half completed work.
  ][
    Simply write down the answers.
  ][
    Have your work look scruffy, fait or be lacking in *mathematical rigour*.
  ]
]]
))

= Quadratic Graphs
#note[
  Factorising, Completing the Square, Solving Quadratics, Sketching Quadratics
]

#KeyPerson(
  image-path:"../Maths/Year 1/Half Term 1/img/A_Nemeth.png",
  link-path:"https://en.wikipedia.org/wiki/Abraham_Nemeth",
  title:"Abraham Nemeth",
  content:text(20pt)[
    After studying psychology, Nemeth went on to study maths and physics. Though he was discouraged from pursuing maths he decided to do a PhD in maths and found there was a need for a braille code that could communicate maths more effectively. He went on to develop the Nemeth Braille Code for Mathematics and Science Notation which is still widely used today. Since he needed help reading maths textbooks, he developed a way for dictating his maths work which made this much more accessible.
  ])

== Quadratic Graphs are called Parabolas
#yellow-book
#grid(columns:(1fr,1fr), align:center,
[
  $ y=x^2+... $
  #cetz.canvas(length: 9cm, {
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -3, x-max: 3, y-min: -1, y-max: 7,
    axis-style:none, x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-5,5),x=>x*x,style:(stroke:fadedBlue+6pt)
    )
  }
  )
})
],
[
  $ y=-x^2+... $
  #cetz.canvas(length: 9cm, {
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -3, x-max: 3, y-min: -7, y-max: 1,
    axis-style:none, x-tick-step:none, y-tick-step:none,
  {
    cetz-plot.plot.add(
      domain:(-5,5),x=>-x*x,style:(stroke:fadedBlue+6pt)
    )
  }
  )
})
])
What features do both of these curves have?

#only("2-")[
  #place( dy:-9em,
    rect( inset:15pt,radius:20pt,stroke:orange+2pt,fill:orange.lighten(70%),
      [They both have a vertical line of symmetry]
    )
  )
]
#only("3-")[
  #place( dy:-6em, dx:5em,
    rect( inset:15pt,radius:20pt,stroke:orange+2pt,fill:orange.lighten(70%),
      [They both have one vertex / turning point / stationary point]
    )
  )
]

== Factorise
$ x^2 + 2x - 3 $#pause
#text(red)[$ =(x+3)(x-1) $]
What does this tell us about the curve $y=x^2 +2x - 3$?#pause
#yellow-book

Factorising tells us where the curve crosses the $x$-axis:
$ "at" -3 "and" +1 $

== Complete the square for
$ x^2 + 2x - 3 $#pause
#text(red)[$ =(x + 1)^2 - 4 $]
What does this tell us about the curve $y=x^2 +2x - 3$?#pause
#yellow-book

Completing the square tells us the coordinates of the vertex:
$ "at" (-1, -4) $

== Example: Sketch the Curve
#yellow-book
$ y = x^2 + 2x - 3 $#pause

Completed Square form: $y = (x+1)^2 - 4$\
Factorised form: $y=(x+3)(x-1)$#pause

So we need:
- $x$-intercepts: $-3, 1$
- $y$-intercept: $-3$
- Vertex: $(-1,-4)$#pause

#place(dy:-8em,dx:15em,
  cetz.canvas(length: 9cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -5, x-max: 2, y-min: -5, y-max: 3,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,

  {
    cetz-plot.plot.add(
      domain:(-5,2),x=>x*x + 2*x - 3,style:(stroke:fadedBlue+2.5pt)
    )
    cetz-plot.plot.add(
      ((-1,-4),(-1,-4)),mark:"x",mark-size:20pt,mark-style:(stroke:2pt+red)
    )

    cetz-plot.plot.add(
      ((-3,0),(-3,0)),mark:"|",mark-size:20pt,mark-style:(stroke:2pt+black)
    )
    cetz-plot.plot.add(
      ((1,0),(1,0)),mark:"|",mark-size:20pt,mark-style:(stroke:2pt+black)
    )
    cetz-plot.plot.add(
      ((0,-3),(0,-3)),mark:"-",mark-size:20pt,mark-style:(stroke:2pt+black)
    )

    cetz-plot.plot.annotate({
      content((-2.5,.6),[$-3$])
      content((1.2,-.8),[$1$])
      content((-1,-4.7),[$(-1,-4)$])
      content((.6,-3),[$-3$])
    })
  }
  )
}))

== You Try:\ Sketch the curves:
#notes
#set enum(numbering:"a.")
+ $y=x^2 - 2x - 8$

+ $y=x^2 - 8x - 5$

+ $y = x^2 + 2x + 7$

== $y=x^2 - 2x - 8$
#place(center+horizon,
  cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -3, x-max: 5, y-min: -10, y-max: 5,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
    size:(2,1),
  {
    cetz-plot.plot.add(
      domain:(-5,5),x=>x*x - 2*x -8 ,style:(stroke:fadedBlue+2.5pt)
    )
    cetz-plot.plot.add(
      ((1,-9),(1,-9)),mark:"x",mark-size:20pt,mark-style:(stroke:2pt+red)
    )

    
    cetz-plot.plot.add(
      ((0,-8),(0,-8)),mark:"-",mark-size:20pt,mark-style:(stroke:2pt+black)
    )
    cetz-plot.plot.add(
      ((-2,0),(-2,0)),mark:"|",mark-size:20pt,mark-style:(stroke:2pt+black)
    )
    cetz-plot.plot.add(
      ((4,0),(4,0)),mark:"|",mark-size:20pt,mark-style:(stroke:2pt+black)
    )

    cetz-plot.plot.annotate({
      content((1,-11),[$(1,-9)$])
      content((-.5,-8.7),[$-8$])
      content((4.2,-2),[$4$])
      content((-2.2,-2),[$-2$])
    })
  }
  )
}))

== $y=x^2 - 8x - 5$
#place(center+horizon,
  cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -2, x-max: 10, y-min: -25, y-max: 10,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
    size:(3,1),
  {
    cetz-plot.plot.add(
      domain:(-10,10),x=>x*x - 8*x -5 ,style:(stroke:fadedBlue+2.5pt)
    )
    cetz-plot.plot.add(
      ((4,-21),(4,-21)),mark:"x",mark-size:20pt,mark-style:(stroke:2pt+red)
    )

    
    cetz-plot.plot.add(
      ((0,-5),(0,-5)),mark:"-",mark-size:20pt,mark-style:(stroke:2pt+black)
    )
    cetz-plot.plot.add(
      ((4-calc.sqrt(21),0),(4-calc.sqrt(21),0)),mark:"|",mark-size:20pt,mark-style:(stroke:2pt+black)
    )
    cetz-plot.plot.add(
      ((4+calc.sqrt(21),0),(4+calc.sqrt(21),0)),mark:"|",mark-size:20pt,mark-style:(stroke:2pt+black)
    )

    cetz-plot.plot.annotate({
      content((5.1,-24),[$(4,-21)$])
      content((-.3,-8),[$-5$])
      content((4.5+calc.sqrt(21),-4),[$4+sqrt(21)$])
      content((-1.5,-4),[$4-sqrt(21)$])
    })
  }
  )
}))

== $y = x^2 + 2x + 7$
#place(center+horizon,
  cetz.canvas(length: 9cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -3, x-max: 1, y-min: 0, y-max: 8,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
    size:(3,1),
  {
    cetz-plot.plot.add(
      domain:(-5,2),x=>x*x + 2*x +7 ,style:(stroke:fadedBlue+2.5pt)
    )
    cetz-plot.plot.add(
      ((-1,6),(-1,6)),mark:"x",mark-size:20pt,mark-style:(stroke:2pt+red)
    )

    
    cetz-plot.plot.add(
      ((0,7),(0,7)),mark:"-",mark-size:20pt,mark-style:(stroke:2pt+black)
    )

    cetz-plot.plot.annotate({
      content((-1,4.7),[$(-1,6)$])
      content((.2,6.7),[$7$])
    })
  }
  )
}))

== Sketching a Quadratic
Can you create a step-by-step to find all of the useful information for sketching a quadratic?#pause
- Find where it crosses the $y$-axis by setting $x=0$

- Find where it crosses the $x$-axis by setting $y=0$. Then solve by either completing the square or factorising.

- Find the turning point by completing the square.\ If a quadratic is written int he from $y=k(x-a)^2 + b$, then the vertex is at $(a, b)$

== Completing the Square algebraically
#yellow-book
$
  2x^2+12x+1
$#pause
#text(red)[
  $
    &equiv 2(x^2 + 6x) + 1\ \
    &equiv 2((x+3)^2 - 9) + 1\ \
    &equiv 2(x+3)^2 - 18 + 1\ \
    &equiv 2(x+3)^2 - 17
  $
]

== You try:
#notes
$
  3x^2+12x+1
$#pause
#text(red)[
  $
    &equiv 3(x^2 + 4x) + 1\ \
    &equiv 3((x+2)^2 - 4) + 1\ \
    &equiv 3(x+2)^2 - 12 + 1\ \
    &equiv 3(x+2)^2 - 11
  $
]

== What can your calculator tell you?
#set enum(numbering:"1.")
#grid(columns:(1fr,1fr), column-gutter: 50pt,
[
  CASIO:
  1. HOME
  2. $x y=0$ EQUATION
  3. Polynomial
  4. $a x^2 + b x + c$
  5. Type in $x^2 + 2x - 3$#v(1.5em)
  6. $ x_1=1,x_2=-3,\ "MIN"x=-1,"MIN"y=-4 $
],[
  NUMWORKS:
  1. HOME
  
  2. EQUATIONS
  3. Type in $x^2 + 2x - 3 = 0$#v(1.5em)
  4. $ x_1 = -3, x_2 = 1,\ b^2 - 4 a c = 16 $
  5. Using 'GRAPHER', for vertex.
])

== Using your calculator, factorise and write the\ following in completed square form:
#yellow-book
$
  64x^2 - 40x - 6
$

#grid(columns:(1fr,1fr),
only("2-")[
  Calculator Gives:
  $
    x_1 = 3/4, x_2 = 5/16\ 
    "MIN" x = 5/16\
    "MIN" y = -49/4
  $
],
only(3)[
  Which means:\
  #text(red)[
    Factorised: $ 2(4x-3)(8x+1) $
  ]

  #text(orange.darken(20%))[
    Completed Square Form:
    $
      64(x-5/16)^2 - 49/4
    $
  ]
])

== Try these:
#notes
Use your calculator to Factorise and Write in\ Completed Square Form:

1. $16x^2+16x-21$ #uncover(2)[#text(red,22pt)[
  $equiv (4x-3)(4x+7) equiv 16(x+1/2)^2-25
  $]]

2. $80x^2+28x-24$ #uncover(2)[#text(red,22pt)[
  $equiv 4(5x-2)(4x+3) equiv 80(x+7/40)^2
  $]]
3. $-96x^2+12x+135$ #uncover(2)[#text(red,22pt)[
  $equiv -3(8x+9)(4x-5) equiv 1083/8 - 96(x-1/16)^2
  $]]

== Sketch the graph
#yellow-book
$
  y=-3x^2+8x+7
$#pause
#place(center+horizon, dy:2em,
  cetz.canvas(length: 8cm, background:white,{
  import cetz.draw: *
  import cetz-plot: *

  cetz-plot.plot.plot(
    x-min: -2, x-max: 5, y-min: -15, y-max: 15,
    axis-style:"school-book", x-tick-step:none, y-tick-step:none,
    size:(3,1),
  {
    cetz-plot.plot.add(
      domain:(-8,8),x=>-3*x*x + 8*x +7 ,style:(stroke:fadedBlue+2.5pt)
    )
    cetz-plot.plot.add(
      ((4/3,37/3),(4/3,37/3)),mark:"x",mark-size:20pt,mark-style:(stroke:2pt+red)
    )

    
    cetz-plot.plot.add(
      ((0,7),(0,7)),mark:"-",mark-size:20pt,mark-style:(stroke:2pt+black)
    )
    cetz-plot.plot.add(
      (((4-calc.sqrt(37))/3,0),((4-calc.sqrt(37))/3,0)),mark:"|",mark-size:20pt,mark-style:(stroke:2pt+black)
    )
    cetz-plot.plot.add(
      (((4+calc.sqrt(37))/3,0),((4+calc.sqrt(37))/3,0)),mark:"|",mark-size:20pt,mark-style:(stroke:2pt+black)
    )

    cetz-plot.plot.annotate({
      content((4/3+0.5,37/3+2),[$(4/3,37/3)$])
      content((-.15,7.5),[$7$])
      content(((4+calc.sqrt(37))/3+.5,2),[$(4+sqrt(37))/3$])
      content(((4-calc.sqrt(37))/3-.3,2),[$(4+sqrt(37))/3$])
    })
  }
  )
}))

== "Exam"ple question
#notes
Edexcel AS-Level 2018 Paper 1
#let scale=140%
#only(1)[#place( dx:-1.5em, dy:0.5em,
    image("img/102 exam_question.png",height:scale)
  ) 
#place( dx:16em, dy:-9em,
    image("img/102 exam_question.png",height:scale)
  )
]
#only(2)[
  #place(dy:1em,center+horizon,image("img/102 exam_MS.png"))
]

== Practice!
#notes
*Key Questions:*
Page 18, Q9 & 11
#place( dy:1em,
rect( inset:10pt,stroke:2pt+fadedBlue,fill:fadedBlue.lighten(70%),
  [Then move to:\ 
  #align(center)[
    #text(orange)[#bold[Completing the Square]]\
    Page 13-14: Q17 - Q19\
    #text(orange)[#bold[Sketching Quadratics]]\
    Page 19: Q13 - Q20\
    #text(red)[#bold[Problem Solving]]\
    Page 20: Q7 - Q13
  ]
  ])
)
#place( dy:-3em,dx:16em,
  TLMaths
)