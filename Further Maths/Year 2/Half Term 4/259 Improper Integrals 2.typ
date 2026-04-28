#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#import "@preview/cetz-plot:0.1.3" : *

== Starter
#notes
1. Show that $ integral^sqrt(3)_(-infinity) 1/(1+x^2 ) "d"x = (5 pi)/6 $

2. Evaluate $
  integral_(-"e")^infinity "e"^(-x)"d"x
$

== Improper Integrals
#red-book
Last lesson, we looked at how to use limits on an integral to \ get 'close' to $plus.minus infinity$, since you can't actually get there.#pause

What could we do for the following?
$
  integral_0^4 1/sqrt(x) "d"x
$

#place(dy:-2.5em,dx:2em,)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,6),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-.1,x-max:5,
  y-min:-.1,y-max:4,
  {
    plot.add(x=> 1/(calc.sqrt(x)),domain:(0.001,8), samples:1000, style:(stroke: blue.darken(20%)+4pt))

    plot.add-fill-between(x=> 1/(calc.sqrt(x)), x=>0,domain:(0.001,4), samples:1000, style:(stroke: none, fill:blue.lighten(70%)))
    
  })
  })
]

== Improper Integrals
#red-book
$
  integral^4_0 1/sqrt(x)"d"x &= lim_(a->0) integral_a^4 1/sqrt(x)"d"x \ \
  &= lim_(a->0)[2 sqrt(x)]^4_a \ \
  &= lim_(a->0)[4 - 2sqrt(a)] \ \
  &= 4
$

== Can you figure them out?
#red-book
#grid(columns:(1fr,1fr),
[$
   integral_(-1)^1 1/(x^2)"d"x
$],
[$
  integral_(-1)^4 1/(x-2)^(2/3)"d"x
$])

== You Try
#TLFMaths
#place(dx:22.5em,dy:-0.7em)[
  #align(center)[Q 9, \ 24, 36]
]
#text(purple,36pt)[#bold[EXT]: $integral_0^infinity x^(-3) "d"x $]
