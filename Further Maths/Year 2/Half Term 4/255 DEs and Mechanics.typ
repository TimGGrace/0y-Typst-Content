#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#let diff(y: $y$, x: $x$, pow: 1) = {
if (pow==1) {$frac("d"#y,"d"#x)$}
else {$frac("d"^(#pow)#y,"d"#x^(#pow))$}}

== Starter
For each DE, decide which type of motion (SHM/damping/not damped) is occuring. Sketch your solution.

#grid(columns:(1fr,1fr), row-gutter: 20pt,
[1. $dot.double(x) + 9x = 0$],
[2. $dot.double(x) - 9x = 0$],
[3. $dot.double(x) + 6 dot(x) + 9x = 0$],
[4. $dot.double(x) - 6 dot(x) + 9x = 0$],
[5. $dot.double(x) + 6 dot(x) + 10x = 0$],
[6. $dot.double(x) - 6 dot(x) + 10x = 0$],
[7. $dot.double(x) + 7 dot(x) + 10x = 0$],
[8. $dot.double(x) - 7 dot(x) + 10x = 0$],
[9. $dot.double(x) + 3 dot(x) - 10x = 0$],)

== DEs in Mechanical Problems
#red-book
A skydiver jumps from a plane and is falling down towards \ Earth.

Draw a force diagram to show what forces are acting on the system. #pause

Assuming that Air Resistance $prop$ Velocity, we can form a differential equation for their speed. #pause

What does the DE graph show us \ about the skydiver's velocity?
#place(dy:-4em,dx:16em)[#draw-vector-field(dydx:(x,y)=>- 2*y + 4,domain:(-1,5),range:(-5,5), size:(8,8), stroke-width:0.4, step: 0.5, axisLabels:($t$,$v$))] #pause
#place(dy:1em,rect(fill:fadedYellow, stroke:1pt, inset:10pt)[Given she has a mass of $70 "kg"$ and a terminal \ velocity of $5 m s^(-1)$, find an equation for $v$])

== Assumptions
To answer that last question, we've assumed that: #pause
1. They fall straight down. #pause
2. Air Resistance is proportional to velocity. #pause

How does air resistance actually relate to velocity? #pause

#red-book
Generally, you'll want to know a few facts, and be prepped to use them:
1. $F = m a$

2. $v = #diff(y:$x$,x:$t$)$

3. $a = #diff(y:$v$,x:$t$) = #diff(y:$x$,x:$t$, pow:2)$

== Match the DE!
#place(dy:0.8em,)[#text(20pt)[#enum(numbering:"Process A")[
  A lump of radioactive material has a mass of $X(t)$. Its mass slowly decays over time.
][
  There are some live bacteria $X(t)$ in a jar. Some are attacked by medicine and die. Once dead, the medicine moves to another target. During the process, other bacteria eat and replicate.
][
  A ball is attached on opposite sides to pieces of elastic. The elastic is stretched out and one end is fixed to the ground and the other end to the ceiling. The ball is pulled vertically down slightly and released. Its displacement is $X(t)$
][
  A curling stone is slid along an ice rink (and not touched again). The distance it has travelled is $X(t)$. Frictional forces cause the stone to gradually come to rest.
][
  Water is pumped from a lake at a constant rate. The volume of water in the lake is $X(t)$
]]]
== Match the DE!
#place(dy:1em)[#enum(numbering:"DE 1:")[
  $#diff(y:$X$, x:$t$, pow:2) = -a X + b$ \ \
][
  $#diff(y:$X$, x:$t$, pow:2) = -a X$ \ \
][
  $#diff(y:$X$, x:$t$) = -a X$ \ \
][
  $#diff(y:$X$, x:$t$) = -b + a X $ \ \
][
  $#diff(y:$X$, x:$t$, pow:2) = -a #diff(y:$X$,x:$t$)$ \ \
][
  $#diff(y:$X$, x:$t$) = -a$
]]
== 'Exam'ple \ practice
#notes
June 2019
#place(dy:-6em,dx:5.5em,)[#image("img/255 exam Q1.png", height:120%)]
== 'Exam'ple \ practice
#notes
Jan 2008
#place(dy:-6em,dx:6em,)[#image("img/255 exam Q2.png", height:120%)]

