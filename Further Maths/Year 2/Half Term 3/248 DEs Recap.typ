#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))

#let dydx = $("d"y)/("d"x)$
== Starter
#notes
1. Find $"d"/("d"x)(x y)$ #only(2)[#text(red)[$= x #dydx + y$]]

2. Find $"d"/("d"x)(y sin x)$#only(2)[#text(red)[$= y cos x + sin x #dydx$]]

3. Find $"d"/("d"x)(x y^2)$#only(2)[#text(red)[$= y^2 + 2x y #dydx$]]

4. Find $"d"/("d"x)(sinh(x)e^y)$#only(2)[#text(red)[$= cosh(x)e^y + sinh(x)e^y#dydx$]]

5. Find $"d"/("d"x)(ln(x)tan(2y))$#only(2)[#text(red)[$= tan(2y)/x + 2ln(x)sec^2(2y)#dydx$]]

== What is a differential equation?
#red-book
Technically, this is an equation involving a variable, $x$, a function of $x$ (usually '$y$'), and the derivative of the function #dydx .

The goal is to work out what function satisfies that equation.

It's often easiest to imagine these as a *vector field*.

EG. $ #dydx = 2x $

== $ #dydx = 2x $
#place(dy:1em,dx:1em)[#draw-vector-field(dydx:(x,y)=>2*x,domain:(-5,5),range:(-5,5), size:(8,8))]
#place(dx:13em)[
  The gradient at any point on this graph can be \ calculated as $2x$, so we'll see a quadratic \ if we choose any specific point.
]
== $ #dydx = y - x $
#place(dy:1em,dx:1em)[#draw-vector-field(dydx:(x,y)=>y - x,domain:(-5,5),range:(-5,5), size:(8,8))]