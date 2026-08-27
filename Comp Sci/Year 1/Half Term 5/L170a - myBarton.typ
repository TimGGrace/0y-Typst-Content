#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title:"R118 - Binary, Assembly")

== myBarton
#GClass
We're going to replace Studio and Focus, and Facebook.\
*L172 worksheet* on Classroom.

Create an #bold[array of strings] to store the names of people in your social network. Each person has a number, which is the index of the position they are stored in. Then choose:
#grid(columns:(1fr,1fr),
text(20pt)[
  Storage Options:
  1. Adjacency Matrix
  2. Adjacency List
],
text(20pt)[
  Functions to make:
  1. _MakeFriends(int, int)_
  2. _CheckFriendship(int, int)_
  3. _FindIndex(string)_
])


*EXT:* Write a function to test if two students have a mutual friend.

== myBarton
#GClass
#text(28pt,purple,bold[Extensions:])
- Write a function to test if two students have a mutual friend.
- Input validation using exception-handling. Throw a new _MyBartonException_ if someone tries to be friends with themselves
- Break friendship
- Program the other option; Which is easier to program with? 
- Can you test, given a number n, if there is a path between two students of <= n edges.

#Worksheet(title:"Programming Catch-up",[On BPCompSci \ *W133 - C\# Recursion*])