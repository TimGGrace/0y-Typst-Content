#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#import "@preview/cetz-plot:0.1.3" : *

== Starter
#notes
#only(1)[An economist finds that the gas prices from $2017$ tp $2022$ can be described by the function $ f(x) = 1.4^x$

Here, $f$ is measured in USD per gallon, and $x$ represents the number of years since $2017$.

Find the average price of gas per gallon between $2017$ and $2022$.
]
#only(2)[
  #text(red)[
    $
      "MV" &= 1/(5-0)integral^5_0 1.4^x "d"x = 1/5[1/(ln 1.4) 1.4^x]^5_0 \
      &= 1/(5 ln 1.4) (1.4^5 - 1.4^0) = 2.6024...\ 
      therefore &\$ 2.60 "USD per gallon" 
    $
  ]
]

== Without using a calculator's integral button, find the following:
#place(dy:15pt)[#range(2,6).map(n=>$ integral^#calc.pow(2,n) _2 1/(x^2)"d"x $).join(v(-10pt))]

#place(dy:3em,dx:12em)[
  #text(purple)[
    #bold[EXTENSION:] Suggest a solution to
    $
      integral^infinity_2 1/(x^2)"d"x
    $
  ]
]

== Improper Integrals
#red-book
So far, you have dealt with:
- Indefinite Integrals #text(22pt)[(no bounds)]
- Proper Integrals #text(22pt)[(defined bounds, continuous function within the bounds)]

But now we need to deal with Improper Integrals. *Either*:
- Infinity in a bound
- A discontinuity within the bounds#pause
- Possibly both

== Improper Integrals
#red-book
Evaluate $ integral^infinity_2 1/(x^2) "d"x $
#only(2)[#place(dy:1em)[#text(red)[
  $
    &= lim_(a->infinity) integral^a_2 1/(x^2) "d"x = lim_(a->infinity)[-1/x]^a_2 \
    &= lim_(a->infinity) [(-1/a) - (-1/2)] = 1/2
  $
  As this area tends to $1/2$, we call this \ integral #bold[convergent].
  ]
  #place(dy:-9em,dx:20em)[
    #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,6),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-.1,x-max:5,
  y-min:-.1,y-max:1,
  {
    plot.add-fill-between(x=> 1/(x*x), x=>0,domain:(2,8), samples:1000, style:(stroke: none, fill:red.lighten(70%)))
    
    plot.add(x=> 1/(x*x),domain:(0.1,8), samples:1000, style:(stroke: red.darken(20%)+4pt, fill:red.lighten(70%)))
  })
  })
  ]
]]

== You Try
#notes
Find:
#grid(columns:(1fr,1fr))[
1. $ integral^infinity_4 1/(x^4) "d"x $

2. $ integral^infinity_0 e^(-x) "d"x $

3. $ integral^(-3)_(-infinity) 1/(x^3) "d"x $
][
4. $ integral^infinity_1 (ln x)/(x^3) "d"x $

5. $ integral^0_(-infinity) x^2 e^x "d"x $

6. $ integral^infinity_2 1/x "d"x $]

== $ "Attempting" integral x^(-1) "d"x $
#red-book
$
  integral^infinity_2 1/x "d"x &= lim_(a->infinity)[ln x]^a_2 \
  &= lim_(a->infinity)[ln a - ln 2] \
  therefore & "Divergent"
$

== 'Even more' Improper Integrals
#red-book
What if... *both* bounds were an $infinity$?
$
  integral^infinity_(-infinity) 1/(x^2 + 1) "d"x
$
#place(dy:10pt,)[#only(2)[#text(red)[
  $
    &= lim_(a->-infinity) integral_a^0 1/(x^2 + 1) "d"x + lim_(b->infinity)integral_0^b 1/(x^2 + 1) "d"x \
    &= lim_(a->-infinity) [arctan x]^0_a + lim_(b->infinity)[arctan x]_0^b \
    &= lim_(a->-infinity) [cancel(arctan 0)- arctan a] + lim_(b->infinity)[arctan b - cancel(arctan 0)] \
    &=  pi/2 + pi/2 = pi
  $
]]]

== You Try
#notes
$ integral_(- infinity)^(infinity) frac(6x^3,(x^4+1)^2) "d"x $

== Proving Divergence
#red-book
Show that the following integral diverges:
$
  integral_(-infinity)^infinity x e^x "d"x
$
#place()[#only(2)[#text(red)[
  $ 
    integral_(-infinity)^infinity x e^x "d"x &= lim_(a->-infinity) integral_(-a)^0 x e^x "d"x + lim_(b->infinity)integral_0^infinity x e^x "d"x \
    &= lim_(a->-infinity) [x e^x - e^x]_a^0 + lim_(b->infinity)[x e^x - e^x]_0^b \
    &= 1 + lim_(b->infinity)[b e^b - e^b - (0 - 1)] = 1 + lim_(b->infinity) [e^b (b-1) + 1] \
    therefore &"Divergent as" lim_(b->infinity)[e^b (b-1)] "diverges"
  $
]]]

== Beyond the Spec
We can prove that the integral of $f(x)$ converges, so long as $f(x)$ is always within the closed interval $[0,g(x)]$ #bold[and] $g(x)$ converges.

#grid(columns:(1em,1em),
[
    #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,6),
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:-.1,x-max:5,
  y-min:-.1,y-max:0.5,
  {
    plot.add(x=> 1/(x*x),domain:(0.1,8), samples:1000, style:(stroke: blue.darken(20%)+4pt))

    plot.add-fill-between(x=> (calc.cos(x)*calc.cos(x))/(x*x), x=>0,domain:(2,8), samples:1000, style:(stroke: none, fill:red.lighten(70%)))
    
    plot.add(x=> (calc.cos(x)*calc.cos(x))/(x*x),domain:(2,8), samples:1000, style:(stroke: red.darken(20%)+4pt))
  })
  })
],[
  #place(dy:0em,dx:9em)[#text(blue.darken(20%))[$
    g(x) &= 1/(x^2)
  $]
  #text(red.darken(20%))[$
    f(x) &= (cos^2 x)/(x^2)
  $]]
  #place(dx:23em,dy:0em)[
    $
    &0<=(cos^2 x)/(x^2) <= 1/(x^2) \
    therefore &integral_1^infinity f(x)"d"x "converges as" \ &integral_1^infinity g(x)"d"x "converges"
  $
  ]
])
