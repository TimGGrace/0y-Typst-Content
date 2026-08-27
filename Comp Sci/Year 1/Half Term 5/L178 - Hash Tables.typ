#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#brainscape(title:"B5")

== Starter
1. Collect your phones and return to your desks.#pause
2. Place your phones into phone holders according to the following algorithm:
#align(center)[`holder = (length of name % 30) + 1`]
Use your full name.

= Hash Tables
#note[Keywords: `Hash function; key; index; value; ADT; dictionary; collision; chaining; open addressing; rehashing; key-value pair;`]
#only(2)[#place(top+center,dy:-2em,)[#image("img/178 spec.png",height:130%)]]

== Hashing Functions
#notes
Hashing is the process of *converting data of an arbitrary \ length into data of a fixed length*. It is #bold[not reversible.]

#uncover("2-")[
  They are used for hash tables (covered this lesson), \ but the are also used for:
  - Checksums (eg. on barcodes)
  - Storing passwords (eg. bcrypt)
  - Digital signatures (eg. SHA-2)
  - Pseudo-random number generators
]

#uncover(3)[
  
  #place(dy:-8em,dx:10em,)[
    #rect(fill:red.lighten(40%),stroke:1pt,inset:20pt,radius:25pt)[
      Apply the hashing \ function `hash = num % 11` to \ the following numbers:

      $ 78, 55, 35, 9, 29 $
  ]]
]

== Hash Tables
#notes
A hash table is an abstract data type that provides a mapping \ between _keys_ and _values_.#pause

It lets us store items in a way that makes searching/storing incredibly fast, regardless of the number of items we're already storing.#pause

EG:


#place(dy:0.5em,)[#table(columns:(auto,auto),
[Num],[Hash],
$78$,$1$,
$55$,$0$,
$35$,$2$,
$9$,$9$,
$29$,$7$)
]#pause

#place(dy:0.5em,dx:7.5em)[
  #align(center)[#table(columns:range(11).map(_=>50pt),
  table.cell(colspan:11)[Hash Table],..range(11).map(i=>[#i]),
  [55],[78],[35],[],[],[],[],[29],[],[9]
  )]
]#pause

#place(dy:4.2em,dx:8em,)[
  What is happening here?

  Are there any issues we can forsee?
]

== Hash Tables
#notes
#only("1-2")[#place(dy:1em,dx:9em)[
  #align(center)[#table(columns:range(11).map(_=>50pt),
  table.cell(colspan:11)[Hash Table],..range(11).map(i=>[#i]),
  [55],[78],[35],[],[],[],[],[29],[],[9]
  )]
]]
#only("3-")[
  #place(dy:1em,dx:9em)[
  #align(center)[#table(columns:range(11).map(_=>50pt),
  table.cell(colspan:11)[Hash Table],..range(11).map(i=>[#i]),
  [55],[78],[35],[],[],text(red)[60],text(red)[83],[29],[],[9],text(red)[10]
  )]]
]

We can add items \ quickly, by just\ applying the hash\ function as before.#pause

Add $60, 10, 83$ and #only(2)[$34$]#only("3-")[#text(red)[$34$]] to the list.

#only("4-")[
  When two items share a hash, this is called a *collision*, and there are three common ways of dealing with this:
]
#place(dy:0.5em,)[#only("5-")[- Rehashing]
#only("6-")[- Chaining]
#only("7-")[- Linear Probing]]

== Rehashing
#notes
A processor costly task, but we could create a new, larger array \ and rehash all elements with a new hashing algorithm.

That way all current values will be in their own unique location.

== Chaining
#notes
Rather than storing an individual item in an index, we could\ store a *List* of items at each index.

This would mean that every item is stored in the right place, but then we'd need to perform a linear search on the list in that location.#pause

In the worst case, this will involve just performing a linear search...


== Linear Probing
#notes
We could instead store the element in the next available space.

We'd then need potentially search multiple spaces to find it in this instance.

We'd also need to make sure to leave a marker when we remove an element.

#only(2)[
 #align(center)[#table(columns:range(11).map(_=>50pt),
  table.cell(colspan:11)[Hash Table],..range(11).map(i=>[#i]),
  [55],[78],[35],text(red)[34],[],[60],[83],[29],[],[9],[10]
  )] 
]
#only(3)[
 #align(center)[#table(columns:range(11).map(_=>50pt),
  table.cell(colspan:11)[Hash Table],..range(11).map(i=>[#i]),
  [55],[$-->$],[35],[34],[],[60],[83],[29],[],[9],[10]
  )] 
]
#only(4)[
 #align(center)[#table(columns:range(11).map(_=>50pt),
  table.cell(colspan:11)[Hash Table],..range(11).map(i=>[#i]),
  [55],[75],[35],[34],[],[60],[83],[29],[],[9],[10]
  )] 
]

== Example
#place(dy:-4em,dx:1.2em,right,rect(height:120%,stroke:0pt)[#text(17pt)[
  #align(left)[#table(columns:(50pt,auto),
  [0],[Fuel],
  [1],[Milk],
  [2],[Rigid],
  [3],[Responsible],
  [4],[Veil],
  [5],[Pollution],
  [6],[Daily],
  [7],[Regret],
  [8],[Breakable],
  [9],[Imminent],
  [10],[Decision],
  [11],[Suggest],
  [12],[Bless],
  [13],[Outstanding],
  [14],[Same],
  [15],[Discreet],
  [16],[Rail],
  [17],[Record],
  [18],[False],
  [19],[Space]
  )]
]])#pause
The hashing function for this table is:

`Sum of letter values % 20`

Where a = 0, b = 1, ... z = 25#pause

Where should 'Bless' go?#pause
#place(dx:21em,dy:-1.6em,text(red,80pt)[$==>$])#pause

Searching for an item in a hash table involves \ re-applying the hash, and checking that location.

#Worksheet()[On BPCompSci: \ *W137 - C\# Dictionaries*]