#import "../../../Templates/template.typ": *
#import "@preview/irif:0.0.2": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))


== Starter
#notes
The following tableau shows the result of performing the final \ iteration of the Simplex algorithm.

1. State the values of $P, x, y, z, r$ and $s$.
2. Explain how you can tell this is the final result tableau.

#grid(columns:(2fr,1fr),
table(columns:(2em,2em,2em,2em,2em,2em,3em,),
$P$,$x$,$y$,$z$,$r$,$s$,$"RHS"$,
$1$,$0$,$0$,$3$,$5$,$2$,$120$,
$0$,$1$,$0$,$1$,$0$,$3$,$30$,
$0$,$0$,$1$,$-1$,$2$,$-4$,$50$
),
only(2)[
  #text(red)[
    $
    P &= 120,quad quad 
    x = 30, \
    y &= 50 quad 
    r, s, z = 0
    $
    $x, y, z >= 0$ so optimal solution.
  ]
]

)

== Starter
#notes
The following tableau shows the result of performing the final \ iteration of the Simplex algorithm.

State the values of $P, x, y, z, r$ and $s$.

#grid(columns:(2fr,1fr),
table(columns:(2em,2em,2em,2em,2em,2em,3em,),
$P$,$x$,$y$,$z$,$r$,$s$,$"RHS"$,
$1$,$0$,$0$,$0$,$5$,$2$,$100$,
$0$,$1$,$0$,$1$,$0$,$3$,$20$,
$0$,$0$,$1$,$0$,$2$,$-4$,$30$
),
only(2)[
  #text(red)[
    $
    P &= 100,quad 
    x +z = 20, \
    y &= 30 quad quad
    r, s = 0
    $
  ]
]

)

== Recap
#notes
`Maximize
  P = 2x + 3y
Subject to
  x + 2y ≤ 40
  3x + y ≤ 50
  x ≤ 15
  x, y ≥ 0
`
1. Convert to equalities
#uncover("2-")[2. Draw the tableau]
#uncover("3-")[3. Complete 1 iteration of the simplex algorithm]
#uncover("4-")[4. Is this optimal?]

== You Try
#notes
1. Set up the initial tableau for:
`Maximize
  P = 4x + 5y + 4z
Subject to
  x + 3y + z ≤ 20
  x - 2y + z ≤ 60
  x + z ≤ 10
`
2. Complete two iterations of the Simplex algorithm
3. State the values of all basic variables.
4. Explain what the equation $x + z = 10$ indicates about your solution.

== Reformulating to avoid 2-stage
#red-book
Reformulate the following so that the 1 stage Simplex \ algorithm can be applied

#grid(columns:(1fr,1fr),
[
  `Maximize
    P = 2x + y + 4z
  Subject to
    3x + 5y + z ≤ 50
    x ≥ 2
    y ≥ 3
    z ≥ 1
  `
],
[#only(2)[
  `x ≥ 2 -> x-2 ≥ 0 -> X ≥ 0
y ≥ 3 -> y-3 ≥ 0 -> Y ≥ 0
z ≥ 1 -> z - 1 ≥ 0 -> Z ≥ 0
x = X+2, y = Y+3, z = Z+1
P = 2(X+2) + (Y+3) + 4(Z+1)
> A+11 = 2(X+2) + (Y+3) + 4(Z+1)
3(X+2) + 5(Y+3) + (Z+1) ≤ 50
  `
]
#only(3)[
  `
  Maximize:
    A = 2X + Y + 4Z
  ST:
    3X + 5Y + Z ≤ 28
    X, Y, Z ≥ 0
  `
]]

)

== You Try
#notes
Reformulate the following so that the 1 stage simplex \ algorithm can be applied:

`Maximize
  P = 3x + 2y + z
Subject to
  2x + 3y ≤ 70
  4y + 5z ≤ 60
  x ≥ 1, y ≥ 4, z ≥ 2
`

== Special Case 2
#red-book
Consider: \
`Maximize
  P = 4x + 3y + z
Subject to
  3x + y ≤ 60
  x + y + z = 40
  y + 2z ≥ 10
  x, y, z ≥ 0
`
Instead of re-writing the second and third conditions, perform a substitution.

== You Try
#notes
`Maximize
  P = 5x + 4y + 2z
Subject to
  3x + 2y ≤ 20
  x + y + z ≤ 30
  2x + z = 16
  x, y, z ≥ 0
`