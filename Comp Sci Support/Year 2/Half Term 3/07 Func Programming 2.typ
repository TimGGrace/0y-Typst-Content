#import "@preview/touying:0.5.5": *
#import "../../../Templates/Template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#mwb
1. Write a function in Haskell code called `multiply` that has two integer arguments and outputs the first times the second.
2. Write a function in Haskell code called `multiThree` that has 3 integer arguments and outputs the value of the arguments multiplied together
3. Given the function `fact`: \ `    fact 0 = 1` \	`    fact n = n * (fact (n-1))` \ \  Explain the substitutions for the function call:	\ `           fact 4`

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
1. `head [1,2,3,4]` \
#uncover("2-")[`    = 1`]
2. `head [4,10,9]` \
#uncover("3-")[`    = 4`]
3. `head [[2,3],4,5,6]` \
#uncover("4-")[`    = [2,3]`]
4. `head (head [[2,3],4,5,6])` \
#uncover("5-")[`    = 2`] 

== head
#notes \
The haskell function ‘head’ returns the first element of the list. \ \ [Warning, this may be a list!]

== Haskell `tail`
#mwb
What do we think ‘tail’ is doing?
1. `tail [1,2,3,4]` \
	#uncover("2-")[`    = [2,3,4]`]
2. `tail [4,10]` \
	#uncover("3-")[`    = [10]`]
3. `tail [[2,3],4,5,6]` \
	#uncover("4-")[`    = [4,5,6]`]
4. `tail (tail [[2,3],4,5,6])` \
  #uncover("5-")[`    = [5,6]`]
== tail
#notes \ 
The haskell function ‘tail’ returns the everything after the first element of the list. 

[Warning, will be a list, even if it’s one item!]

== Haskell `null`
#mwb
What do we think ‘null’ is doing?
1. `null [1,2,3,4]` \
	#uncover("2-")[`    = false`]
2. `null []` \
	#uncover("3-")[`    = true`]
3. `null ( head [[2,3]] )` \
	#uncover("4-")[`    = false`]
4. `null ( tail [[2,3]] )` \
	#uncover("5-")[`    = true`]

== null
#notes
The haskell function ‘null’ returns the true if the \ list is empty (ie []), and false if the list has elements.

== Additional Tools
#notes
There are three additional things you’ll see. \ What do you think they’ll do?

`length x`	#uncover("2-")[→ 	gives the length of the list]

`value : list` 	#uncover("3-")[→	prepends the value to the list]

`listA ++ listB`		#uncover("4-")[→	appends listB to listA]

== What would the following code output?
#mwb
For list `xs = [3,5,2,8]` \ \
1. `length xs` \ \
2. `head xs` \ \
3. `tail xs` \ \
4. `6:xs` \ \
5. `xs ++ [2]` \ \
6. `xs`

== What does this function do?
#mwb \
`getItem (x:[]) = x
getItem (x:xs) = getItem xs` \ \

Show the steps of execution of sum applied to the list `[1,2,3]`

== What does this function do?
#mwb \
`sumup [] = 0
sumup (x:xs) = x + sumup (xs)` \ \

Show the steps of execution of sum applied to the list `[1,2,3]`

