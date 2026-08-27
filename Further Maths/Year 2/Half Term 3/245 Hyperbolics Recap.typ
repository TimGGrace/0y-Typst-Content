#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))

== Starter
Sketch and state the domain and range:
1. $y = sinh(x)$
2. $y = cosh(x)$
3. $y = tanh(x)$
4. $y = "arsinh"(x)$
5. $y = "arcosh"(x)$
6. $y = "artanh"(x)$

== $y = "arsinh"(x)$
#red-book
#place(dx:8em,dy:1em)[
 #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-5,x-max:5,y-min:-5,y-max:5,
    {
      let sty = (stroke: red + 3pt)
      plot.add(x=> calc.sinh(x),domain:(-5,5),
      style:(stroke:blue)
      )
      plot.add(x=> calc.ln(x + calc.sqrt(x*x+1)),domain:(-5,5),
      style:sty
      )
      
    })
  
  }) ]
#place(dy:5em)[Domain: $x in RR$ \ Range: $y in RR$ \ Odd function]

== $y = "arcosh"(x)$
#red-book
#place(dx:8em,dy:1em)[
 #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-5,x-max:5,y-min:-5,y-max:5,
    {
      let sty = (stroke: red + 3pt)
      plot.add(x=> calc.cosh(x),domain:(-5,5),
      style:(stroke:blue)
      )
      plot.add(x=> calc.ln(x + calc.sqrt(x*x -1)),domain:(1,5),
      style:sty
      )
      
    })
  
  }) ]
#place(dy:5em)[Domain: $x >= 1$ \ Range: $y >= 0$]

== $y = "artanh"(x)$
#red-book
#place(dx:8em,dy:1em)[
 #cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:(8,8),
  x-tick-step: none,y-tick-step: none, 
    axis-style:"school-book",
    x-label:[$x$],y-label:[$y$],
    x-min:-5,x-max:5,y-min:-5,y-max:5,
    {
      let sty = (stroke: red + 3pt)
      plot.add(x=> calc.tanh(x),domain:(-5,5),
      style:(stroke:blue)
      )
      plot.add(x=> -.5*calc.ln((1-x)/(1+x)),domain:(-0.99999999,0.99999999),
      style:sty
      )
      
    })
  
  }) ]
#place(dy:5em)[Domain: $x in (-1,1)$ \ Range: $y in RR$ \ Odd function]

== Show that
#red-book
$"arsinh"(x) = ln(x + sqrt(x^2 +1))$

== You Try
#notes
1. Write $"arsinh"4⁡$ in the form $ln⁡(a+sqrt(b))$ where $a, b∈ZZ$.
2. Write $"arsinh"⁡(−4)$ in the form $ln⁡(𝑎+√𝑏)$ where $𝑎,𝑏∈ℤ$.
3. Write $"arcosh"5⁡$ in the form $ln⁡(𝑎+√𝑏)$ where $𝑎,𝑏∈ℤ$.
4. Write $"artanh"3/4$ in the form $ln⁡(𝑎)$ where $𝑎∈ℝ$.
5. It is given that $"cosech"⁡x=3/4$
  - Find the exact values of $sinh⁡ x$ and $cosh x$⁡.
  - Hence find the exact value of $x$, in terms of natural logarithms.

== Q5
#red-book
#text(22pt)[It is given that $"cosech"⁡x=3/4$
  - Find the exact values of $sinh⁡ x$ and $cosh x$⁡.
  - Hence find the exact value of $x$, in terms of natural logarithms.]

#text(red,22pt)[
  $ "cosech" x & = 3/4 => #pin(0)sinh x = 4/3#pin(1)   \
  cosh^2 x - sinh^2 x &= 1 => cosh^2 x = 1 + 16/9 => #pin(2)cosh x = 5/3#pin(3) \
  
  sinh x = 4/3 => x &= "arsinh"4/3 = ln(4/3 + sqrt(16/9+1)) = #pin(4)ln 3#pin(5)
  $
  #pinit-highlight(0,1,dy:-30pt,extended-height:50pt)
  #pinit-highlight(2,3,dy:-30pt,extended-height:50pt)
  #pinit-highlight(4,5,dy:-30pt,extended-height:50pt)
]
  
== Solve
#red-book
$ sinh^2⁡𝑥−4 cosh⁡𝑥+5=0 $

== You Try
#notes
1. $3 sinh x + 2 cosh x = 4	$
2. $4 cosh x - 8 sinh x + 1 = 0$
3. $cosh x + 4 sinh x = 3		$
4. $3 sech x - 2 = 5 tanh x$
5. $9 cosh^2 x - 6 sinh x = 17$
6. $16 sinh x - 9 cosh x+6 sinh 2x - 12=0	$

#MWBQ(title:"Evaluate without a calculator",
([$ cosh ( ln 5 ) $],[$ 13/5 $]),
([$ sinh ( 3 ln 2 ) $],[$ 63/16 $]),
([$ cosh ( 3/2 ln 4 ) $],[$ 65/16 $]),
([$ tanh ( ln 3 ) $],[$ 4/5 $]),
)

== Practice
#only(1)[Write $cosh^3 x$ in the form $a cosh 3x + b cosh x + c$ \ where $a, b, c in RR$

Similarly, find $sinh^3 x$ in terms of $sinh 3x$ and $sinh x$.]
#only(2)[
  #TLFMaths
  *TLMaths FM Core Pure \ Textbook Part 2.*
  
#text(22pt)[*Hyperbolic Graphs Practice:* \
Hyperbolic Functions: Domain and Range \
#text(green)[Q1-7]

*Hyperbolics Identities:* \
Hyperbolic Functions: Osborn’s Rule and Proof \
#text(green)[Q1-4 and 8-10] ,  
#text(orange)[Q12, 14, 16, 17, 19, 21, 25, 26  \ ]
#text(red)[Q28, 29, 31, 32, 35, 37, 41, 42, 43 ]]

#place(dy:-11.2em,dx:19.2em)[Q21]
]

