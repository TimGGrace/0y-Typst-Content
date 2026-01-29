#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))

== Starter
#notes
Find the area between $y = cosh x$ and its tangents at $y = 101/20$ to $3"d.p."$

#place(dx:0em,dy:1em)[
 #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-4,x-max:4,y-min:-10,y-max:10,
    {
      plot.add(x=> calc.cosh(x),domain:(-5,5),
      style:(stroke:blue)
      )
      plot.add(x=>101/20 + (99/20) * (x - calc.ln(10)),domain:(-5,5),
      style:(stroke:red)
      )
      plot.add(x=>101/20 - (99/20) * (x + calc.ln(10)),domain:(-5,5),
      style:(stroke:red)
      )
      plot.add-fill-between(calc.cosh,x=>101/20 + (99/20) * (x - calc.ln(10)),domain:(0,calc.ln(10)), style:(stroke:none, fill:gray))
      plot.add-fill-between(calc.cosh,x=>101/20 - (99/20) * (x + calc.ln(10)),domain:(-calc.ln(10),0), style:(stroke:none, fill:gray))
    })
  
  }) ]
#only(2)[
#place(dx:9em,dy:1em)[#text(red)[
  $ 
    101/20 = cosh x => x &= ln(101/20 + sqrt(frac(101^2,20^2)-1)) \ &= - ln 10 "(and "ln 10", as cosh is even"\ 
    frac("d"y,"d"x) = sinh x&, lr(frac("d"y,"d"x)|)_(x=ln 10) = frac(10 - 1/10,2) = 99/20 \ 
  
    therefore y - 101/20 &= 99/20(x - ln 10) \
    "@"x=0, y &= 101/20 - frac(99 ln 10,20)
  $
]]
]
== Starter
#notes
#place(dx:0em,dy:1em)[
#grid(columns:(0.2fr,0.8fr),
cetz.canvas({
import cetz.draw: *
import cetz-plot: *
set-style(stroke:2pt)
plot.plot(size:(3,3),
x-tick-step: none,y-tick-step: none, 
  axis-style:"school-book",
  x-label:[$x$],y-label:[$y$],
  x-min:-0.1,x-max:4,y-min:-10,y-max:10,
  {
    plot.add(x=> calc.cosh(x),domain:(-5,5),
    style:(stroke:blue)
    )
    plot.add(x=>101/20 + (99/20) * (x - calc.ln(10)),domain:(-5,5),
    style:(stroke:blue)
    )
    plot.add-fill-between(((0,101/20),(calc.ln(10),101/20)),x=>101/20 + (99/20) * (x - calc.ln(10)),domain:(0,calc.ln(10)), style:(stroke:0.5pt, fill:red.lighten(50%)))
    
  })

}),
[Area of triangle:$ &=1/2 times ln 10 times (101/20-(101/20-(99ln 10)/20))\
&= 1/2 ln 10 times (99 ln 10)/20 = (99 (ln 10)^2)/40
$]
)
]
#place(dx:0em,dy:9em)[
#grid(columns:(0.2fr,0.8fr),
cetz.canvas({
import cetz.draw: *
import cetz-plot: *
set-style(stroke:2pt)
plot.plot(size:(3,3),
x-tick-step: none,y-tick-step: none, 
  axis-style:"school-book",
  x-label:[$x$],y-label:[$y$],
  x-min:-0.1,x-max:4,y-min:-10,y-max:10,
  {
    plot.add(x=> calc.cosh(x),domain:(-5,5),
    style:(stroke:blue)
    )
    plot.add(x=>101/20 + (99/20) * (x - calc.ln(10)),domain:(-5,5),
    style:(stroke:blue)
    )
    plot.add-fill-between(((0,101/20),(calc.ln(10),101/20)),calc.cosh,domain:(0,calc.ln(10)), style:(stroke:0.5pt, fill:red.lighten(50%)))
    
  })

}),
[Area above cosh:$ &= 101/20 times ln(10) - integral_0^(ln 10) cosh x "d"x = (101 ln 10)/20 - [sinh x]_0^(ln 10) \
&= (101 ln 10)/20 - 99/20

$]
)
]
== Starter
#notes
#place(dx:0em,dy:1em)[
#grid(columns:(0.2fr,0.8fr),
cetz.canvas({
import cetz.draw: *
import cetz-plot: *
set-style(stroke:2pt)
plot.plot(size:(3,3),
x-tick-step: none,y-tick-step: none, 
  axis-style:"school-book",
  x-label:[$x$],y-label:[$y$],
  x-min:-0.1,x-max:4,y-min:-10,y-max:10,
  {
    plot.add(x=> calc.cosh(x),domain:(-5,5),
    style:(stroke:blue)
    )
    plot.add(x=>101/20 + (99/20) * (x - calc.ln(10)),domain:(-5,5),
    style:(stroke:blue)
    )
    plot.add-fill-between(calc.cosh,x=>101/20 + (99/20) * (x - calc.ln(10)),domain:(0,calc.ln(10)), style:(stroke:0.5pt, fill:red.lighten(50%)))
    
  })

}),
[Area:$ &=2 times [(99(ln 10)^2)/40 - ((101ln 10)/20 - 99/20)] \
&= 12.888 (3"d.p.")
$]
)
]

== Integrations invlolving inverse trig
#red-book
#only("1-2")[  Given $y = "arsinh" x/a$, find $frac("d"y,"d"x)$]  
#only(2)[
  #text(red)[
    $
      sinh y &= x/a \
      frac("d"y,"d"x)cosh y &= 1/a \ => frac("d"y,"d"x) &= 1/(a cosh y) = 1/(a sqrt(1 + sinh^2 y)) \ frac("d"y,"d"x) &= 1/sqrt(a^2 + x^2) 
    $
  ]
]
#only("3-4")[
  #grid(columns:(0.8fr,1fr),
  [
    Given $y = "arcosh" x/a$, find $frac("d"y,"d"x)$
  ],
  [
    Given $y = 1/a"artanh" x/a$, find $frac("d"y,"d"x)$
  ]
  )
]
#only(4)[
  #grid(columns:(0.8fr,1fr),
  text(red,20pt)[
    $
      cosh y &= x/a \
      frac("d"y,"d"x) sinh y&=  1/a \
      frac("d"y,"d"x) &= 1/(a sinh y) \
      &= 1/(a sqrt(cosh^2 x - 1)) \
      therefore "d"/("d"x)("arcosh" x/a)&= 1/sqrt(x^2 - a^2)
    $
  ],
  text(red,20pt)[
    $
      tanh a y &= x/a \
      frac("d"y,"d"x)a sech^2 a y &= 1/a \
      frac("d"y,"d"x) &= 1/(a^2 sech^2 a y) \
      &= 1/(a^2 (1 - tanh^2 a y)) \
      therefore "d"/("d"x)(1/a "artanh" x/a) &= 1/(a^2 - x^2)
    $
  ]
  )
]

== So $"arsinh" x/a equiv ln(x + sqrt(x^2 + a^2))?$
#red-book
#only("1-2")[Can you prove/disprove this?\ ]
#only(2)[Perhaps the complex definition of $"sinh"x$ could help?]
#only(3)[
  #text(red)[
    $
      y &= "arsinh" x/a, therefore sinh y = x/a \
      e^y - e^(-y) &= 2x/a => e^(2y)-2x/a e^y - 1 = 0 \
      0 &= (e^y - x/a)^2 - x^2 / a^2 - 1 \
      e^y &= x/a + sqrt(x^2/a^2 - 1) = 1/a (x + sqrt(x^2 + a^2)) \
      y = ln (1/a (x + sqrt(x^2 + a^2))) &= ln(x + sqrt(x^2 + a^2)) #pin(0)+ ln 1/a #pin(1)
    $
    #pinit-highlight(0,1,dy:-35pt,extended-height:55pt,fill:yellow.transparentize(80%), stroke:1pt)
  ]
]

== Integrating by pattern
#red-book
#grid(columns:(0.8fr,1fr),
[
  Find $ 
  integral 3/sqrt(5x^2 - 80)"d"x 
  $
  #only("2-")[
    #text(red)[
      $
        &= 3/sqrt(5) integral 1/sqrt(x^2 - 16)"d"x \
        &= (3 sqrt(5))/5 "arcosh" x/4 + c
      $
    ]
  ]
],
[
  #only("3-")[
    Find $ integral 1/sqrt(x^2 + 8x + 97)"d"x $
  ]
  #only(4)[
    #place(dx:3em,dy:0.5em)[#text(red)[
      $
        &= integral 1/sqrt((x+4)^2 + 81)"d"x \
        &= integral 1/sqrt(u^2 + 81)"d"u \
        &= "arsinh" u/9 + c \
        &= "arsinh" (x+4)/9 + c
      $
    ]]
  ]
]
)

== Quick Practice
#notes
Find:
#grid(columns:(1fr,1fr,1fr), row-gutter: 100pt,
[
  $ integral 1/sqrt(4 + x^2)"d"x $
],[
  $ "d"/("d"x)("arsinh" 2x) $
],[
  $ integral 1/(25 - x^2)"d"x $
],
[
  $ "d"/("d"x)("arcosh" x/3) $
],[
  $ integral 1/sqrt(x^2 - 6x - 16)"d"x $
],
[
  $ integral 1/(7sqrt(5 + 3x^2))"d"x $
])
#only(2)[
  #place(dy:-6em)[
    #text(red)[
      #grid(columns:(1fr,1fr,1fr), row-gutter: 100pt,
[
  $ "arsinh" x/2 + c $
],[
  $ 1/sqrt(1/4 + x^2) = 2/sqrt(1 + 4x^2) $
],[
  $ - "arcosh" x/5 + c $
],
[
  $ 1/sqrt(9-x^2) $
],[
  $ "arcosh" (x-3)/5 + c $
],
[
  $ sqrt(3)/21 "arsinh" ((sqrt(15)x)/5) + c $
])
    ]  
  ]
]

== Two substitutions
#only("1-2")[#red-book]
#only(1)[Find $ integral 1/sqrt(x^2 - 9)"d"x $
#grid(columns:(1fr,1fr),
[Method 1: \ With the substitution $x = 3 cosh u$ #v(10cm)],
[Method 2: \ With the substitution $x = 3 sec u$])
]
#only(2)[
  $
    x &= 3 cosh u => "d"x = 3 sinh u, u = "arcosh" x/3 \
    "I" &= integral frac(3 sinh u, sqrt(9 cosh^2 u - 9))"d"u = integral frac(cancel(3)sinh u,cancel(3)sqrt(cosh^2 u - 1))"d"u \
    &= integral cancel(sinh u)/cancel(sinh u)"d"u = integral 1"d"u = u + c = "arcosh" x/3 + c

  $
]
#only(3)[
  #place(dy:20pt)[$
    x &= 3 sec u => "d"x = 3 tan u sec u \
    "I" &= integral frac(3 tan u sec u,sqrt(9 sec^2 u - 9))"d"u = integral frac(cancel(3 tan u) sec u, cancel(3 tan u))"d"u = integral sec u "d"u \ \
    &= integral frac(sec u (sec u + tan u), (sec u + tan u))"d"u = integral frac(sec^2 u + sec u tan u,(sec u + tan u))"d"u \ \
    &= ln|sec u + tan u| + c = ln lr(|x/3 + sqrt(x^2 - 9)/3|) + c \
    &= ln lr(|x + sqrt(x^2 - 9)|) + c_2
  $]
]

== One last One
#red-book
Find $ integral sqrt(4x^2 - 16)"d"x $
#only(2)[
  #place()[
    #text(red)[
      $
        "let" 4x^2 &= 16 cosh^2 u => x =2 cosh u, u = "arcosh" x/2, "d"x = 2 sinh u "d"u \
        therefore "I"&=integral sqrt(16 cosh^2 u - 16) times 2 sinh u "d"u = 8integral sinh^2 u "d"u \
        &= 4 integral 2 sinh^2 u "d"u = 4 integral (cosh 2u - 1) "d"u \
        &= 4 (1/2 sinh 2u - u) + c = 2 sinh u cosh u - 4"arcosh" x/2 + c
      $
    ]
  ]
]
#only(3)[
  #place()[#text(red)[
    $
       &= 4 (1/2 sinh 2u - u) + c = 2 sinh u cosh u - 4"arcosh" x/2 + c \
       &= 4 (sqrt(x^2/4 - 1)) times x/2 - 4 "arcosh" x/2 + c \
       &= x sqrt(x^2 - 1) - 4 "arcosh" x/2 + c
    $
  ]]
]