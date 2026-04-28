#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

= Vector Maths
#note[Make sure you have paper and a mini-whiteboard]

== Vectors
#notes
Used to store all kinds of information in the real world.

Often:
- Positions/Coordinates
- Speeds/Accelerations#pause
- User preferences(Recommendations)#pause
- Word relations (AI/LLM)

Ensuring we can perform the most common operations is key to programming them.#pause (You could also get asked to do it in the exam)

== Scalar product
#notes
The Scalar product is what we use to *scale* a vector.

It keeps the direction the same, but changes the size.

EG:
$
  3 times mat(2;1) &= mat(6;3) quad quad quad quad 1/5 times mat(2;1) = mat(0.4;0.2)
$
== You try!
#mwb
#grid(columns:(1fr,1fr),[
1. $
     2 times mat(4;2)
   $

2. $
     3 times mat(5;-4)
   $
],[
  3. $
     0.1 times mat(-2;20)
   $

4. $
     -5/4 times mat(8;-12)
   $
])


== Vector Combinations
#notes
Vectors can be combined by adding or subtracting them!

Adding them is the same as performing one movement, followed by the next.

Subtracting is the same as travelling in the *opposite direction* indicated by the vector.

EG:
$
  mat(2;1) + mat(0;3) = mat(2;4) quad quad quad quad quad mat(7;1) - mat(4;5)
$

== You try
#mwb
#grid(columns:(1fr,1fr),[
1. $
     mat(4;2) + mat(2;1)
   $

2. $
     mat(5;-4) + mat(1;1)
   $
],[
  3. $
     mat(-2;20) - mat(2;1)
   $
   
4. $
     mat(8;-12) + mat(-1;-4)
   $
])

== Magnitude
#notes
Sometimes we need to know the *size* of a vector. \ Not which way it points, but how long it is.

To do that, we just use *Pythagoras' Theorem*. If it's 3D, it's just longer...

EG:
$
  "size of" mat(3;4) = sqrt(3^2 + 4^2) = 5 quad   quad quad "size of" mat(1;3;-4) = sqrt(1^2 + 3^2 + (-4)^2) = sqrt(26)
$

== You try
#mwb
Find the size of:
#grid(columns:(1fr,1fr),[
1. $
     mat()
   $

2. $
     mat(5;-4) + mat(1;1)
   $
],[
  3. $
     mat(-2;20) - mat(2;1)
   $
   
4. $
     mat(8;-12) + mat(-1;-4)
   $
])