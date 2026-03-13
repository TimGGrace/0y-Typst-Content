#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))

== Starter
#notes
Find:
#place(dy:1em)[#text(24pt)[#grid(columns:(1fr,1fr),
[
  1. $ integral frac(1,25+x^2)"d"x $

  2. $ integral frac(1, sqrt(5x^2 - 180))"d"x $

  3. $ integral frac(5, sqrt(1-6x-x^2)) $

  4. $ integral sqrt(x^2 - 9)"d"x $
],
text(red)[#only(2)[
  1. $ 1/5 "arctan" x/5 +c $

  2. $ 1/sqrt(5) "arcosh" x/6 +c \ = 1/sqrt(5) ln(x + sqrt(x^2 - 36)) +c $

  3. $ 5 "arcsin" frac(x+3,sqrt(10))+c $
]])]]
== Starter Sol 4
#place()[#text(red,20pt)[
  $
    "Let" x=3 cosh u &=> ("d"x)/("d"u) = 3 sinh u => "d"x = 3 sinh u "d"u \
    therefore integral sqrt(x^2 - 9) "d"x &= integral sqrt(9 cosh^2 u - 9) times 3 sinh u "d"u = 9 integral sinh^2 u "d"u \
    &= 9 integral 1/2 (cosh 2 u - 1) "d"u = 9/2 integral cosh 2u - 1 "d"u \
    &= 9/4 sinh 2u - 9/2 u + c = 9/2 sinh u cosh u - 9/2 u + c \
    &= 9/2 sqrt(sinh^2 u) cosh u - 9/2 u + c = 9/2 sqrt(cosh^2 u - 1) cosh u - 9/2u + c \
    &= 9/2 dot x/3 dot sqrt(x^2/9 - 1) - 9/2 "arcosh" x/3 + c = (3x)/2 sqrt(x^2/9 - 1) - 9/2 "arcosh" x/3 + c
  $
]]

== The Maclaurin Series: Concept
Imagine I have a function, $f(x)$, and I want to simulate it with an easier function.

We've used Lagrange and Newton's methods to simulate it from points, but what if we don't know those points, or it's hard to get them?

Let's instead look at a single point on $f(x)$.#pause

It's simplest to start with $(0, f(0))$

== The Maclaurin Series: Concept
Let's imagine that this function, $f(x) = sin(x)$
#only(1)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-6,x-max:6,y-min:-2,y-max:2,
    {
      plot.add(x=> calc.sin(x),domain:(-6,6),
      style:(stroke:blue)
      )
    }) 
  })
]
#only(2)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-6,x-max:6,y-min:-2,y-max:2,
    {
      plot.add(x=> calc.sin(x),domain:(-6,6),
      style:(stroke:blue))
      plot.add(x=>0, domain:(-6,6), style:(stroke:red+2pt))
    }) 
  })
  #place(dy:-8em,dx:11em)[
    $F(x) = f(0)$
  ]
]
#only(3)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-6,x-max:6,y-min:-2,y-max:2,
    {
      plot.add(x=> calc.sin(x),domain:(-6,6),
      style:(stroke:blue))
      plot.add(x=>0 + x, domain:(-6,6), style:(stroke:red+2pt))
    }) 
  })
  #place(dy:-8em,dx:11em)[
    $F(x) = f(0) + f'(0) dot x$
  ]
]
#only(4)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-6,x-max:6,y-min:-2,y-max:2,
    {
      plot.add(x=> calc.sin(x),domain:(-6,6),
      style:(stroke:blue))
      plot.add(x=>0 + x + 0, domain:(-6,6), style:(stroke:red+2pt))
    }) 
  })
  #place(dy:-8em,dx:11em)[
    $F(x) = f(0) + f'(0) dot x+(f''(0))/(2!)dot x^2$
  ]
]
#only(5)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-6,x-max:6,y-min:-2,y-max:2,
    {
      plot.add(x=> calc.sin(x),domain:(-6,6),
      style:(stroke:blue))
      plot.add(x=>x - x*x*x/6, domain:(-6,6), style:(stroke:red+2pt))
    }) 
  })
  #place(dy:-8em,dx:11em)[
    $F(x) = f(0) + f'(0) dot x +(f''(0))/(2!)dot x^2+(f'''(0))/(3!)dot x^3$
  ]
]

#only(6)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-6,x-max:6,y-min:-2,y-max:2,
    {
      plot.add(x=> calc.sin(x),domain:(-6,6),
      style:(stroke:blue))
      plot.add(x=>x - x*x*x/6 + calc.pow(x,5)/calc.fact(5), domain:(-6,6), style:(stroke:red+2pt))
    }) 
  })
  #place(dy:-8em,dx:11em)[
    $F(x) = f(0) + f'(0) dot x +(f''(0))/(2!)dot x^2+(f'''(0))/(3!)dot x^3 +  ...$
  ]
]
#only(7)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-6,x-max:6,y-min:-2,y-max:2,
    {
      plot.add(x=> calc.sin(x),domain:(-6,6),
      style:(stroke:blue))
      plot.add(x=>x - x*x*x/6 + calc.pow(x,5)/calc.fact(5)- calc.pow(x,7)/calc.fact(7), domain:(-6,6), style:(stroke:red+2pt))
    }) 
  })
  #place(dy:-8em,dx:11em)[
    $F(x) = f(0) + f'(0) dot x +(f''(0))/(2!)dot x^2+(f'''(0))/(3!)dot x^3 +  ...$
  ]
]
#only(8)[
  #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-6,x-max:6,y-min:-2,y-max:2,
    {
      plot.add(x=> calc.sin(x),domain:(-6,6),
      style:(stroke:blue))
      plot.add(x=>x - x*x*x/6 + calc.pow(x,5)/calc.fact(5)- calc.pow(x,7)/calc.fact(7)+calc.pow(x,9)/calc.fact(9), domain:(-6,6), style:(stroke:red+2pt))
    }) 
  })
  #place(dy:-8em,dx:11em)[
    $F(x) = f(0) + f'(0) dot x +(f''(0))/(2!)dot x^2+(f'''(0))/(3!)dot x^3 +  ...$
  ]
]
== The Maclaurin Series: Concept
#red-book
The idea of the Maclaurin series is to construct a polynomial to \ match the target function's derivativesat $x=0$.

If we can do that for *every* derivative, we'll have a perfect match, right?#pause

Well, no, there are some restrictions. We'll come to those later.

From the \ formula book:
#place(dx:8em,dy:-3em)[
  #image("img/Maclaurin FB.png")
]

== The Maclaurin Series: The technical bits
#red-book
A Maclaurin series is said to *converge* to a function $f(x)$.

It is an infinite polymonial series. \ We call this a _power series_, although you don't need that for the exam.

*Note*: \
- To use the Maclaurin series, $f(0)$ must be defined for the function.
- A Maclaurin series does not necessarily converge for all values of $x$. \ This is called the #bold[interval of convergence].

== Example: $f(x) = sin x$
#red-book
#only(1)[#table(columns:range(3).map(_=>8em),
[Function],[Expression],[$F(0)$],
[$f(x)$],$sin x$, $0$,
$f'(x)$,[],[],
$f''(x)$,[],[],
$f'''(x)$,[],[],
$...$,[],[],
$f^(2r)(x)$,[],[],
$f^(2r+1)(x)$)]
#only(2)[
  #table(columns:range(3).map(_=>8em),
[Function],[Expression],[$F(0)$],
[$f(x)$],$sin x$, $0$,
$f'(x)$,text(red)[$cos x$],text(red)[$1$],
$f''(x)$,text(red)[$- sin x$],text(red)[$0$],
$f'''(x)$,text(red)[$- cos x$],text(red)[$-1$],
$...$,text(red)[$...$],text(red)[$...$],
$f^((2r))(x)$,text(red)[$(-1)^r sin x$],text(red)[$0$],
$f^((2r+1))(x)$,text(red)[$(-1)^r cos x$],text(red)[$(-1)^r$],
)
#text(red)[$ sin x = x - frac(x^3,3!) + frac(x^5, 5!)- ... + (-1)^r frac(x^(2r + 1),(2r+1)!) + ... $]
]

== You Try: Find the first 4 terms and the general term.
#notes
#only(1)[
  1. $ f(x) = e^x $
  
  2. $ f(x) = ln x $
  
  3. $ f(x) = (1 + x)^n "for" n in RR $
  #place(dy:-4.3em,dx:10em)[#text(red)[$<-$ What problem do you have here?]]
]
#uncover("2-3")[
  1. $ f(x) = e^x $
  
  2. $ f(x) = ln (1 + x) $
  
  3. $ f(x) = (1 + x)^n "for" n in RR $
]
#only(3)[
  #text(red)[
    #place(dy:1em,dx:2em)[
      1. $ e^x = 1 + x + frac(x^2,2!) + frac(x^3,3!) + ... + frac(x^r,r!)+... $

      2. $ ln(1+x) = x - frac(x^2,2) + frac(x^3,3)  - frac(x^4,4) + ... + frac((-1)^(r+1)x^r,r)+...$

      3. $1 + n x + frac(n(n-1),2!)x^2 + frac(n(n-1)(n-2),3!)x^3 + ... + frac(n(n-1)...(n-r+1),r!)x^r+...$
    ]
  ]
]

== From the Formula book
#red-book
#let params = (width:100pt,height:34pt,fill:fadedBlue.transparentize(50%), stroke:1pt,radius:15pt)
#place(dy:0.5em,dx:-0.5em)[#image("img/Maclaurin Given.png")]
#only(2)[
  #place(dy:6.5em,dx:14.5em,rect(..params))
  #place(dy:14.4em,dx:21.3em,rect(..params))
  #place(dy:8em,dx:20em,rect(inset:10pt,fill:fadedBlue.transparentize(50%), stroke:1pt,radius:15pt)[Intervals of Convergence])
]

== Discuss
#discuss
\ \ 
Are there any functions for which the function itself and its Maclaurin series will be exactly equal?

== Are there any functions for which the function itself and its Maclaurin series will be exactly equal?

Yes, Polynomials!

Since the Maclaurin series is only definitely correct at $x=0$ for other series, for other functions, the Maclaurin series may, or may not, ever intersect the curve again!

== From the last question
The Maclaurin series came out with a result that's almost the same as the binomial expansion, which should be expected if it will match polynomials exactly.#pause

That means that questions you're asked can be similar sometimes!

What could you be asked to do with a binomial expansion in A Level Maths?

== Possible Questions

- Write down the first three terms of the Maclaurin series for a given function.

- Write down the formula for the $r$th term of the Maclaurin series.

- Use the Maclaurin series to approximate the value of $f(x)$ at a given value of $x$.

- Recognise the range of values of $x$ for which the Maclaurin series converges.

== Find the first three non-zero terms of the \ Maclaurin series for $sin 3x$
#red-book
#only(2)[
  $
    sin x &= x - frac(x^3,3!) + frac(x^5,5!)+... ["FB"] \ \
    therefore sin 3x & approx (3x) - frac((3x)^3,3!) + frac((3x)^5,5!) \
    &= 3x - 9/2 x^3 + 81/40 x^5 \
    &"valid for all" x in RR
  $
]

== Find the first three non-zero terms of the \ Maclaurin series for $ln (1 + x/2)$
#red-book
#only(2)[
  $
    ln(1 + x) &= x - frac(x^2,2) + frac(x^3,3) - ... \ \
    therefore ln(1 + x/2) &approx (x/2) - frac((x/2)^2,2) + frac((x/2)^3,3) \
    &= 1/2 x - 1/8 x^2 + 1/24 x^3 \
    "valid for" -1 < x/2 <= 1 &=> -2 < x <= 2
  $
]

== You Try: Find the first three non-zero terms of the Maclaurin Series for:
#notes
1. $sin 5x$

2. $cos x/3$

3. $ln(1 + 3x)$

4. $e^(4x)$

5. $ln(2+x)$

== Find the first three non-zero terms of the \ Maclaurin Series for $ln(2+x)$
#red-book
$
  ln(1 + x) &= x - frac(x^2,2) + frac(x^3,3) - ... \ \
  ln(2+x) &= ln 2 + ln(1 + x/2) \ \
  therefore ln(2) + ln(1 + x/2) &approx ln 2 + (x/2) - frac((x/2)^2,2) + frac((x/2)^3,3) \
  &= ln 2 + 1/2 x - 1/8 x^2 + 1/24 x^3 quad forall -2<x<=2
$

== Practice Time!
#TLFMaths
 \ \
#text(purple)[#bold[Extension]: Find the first three non-zero terms \ of the Maclaurin Series for $tan x$]