#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#let diff(y: $y$, x: $x$, pow: 1) = {
if (pow==1) {$frac("d"#y,"d"#x)$}
else {$frac("d"^(#pow)#y,"d"#x^(#pow))$}}

== Examples
Verify that $ x = A t^2  + B t + C $ is a valid solution to 
$ dot.double(x) + 4 dot(x) = 8t + 10 $
By finding $dot(x)$ and $dot.double(x)$. Find the values of $A, B$ and $C$.
== 
#text(24pt)[$
  x = A t^2  + B t + C => dot(x) = 2A t + B, dot.double(x) = 2 A \
  therefore dot.double(x) + 4 dot(x) = 2A + 8A t + 4B = 8t+10 \
  therefore mat(8A; 2A+4B) = mat(8; 10) => mat(A = 1; B = 2) \
  C = "?"
\ \
  x = t^2 + 2t + c "satisfies the equation"
$]
But what about the general solution we were dealing with last time?

== Starter
#notes
Find the general solution to
$
  #diff(pow:2) - 3#diff() + 2y = 0
$
#only(2)[
#text(red)[$
  m^2 - 3m + 2 = 0 &=> m in {1, 2} \ \
  therefore y &= A e^x + B e^(2x)
$]]

= Investigating Non-Homogeneous Equations
#note[What to do when there's a right hand side. (Hint: Don't panic)]


== Changing the starter
#notes
What if the starter instead looked like this:
$
  #diff(pow:2) - 3#diff() + 2y = 2x + 7
$
#only(2)[Can you verify that $y = A x + B$ satisfies the equation, finding $A$ and $B$?]
#only(3)[#text(20pt)[$
  y = A x + B, #diff() &= A, #diff(pow:2) = 0 \
  therefore #diff(pow:2) - 3#diff() + 2y &= 0 - 3A + 2A x + 2B = 2x + 7 \
  2A x = 2x &=> A = 1 \
  -3A + 2B = 7 &=> B = 5 \
  therefore y = x + 5 "satisfies the equation."
$]]

== But can we go further?
#only(1)[What happens if we substitute $y = x + 5 + A e^x$ into
$ #diff(pow:2) - 3#diff() + 2y = 2x + 7 $

Since $A e^x$ was part of our general solution to the homogeneous.
]
#only(2)[
#text(red, 24pt)[$
  y = x + 5 + A e^x, #diff() &= 1 + A e^x, #diff(pow:2) = A e^x \
  therefore #diff(pow:2) - 3#diff() + 2y &= cancel(A e^x) - 3 -cancel(3A e^x) + 2x + 10 + cancel(2A e^x) \
  &= 2x + 7
$
The $A e^x$ cancels out! That's because it makes the DE equal to $0$.]

Your turn: try the whole general solution: \ $y = x + 5 + A e^x + B e^(2x)$]



== Creating our solutions
#red-book
When dealing with a non-homogeneous DE, our \ solution comes in three parts:
1. Particular Integral \ #uncover("2-")[#text(red)[sorts the RHS]]
2. Complementary Function \ #uncover("2-")[#text(red)[makes $0$]]
3. Initial Conditions \ #uncover("2-")[#text(red)[deals with unknowns]]
#only("3-")[
  #place(dy:-7.5em,dx:12em,text(150pt)[$}$])
  #place(dx:14.5em,dy:-6.2em)[General \ Solution]
]
#only(4)[
  #place(dy:-4.5em,dx:18em,text(150pt)[$}$])
  #place(dx:20.5em,dy:-3.2em)[Particular \ Solution]
]

== Picking the trial function
#text(26pt)[But that looks so difficult! How could we ever guess the Trial Function?#pause

Well, it looks a lot like the RHS, doesn't it... $ ...=2x + 7 quad -> quad y = A x + B $ #pause

I used a linear function because the RHS was linear. Can you guess what will happen if we try a quadratic, $y = A x^2 + B x + C$ instead?
]
== Particular Integrals
#red-book
#text(25pt)[You'll need three "trial functions" for this course.
#grid(columns:(1fr,1fr), row-gutter: 15pt,
[1. Polynomial RHS \ #text(red)[Match the order]],
uncover("2-")[2. Exponential RHS \ #text(red)[Match the power]],
uncover("3-")[3. Trigonometric RHS \ #text(red)[Match the frequency]])

#uncover(4)[Technically, you can see a mixture. \ If that happens, use a mixture too!

EG: $... = 2t + e^(3t) quad -> quad x = A t + B + C e^(3t)$]]

== What would you try?
#grid(columns:(1fr,1fr), row-gutter: 20pt,
[
  $ dot.double(x) + 3 dot(x) + x = e^(2t) $
], uncover("3-")[
  $ #diff(y:$P$,x:$q$,pow:2) - 5 #diff(y:$P$,x:$q$) - 24 P = sin(2q) $
],
uncover("2-")[#text(red)[$ x = A e^(2t) $]],
uncover(4)[#text(red)[$ P = A sin 2q + B cos 2q $]])

== Trial Function Trials
#red-book
As quick as you can, write down the \ trial functions for:
#grid(columns:(1fr,1fr), inset:10pt,
[$ ... = e^(3x) $

#uncover(2)[#text(red)[$ A e^(3x) $]]],
[$ ... = cos x $

#uncover(2)[#text(red)[$ A cos x + B sin x $]]],
[$ ... = 4 t + 3 $

#uncover(2)[#text(red)[$ A t + B $]]],
[$ ... = cos 2x + 3 sin 2x $

#uncover(2)[#text(red)[$ A cos 2 x + B sin 2 x $]]])

== An exception for next time
We won't practice it today, but we can run into the repeated-roots issue with our $e^(lambda x)$ terms in the trial function.

We solve it in exactly the same way, so you may end up with \ $A e^x + B x e^x + C x^2 e^x$ if you're *really* unlucky.

In general, you want to work out the Complementary Function first, and then a trial function afterwards. That way you can do it in one go.

== Finding the Particular Integral
Find the Particular Integral for:
#red-book
$
  dot.double(x) - 5 dot(x) + x = e^(2t)
$
#only(2)[
#text(red, 23pt)[$
  "TF": x = A e^(2t) &=> dot(x) = 2A e^(2t), dot.double(x) = 4A e^(2t) \
  therefore dot.double(x) - 5 dot(x) + x &= 4A e^(2t) - 10A e^(2t) + A e^(2t) = -5 A e^(2t) \
  -5 A e^(2t) = e^(2t) &=> A = -1/5 \
  therefore "PI": x = -1/5 e^(2t)
$]]

== Practice
#notes
Find the Particular Integrals for the following functions:
#text(22pt)[#grid(columns:(1fr,1fr), row-gutter: 10pt,
[$ #diff(pow:2) + 4 #diff() + 3y = 3x - 2 $

#uncover("2-")[#text(red)[$ y = x - 2 $]]],
[$ dot.double(x) - 2 dot(x) + 7x = 4e^t $

#uncover("2-")[#text(red)[$ x = 2/3 e^t $]]],
[$ #diff(pow:2) - 2 #diff() + y = 4 cos x $

#uncover("2-")[#text(red)[$ y = -2 sin x $]]],
[$ #diff(y:$P$,x:$q$,pow:2) - #diff(y:$P$,x:$q$) - 2P = 5 sin 2q $

#uncover("3-")[#text(red)[$ P = cos 2q - 2 sin 2q $]]],
[$ dot.double(x) - 7 dot(x) + 2x = t^2 - 7t + 2 $

],
uncover("3-")[#text(red)[$ x = 1/2 t^2 + 1/2$]])]

== The General Solution
#red-book
The General Solution is formed by adding the Particular \ Integral and Complementary Functions together.
$
  #diff(pow:2) + 4 #diff() + 3y = 3x - 2
$
#let PI = text(green.darken(50%))[$x - 2$]
#let CF = text(red)[$A e^(-x) + B e^(-3x)$]
#only(2)[
  #text(20pt)[#grid(columns:(1fr,1fr),column-gutter:10pt,[
    #text(red)[$
      "CF"&:m^2 + 4m + 3 = 0 \
      &=> m in {-1, -3} \
      &=> y = A e^(-x) + B e^(-3x)
    $]
  ],[
    #text(green.darken(50%))[$
      "PI"&: "try" y=A x+B \
      &=> "d"y = A, "d"^2y=0 \
      &therefore 0 + 4A + 3A x + 3B = 3x - 2 \
      &therefore A = 1, B = -2 \
    $]
  ])
  $
    therefore y = #PI + #CF
  $]
]
== Practice
#notes
Find the General Solutions for the following functions:
#text(22pt)[#grid(columns:(1fr,1fr), row-gutter: 10pt,

[$ dot.double(x) - 2 dot(x) + 7x = 4e^t $

#uncover("2-")[#text(red)[$ x = 2/3 e^t + e^t (A sin sqrt(6)t + B cos sqrt(6) t) $]]],
[$ #diff(pow:2) - 2 #diff() + y = 4 cos x $

#uncover("2-")[#text(red)[$ y = -2 sin x + A e^t + B t e^t $]]],
[$ #diff(y:$P$,x:$q$,pow:2) - #diff(y:$P$,x:$q$) - 2P = sin 2q $

#uncover("3-")[#text(red)[$ P = cos 2q - 2 sin 2q + A e^(-t) + B e^(2t) $]]],
[$ dot.double(x) - 7 dot(x) + 2x = t^2 - 7t + 2 $

#uncover("3-")[#text(red)[$ x = 1/2 t^2 + 1/2 + A e^(frac(7+sqrt(41),2)t)+ B e^(frac(7-sqrt(41),2)t) $]]],
)]