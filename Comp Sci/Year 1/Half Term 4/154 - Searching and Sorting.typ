#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

= Searching and Sorting
#only(2)[
  #place(dy:-8em)[#image("img/154 spec.png", height:130%)
  ]
  #place(dy:-2em,dx:19em,rect(stroke:1pt,fill:fadedBlue.lighten(50%),radius:15pt,inset:10pt)[Which algorithm here \ is the odd one out?])
]
#only(3)[
  #place(dy:-8em,dx:8em)[#image("img/154 meme.png")]
]

== Linear Search
#only("1-4")[#notes]
Steps involved:
1. Start at the beginning of the list.#pause

2. Compare each item in turn with the search element.#pause

3. If you reach the end of the list, it is not present.
#only(4)[#v(2cm)
The *-ar* on 'Linear' comes from the Ancient Greek. It's similar to our '-ish'.

Linear means 'like a line', or 'line-ish']
#only(5)[
  #mwb
  #bold[On your own:] \
  Write an pseudocode algorithm to find the 'Queen of Hearts' from an array called 'deck' that is not sorted.

  If found, set a Boolean 'itemPresent' to true. 
]

== Possible Algorithm
`
position <= 0
itemPresent <= false

Repeat
  If deck[position] = 'Queen of Hearts'
      itemPresent <= true
  
  position <= position + 1
  
Until position >= deck.Length
`

== Binary Search
#notes
Binary search is a faster option than Linear Search, \ but it *requires the list to be sorted*.#pause

Every time we perform a comparison, we can *half the search space*, eliminating half of the positions, rather than just one at a time.#pause

When you're left with a single item, if it's not what you're looking for then your target isn't in the list.

== Binary Search
#text(20pt)[With a sorted list:
1. Compare the item at the middle of the list with the search item.#pause
2. If it is what you were looking for, you are done. [Stop]#pause
3. If your list is a single item and it is *not* what you are looking for, the item isn't in the list. [Stop]#pause
4. If it is larger than the item you are looking for, repeat these steps ignoring all items in the list that are larger than the middle item.#pause
5. If it is smaller then you can repeat these steps ignoring all items smaller than the middle item.#pause
#mwb
#place(dy:2em)[*In Pairs* write an algorithm in pseudocode using binay search to find the number `10` from a sorted array called `numbers`. _Hint: use two index variables called upperBound and lowerBound_]
]
== Possible solution:
#text(20pt)[
  `
  lowerBound = 0
  upperBound = numbers.Length
  isFound = false

  while (lowerBound <= upperBound) AND (isFound = false)
    midpoint = (upperBound + lowerBound) / 2
    if numbers[midpoint] = 10
      isFound = true
    if numbers[midpoint] > 10
      upperBound = midpoint
    if numbers[midpoint] < 10
      lowerBound = midpoint
  `
]

== Bubble Sort
#notes
- Each pair of items are compared and if the first one is greater, \ the items swap.
- To swap two items in programming, you need an extra 'temp' variable to hold one item.
- The maximum number of passes will be one less than the number of items you have in your list. #pause
#let button = (inset:15pt,radius:10pt,stroke:1pt,fill:fadedBlue.lighten(60%))
#grid(columns:(1fr,1fr), row-gutter: 15pt,
rect(..button)[#link("http://www.youtube.com/watch?v=MtcrEhrt_K0 ")[Lego Bubble Sort]],
rect(..button)[#link("http://www.youtube.com/watch?v=lyZQPjUT5B4")[Dance Bubble Sort]],
rect(..button)[#link("http://www.youtube.com/watch?v=MU8tn11Nv5s ")[Minecraft Bubble Sort]],
rect(..button)[#link("http://www.youtube.com/watch?v=P00xJgWzz2c ")[Bubble Sort Tutorial]])

== Possible Algorithm for Bubble Sort
`
For passes <- 0 to (numbers.Length - 1)
  For position <- 0 to (numbers.Length - 1)
    If numbers[position] > numbers[position + 1] Then
      Temp <- numbers[position]
      numbers[position] <- numbers[position + 1]
      numbers[position + 1] <- Temp

    EndIf
  EndFor
EndFor
`#pause
#place(dy:-3em,dx:5em,rect(..button)[Possible Optimisations:
- After each 'pass', the inner loop can stop one term earlier.
- If no swaps are made, stop early.])

== Merge Sort
#notes
#grid(columns:(1fr,1fr), column-gutter: 15pt)[
- Repeatedly halve the unsorted list into $n$ sublists, each containing one element.

- Merge pairs of sublists to produce new sorted sublists.
- Repeat until there is only one sublist remaining. This will be sorted.][
  #image("img/154 merge.png", height:80%)
]

== Comparing Algorithms with Comparisons
We can compare the number of comparisons used as a measure of how fast an algorithm is. #pause

How many comparisons does bubble sort take for the following list:
$ 6 quad quad 2 quad quad 1 quad quad 4 $ #pause

What about Merge Sort?

== Your Turn:
Perform bubble sort and merge sort on the following list. For each algorithm, count the number of comparisons made.

$ 4 quad 7 quad 3 quad 1 quad 9 quad 5 quad 3 quad 2 $

== Practice Time!
#Comp
Write a program that allows a user to:
1. Perform a linear search on an array.
2. Bubble sort an array.
3. Binary Search an array.

#text(purple)[
  #bold[Extension:]
  1. Complete the merge sort question on GClassroom.
  2. Amend your program above to allow the user to perform merge sort.
  3. By using a global variable, amend your program to track the number of comparisons it performs, outputting those to the user as well.
]

== Recap
#notes
1. Find the errors in this Bubble Sort algorithm:
#text(22pt)[`For times <- 0 to N
  For Position <- 0 to N
    If A[times] > A[times + 1] Then
      Temp <- A[times]
      A[times + 1] <- Temp
      A[times] <- A[times + 1]
    EndIf
  EndFor
EndFor
`]
2. Describe two optimisations that could be made to make the Bubble Sort algorithm more efficient. Assume the errors above are fixed first.