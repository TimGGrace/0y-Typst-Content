#import "../../../Templates/template.typ": *
#import "@preview/irif:0.0.2": *
#import "@preview/pinit:0.2.2"
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))


== Key Assignment Review 44 - 
#notes

= Planes
#note[Not the fun kind #emoji.face.sad]

== What different questions can you be asked involving vectors and planes?

#grid(columns:(1fr,1fr),column-gutter: 10pt,
uncover("2-")[
  1. Equation of a Plane
  2. Angle between 2 vectors
  3. Intersection of two lines
  4. Angle between two lines
  5. Intersection of a Line and a Plane
  6. Angle between a line and a plane 
  7. Angle between two Planes
],
uncover(3)[
 8. Vector Equation of a Plane
 9. Vector / Cartesian Equation of a Line
 10. Vector product
 11. Distance from a point to a line
 12. Distance from a point to a plane
 13. Distance between  parallel lines
 14. Distance between skew line
])

== Which formulae do we get given?
#uncover("2-")[
  1. #pin(0)Equation of a Plane#pin(1)
  2. #pin(2)Cartesian Equation of a Line#pin(3)
  3. #pin(4)Vector product#pin(5)
  4. #pin(6)Distance between skew lines#pin(7)
  5. #pin(8)Distance from a point to a line in 2D#pin(9)
  6. #pin(10)Distance from a point to a plane#pin(11)
]
#let properties = (height:28pt,dy:-5pt, fill:red.transparentize(70%))
#place(dy:-5em,dx:18em,)[
#only(3)[
  #pinit-highlight(0,1, ..properties)
 $
   n_1 x + n_2 y + n_3 z + d = 0
 $ 
]
#only(4)[
  #pinit-highlight(2,3, ..properties)
 $
   frac(x - a_1, d_1) = frac(y - a_1, d_1) = frac(z - a_1, d_1)
 $ 
]
#only(5)[
  #pinit-highlight(4,5, ..properties)
  #let n_norm = $accent(n,hat)$
 $
   #bold[a] times #bold[b] &= mat(a_2 b_3 - a_3 b_2; a_3 b_1 - a_1 b_3; a_2 b_1 - a_1 b_2) \
   &= mat(delim:"|",#bold[i], a_1, b_1;#bold[j], a_2, b_2;#bold[k], a_3, b_3) \
   &= |#bold[a]||#bold[b]|sin theta #bold[#underline[#n_norm]]
 $ 
]
#only(6)[
  #pinit-highlight(6,7, ..properties)
  
 $
   mat(delim:"|",frac(#bold[d]_1 times #bold[d]_2,|#bold[d]_1 times #bold[d]_2|)dot (#bold[a]_1 - #bold[a]_2))
 $ 
]
#only(7)[
  #pinit-highlight(8,9, ..properties)
  
 $
   frac(|a x_1 + b y_1 + c|,sqrt(a^2 + b^2))
 $ 
]
#only(8)[
  #pinit-highlight(10,11, ..properties)
 $
   frac(|n_1 x_1 + n_2 y_1 + n_3 z_1 + d|,sqrt(n_1^2 + n_2^2 + n_3^2))
 $ 
]
]

== What formulae are not given?
#notes
#uncover("2-")[
  1. Angle between 2 vectors
  2. Intersection of two lines
  3. Angle between two lines
  4. Intersection of a Line and a Plane
  5. Angle between a line and a plane 
  6. Angle between two Planes
  7. Vector Equation of a Plane
  8. Vector Equation of a Line
  9. Shortest distance from a point to a line
]

== Practice Time!
#notes
Given: \ $quad quad &A(1,1,-1), B(3,2,-3), C(0,1,2), D(2,3,-4), \ &E(1,0,-5), F(1,0,-1), G(3, 1, 4), H(-2, 0, 5)$

1. Find the equation of the plane 𝜋 on which $A$, $B$ and $C$ lie.
2. Which of $D$, $E$, $F$, $G$ or $H$ lie on the plane $pi_1$?
3. In triangle $A B C$ find the angle $A accent(B,hat) C$
4. Find the vector equation of the line through $A E$
5. Find the Cartesian equation of the line through $B D$
6. Find the angle between the lines $A E$ and $B D$


== Solution
In general:
$T_A &= T_(A_"equib") + 7x quad quad T_B &= T_(B_"equib")- 9x$ \ \
At equilibrium: $T_(A_"equib") - T_(B_"equib") - 0.32g sin 30 = 0$ \ \
In general:
#place(dx:1em,)[$
  "using" F = m a quad quad quad quad quad quad quad\ 
  T_A - T_B - 0.32g sin 30 &= 0.32 dot.double(x) \
  (T_(A_"equib") + 7x) - (T_(B_"equib")- 9x) - 0.32g sin 30 &= 0.32 dot.double(x)\
  therefore cancel(T_(A_"equib") - T_(B_"equib") - 0.32g sin 30) + 7x + 9x &= 0.32 dot.double(x) \
  therefore 50 x = dot.double(x)
$
]