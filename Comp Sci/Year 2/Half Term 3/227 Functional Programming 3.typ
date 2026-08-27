#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
Given the program:
```hs
f [] = 0
f (x:xs) = g(x) + f(xs)
g x = 2*x + 1
h [] = 0
h (x:xs) = 1 + h(xs)
A x = f(x) / h(x)
```
#only(1)[
  #place( dy:-6em, dx:12em,
    rect(fill:blue.lighten(60%), stroke: 1pt, inset:15pt, radius: 20pt)[
      Evaluate \ ```hs A [3, 4, 5, 6]```
    ]
  )
]
#only(2)[
  #place( dy:-8em, dx:4em,
    rect(fill:blue.lighten(60%), stroke: 1pt, inset:15pt, radius: 20pt)[
      Evaluate \ ```hs A [3, 4, 5, 6]
       = f([3, 4, 5, 6]) / h([3, 4, 5, 6])
       = (g(3) + f([4, 5, 6])) / (1 + h([4, 5, 6]))
       ...
       = (7+9+11+13+0)/(1+1+1+1+0)
       =40/4
       =10```
    ]
  )
]
= Functional Programming 3
#note[Practice, Practice, Practice!]

#MWBQ(title: "Set Theory Practice",
  ([List the members of the set $ {x^2 | x in ZZ, 2 <= x <= 6} $],[$ {4, 9, 16, 25, 36} $]),
  ([What is the cardinality of the set $ {1, 2, 3, 4} $],[$ 4 $]),
  ([What is the Cartesian product, $A times B$ where $ A = {a}, B = {1, 2, 3} $],[$ {(a, 1), (a, 2), (a, 3)} $]),
  ([Set $A$ is the set of all horizontal pixel ordinates and set $B$ is the set of all vertical pixel ordinates.  What does the Cartesian Product of $A times B$ represent?],[The set of all $(x, y)$ coordinates.]),
  ([Set $A$ is the set of all airlines in the world and $B$ is the set of all airports.  What does the Cartesian product $A times B times B$ represent?],[The set of all possible journeys by aeroplane])
)

= Questions on Functional Programming
#MWBQ(title:"Questions on Functional Programming",
([What are the 4 required properties of a first class object?],[1. Can be used in expressions
2. Can be assigned to a variable
3. Can be an argument to a function
4. Can be returned from a function call
]),
(text(22pt)[Which of the following is not a required property of a first class object?
1. Can be stored in a list
2. Can be assigned to a variable
3. Can be returned from a function
4. Can be an argument to a function
5. Can be used in expressions ],[$ 1 $]),
([What is partial function application?],[Applying a function to some but not all of its arguments. This returns a function expecting the next argument.
])
)
= Higher Order Functions
#MWBQ(title:"Higher Order Functions",
([Evaluate: \
```hs square x = x * x
map square [1,2,3,4]```],[```hs [1, 4, 9, 16]```]),
([Evaluate: \
```hs map (++ “!”) [“BAM”, “POW”, “WHAM”]```],[```hs ["BAM!","POW!","WHAM!"]```]),
([Evaluate: \
```hs filter (>4) [5,3,6,2,-1]```],[```hs [5, 6]```]),
([Evaluate: \
```hs foldl (*) 0 [5,3,6,2]```],[```hs 0 ```]),
([Evaluate: \
```hs foldl (+) 0 (filter (>14) (map (*3) [3,4,5,6]))```],[```hs 33```]),
([Evaluate: \
```hs foldr (-) 1 [5,-3,-6,2]```],[```hs 3```])
)
== Haskel Programming Practice
#Comp
On BPCompSci:

*Practice: W200 - W203*

#text(orange)[#bold[Extension: W204 - 206]]