#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
1. Define domain and co-domain
2. What are the four ways a first class object can be used?
3. Explain how partial function application is used to evaluate the expression: `multiply 4 7`
4. Write a function in Haskell code called `multiThree` that has 3 integer arguments and outputs the value of the arguments multiplied together

= Functional Programming 2
#note([Lists and Higher Order Functions])

== Lists in Haskell
#notes
Lists in functional programs aren’t defined as a lot of elements, but rather a ‘head’ and ‘tail’

Eg: 	\ `      C#:       [1,2,3,4,5]` \
	`      Haskell:	[1,2,3,4,5] ⇒ 1 :  [2,3,4,5]`

There are a few functions you need to know: \
*head, tail, null*	
#pause
We're going to think about what they might do, then I'll get you to write down the proper definitions.

== Haskell `head`
#mwb
What do we think ‘head’ is doing?
#text(21pt)[
1. `head [1,2,3,4]` \
#uncover("2-")[`    = 1`]
2. `head [4,10,9]` \
#uncover("3-")[`    = 4`]
3. `head [[2,3],4,5,6]` \
#uncover("4-")[`    = [2,3]`]
4. `head (head [[2,3],4,5,6])` \
#uncover("5-")[`    = 2`] 
]
== head
#notes \
The haskell function ‘`head`’ returns the *first element* of the list. \ \ [Warning, this may be a list!]

== Haskell `tail`
#mwb
What do we think ‘tail’ is doing?
#text(21pt)[
1. `tail [1,2,3,4]` \
	#uncover("2-")[`    = [2,3,4]`]
2. `tail [4,10]` \
	#uncover("3-")[`    = [10]`]
3. `tail [[2,3],4,5,6]` \
	#uncover("4-")[`    = [4,5,6]`]
4. `tail (tail [[2,3],4,5,6])` \
  #uncover("5-")[`    = [5,6]`]]
== tail
#notes \ 
The haskell function ‘`tail`’ returns the *everything after* the first element of the list. 

[Warning, *will be* a list, even if it’s one item!]

== Haskell `null`
#mwb
What do we think ‘null’ is doing?
#text(22pt)[
1. `null [1,2,3,4]` \
	#uncover("2-")[`    = false`]
2. `null []` \
	#uncover("3-")[`    = true`]
3. `null ( head [[2,3]] )` \
	#uncover("4-")[`    = false`]
4. `null ( tail [[2,3]] )` \
	#uncover("5-")[`    = true`]]

== null
#notes
The haskell function ‘`null`’ returns the true if the \ list *is empty* (ie []), and false if the list has elements.

== Additional Tools
#notes
There are three additional things you’ll see. \ What do you think they’ll do?

#text(21pt)[`length x`	#uncover("2-")[\ → 	the number of elements in the list]

`value : list` 	#uncover("3-")[\ →	prepends the value to the list. Note the similarity between this and the `head:tail` notation.]

`listA ++ listB`		#uncover("4-")[\ →	appends listB to listA]]

== What would the following code output?
#mwb
For list `xs = [3,5,2,8]` \ \
#text(24pt)[#grid(columns:(1fr,1fr),
[1. `length xs` #uncover("2-")[#text(red)[`   4`]]\ \
2. `head xs` #uncover("3-")[#text(red)[`   3`]] \ \
3. `tail xs`  #uncover("4-")[#text(red)[`   [5,2,8]`]]
],[
  4. `6:xs`  #uncover("5-")[#text(red)[`   [6,3,5,2,8]`]]\ \
5. `xs ++ [2]`  #uncover("6-")[#text(red)[`   [3,5,2,8,2]`]]\ \
6. `xs` #uncover("7-")[#text(red)[`   [3,5,2,8]`]]])

]

== What does this function do?
#notes \
`getItem (x:[]) = x
getItem (x:xs) = getItem xs`

Show the steps of execution of `getItem` applied to the list `[1,2,3]`

== What does this function do?
#mwb \
`sumup [] = 0
sumup (x:xs) = x + sumup (xs)`

#only(1)[Show the steps of execution of `sumup` applied to the list `[1,2,3]`]
#only(2)[#text(red)[
`  = 1 + sumup [2,3]
  = 1 + 2 + sumup [3]
  = 1 + 2 + 3 + sumup []
  = 1 + 2 + 3 + 0
  = 6`
]]
== Practice time!
#Comp
On BPCompSci:

*W201 – Haskell – Functional Programming with Lists*

== Higher Order Functions
#notes
A higher order function is a function that takes a function as an argument, or returns a function (or possibly both).#pause

Higher order functions make it possible to define very general functions as well as some very complex behaviour.#pause

As functional programs are *stateless*, these high order functions are invaluable for parallel processing with *Big Data*.

== Higher Order Functions
There are several that we need to know for the exam, and several of them have C\# parallels!
#grid(columns:(1fr,1fr), column-gutter: 40pt,
text(24pt)[Note: These aren't all of them, and the C\# versions aren't necessary for your exams. It's just interesting #emoji.face],
table(columns:(150pt,150pt), inset:10pt,
[Haskell],[C\#],
[`map`],[`Select`],
[`filter`],[`Where`],
[`foldl`],[`Aggregate`],
[`foldr`],[])
)



== `map`
#notes
`map` accepts a function to apply and a list to apply it to.#pause

EG:
```Haskell
square x = x * x

map square [1,4,-5,8]
```
#pause
Returns ```Haskell [1, 16, 25, 64]```
#pause
#place(dy:-7.5em,dx:9em)[
  #rect(fill: blue.lighten(50%), stroke: 1pt, inset:15pt, radius: 20pt,text(24pt)[What do the following evaluate to?
1. ```Haskell calculation x = (x * 2) + 23
map calculation [12, 34, 100]```
2. ```Haskell map minimum  [[1, 3],[2, 7, 5],[9, 6]]  ```])
]

== Solutions:
1. ```Haskell calculation x = (x * 2) + 23
map calculation [12, 34, 100]

= [47, 91, 223]```
\ 
2. ```Haskell map minimum  [[1, 3],[2, 7, 5],[9, 6]]  

= [1, 2, 6]```

== `filter`
#notes
`filter` is a higher order function that uses a criterion to filter a list. Only elements that meet the criteria are kept. \
#uncover("2-")[EG:```Haskell filter odd [1, 2, 3, 4, 5, 6, 7]```\ ] 
#uncover("3-")[Returns ```Haskell [1, 3, 5, 7]``` \ ]

#uncover(4)[#place(dy:1.5em,dx:5em)[
  #rect(fill: blue.lighten(50%), stroke: 1pt, inset:15pt, radius: 20pt,text(24pt)[What do the following evaluate to?
1. ```Haskell filter (>5) [1, 2, 3, 4, 5, 6, 7, 8, 9]```
2. ```Haskell filter even [2, 4, 6, 11, 32]```])
]]
== Solutions:
1. ```Haskell filter (>5) [1, 2, 3, 4, 5, 6, 7, 8, 9]```
```Haskell      = [6, 7, 8, 9]```
2. ```Haskell filter even [2, 4, 6, 11, 32]```
```Haskell      = [2, 4, 6, 32]```

== `fold`
#notes
Fold is a process by which individual items from a collection are applied onto a *seed* using a provided function.

#uncover(2)[Haskell has two forms, `foldl` and `foldr`. Your exam only has `fold`, and it is the same as `foldl`.

#text(24pt)[Note: That's 'fold left' and 'fold right'. `foldl` starts from the 'left' side, `foldr` starts from the 'right' side.]]

== `foldl`
#notes
The higher order function takes a *combining function*, a *seed* and a *collection*.

EG: ```Haskell foldl (+) 0 [1, 3, 5, 5]```#pause
#list(marker:[ ])[
  ```Haskell = foldl (+) 1 [3, 5, 5] ```
][
  ```Haskell = foldl (+) 4 [5, 5] ```
][
  ```Haskell = foldl (+) 9 [5] ```
][
  ```Haskell = foldl (+) 14 [] ```
][
  ```Haskell = 14```
]

== `foldr`
#notes
This performs as `foldl`, but starts at the end of the list, rather than the head.

EG: ```Haskell foldr (+) 0 [1, 3, 5, 5]```#pause
#list(marker:[ ])[
  ```Haskell = foldr (+) 5 [1, 3, 5] ```
][
  ```Haskell = foldr (+) 10 [1, 3] ```
][
  ```Haskell = foldr (+) 13 [1] ```
][
  ```Haskell = foldr (+) 14 [] ```
][
  ```Haskell = 14```
]

== You Try
#notes
What do the following Haskell statements evaluate to?
1. ```Haskell filter even [1, 2, 3, 4, 5, 6, 7, 8, 9]```
2. ```Haskell div6 x = (mod x 6) == 0
filter div6 [12, 5, 23, 18, 100, 36]```
3. ```Haskell map abs [-1, 2, -3]```
4. ```Haskell foldl (-) 1 [10, 12, 14]```
5. ```Haskell foldr (++) "!" ["World", "Hello"]```

== Solutions:
#text(22pt)[1. ```Haskell filter even [1, 2, 3, 4, 5, 6, 7, 8, 9]
= [2, 4, 6, 8]```
2. ```Haskell div6 x = (mod x 6) == 0
filter div6 [12, 5, 23, 18, 100, 36]
= [12, 18, 36]```
3. ```Haskell map abs [-1, 2, -3]
= [1, 2, 3]```
4. ```Haskell foldl (-) 1 [10, 12, 14]
= -35```
5. ```Haskell foldr (++) "!" ["World", "Hello"]
= "!HelloWorld"``` ]
== Practice Time!
#Comp
On BPCompSci.com

*W202 - Haskell - Functional Programming with High Order Functions*