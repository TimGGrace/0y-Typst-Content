#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)
#let nonSpec(body) = text(black.lighten(50%))[#body]
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)

 

== Starter: Parts of an OS
#let big_properties = (radius:5pt,width:150pt,height:70pt,fill:orange.lighten(50%),stroke:1pt)
#let small_properties = (radius:5pt,width:70pt,height:50pt,fill:orange.lighten(50%),stroke:1pt)
#let Software_diagram = {
  diagram( spacing:0.75em,
  node-outset:-10pt,
  
node((0,0),rect(..big_properties)[],name:<A>),
node((-0.6,1),rect(..big_properties)[],name:<B>),
node((0.6,1),rect(..big_properties)[],name:<C>),
edge(<A>,<C>,"<|-"),
edge(<A>,<B>,"<|-"),
node((-0.5,2),rect(..small_properties)[],name:<D>, outset:-20pt),
node((0,2),rect(..small_properties)[],name:<E>,outset:-20pt),
node((0.5,2),rect(..small_properties)[],name:<F>,outset:-30pt),
node((1,2),rect(..small_properties)[],name:<G>,outset:-20pt),
edge(<C>,<D>,"<|-"),
edge(<C>,<E>,"<|-"),
edge(<C>,<F>,"<|-"),
edge(<C>,<G>,"<|-"),

)
}
#notes
#grid(columns:(1.2fr,1fr),
text(22pt)[
1. Match the keywords to the boxes in the diagram: 
  - Translators
  - Application Software
  - Libraries
  - Software
  - Operating Systems
  - Utility programs
  - System software
2. Describe two roles of an operating system

],
Software_diagram)


#MWBQ(title:"Prework Quiz",
([Define the term programming paradigm],[A way or style of programming]),
([Which of the following are programming paradigms\ `Imperative, Object-oriented, Instructional, Fundamental, Functional, Procedural, Artificial Intelligence, Declarative`],[`Imperative, Object Oriented, Functional, Procedural, Declarative`]),
([What is the difference between a high-level and a low-level programming language?],[One instruction in high-level maps to many in low-level. Low-level is close to the hardware, whereas high-level is abstracted from it.
]),
([Give *one* advantage of low-level programming languages],[Faster, Less resource used, closer to hardware
]),
([Give *one* advantage of high-level programming languages],[More achieved in less code, Easier for programmers to understand, Easier to debug, Processor-independent]),)


== Which types of language would you use to design:
#mwb

1. Microsoft Word

2. Database Development

3. Videogame

4. Computer Virus

Your *justification* is very important here. Make sure to include your reasoning!

== Translators
#notes
We need to understand the concept behind three different types \ of translator. You've already encountered one!
1. Assemblers

2. Interpreters

3. Compilers

== Assemblers
#notes
Assemblers turn *assembly code* into *machine code*.#pause

This is a *one-to-one* mapping, like looking things up in the dictionary.

== Interpreters
#notes
These translate *single lines* of high-level code\ into *machine code*.#pause

These lines are then *run*.#pause

They then translate the next line, and so on.#pause

While these may be a one-to-one mapping, they may not be.

These lines of machine code are not saved.

== Compilers
#notes
These translate the *entire program* into *machine code*.

They do *not* run the program.

They translate *behaviours*, rather than specific lines.

== Compilers v Interpreters
#notes
#text(20pt)[
#grid(columns:(1fr,1fr), column-gutter: 35pt)[Interpreters:
- Do not produce object code
- Interpret (and execute) code line by line
- #text(green)[Can start straight away]
- #text(green)[Only need to interpret the \ line being run]
- #text(red)[Need time to interpret as the program runs ... every time the program runs]
- #text(red)[Need original source code and programming environment every time]][
Compilers
- Do not execute the program
- #text(red)[Need a setup time to complete compilation]
- #text(green)[Creates an object file that can be run without original source code and programming environment]
- #text(green)[Object file (executable) will run quicker than interpreting]
- #text(green)[Can hide original source code]
]]

== Bytecode
#notes
Some compiled programming languages (e.g. C\#, Java) use translators which don’t immediately translate to machine code.#pause

Instead they translate to an intermediate language called bytecode.#pause

When the program is run, this bytecode is typically interpreted\*.
#v(3cm)
#text(18pt)[\*in practice, C\# and Java bytecode is compiled and run using a just-in-time (JIT) compiler, whereas Python bytecode is often interpreted by its higher-level virtual machine
]

== Why Bytecode?
This method is a compromise between *compilation* and *interpretation*. #pause

Bytecode has the advantage of being relatively *easy to interpret* for the hardware. #pause

But it is also *independent* of any particular processor instruction set – *portable*.

== Which translator should be used:
#mwb
1. Writing and debugging a complex program in a test environment
2. Writing a printer device driver
3. Finished version of a computer game
4. Complex calculator used by research scientists
5. Word processing program

6. Computer Virus


== True or False?
#mwb
“An interpreter converts code (one line at a time) from the source language into machine code, then executes it”

#only(2)[#text(red)[False, kind of.]]
#only("3-")[#text(red)[False, it interprets #bold[behaviour], but not the code directly.\ ]]
#only(4)[
An interpreter generally uses one of the following strategies for program execution:
#text(22pt)[- Parse the source code and perform its behaviour directly;
- Translate source code into some efficient intermediate representation and immediately execute this;
- Explicitly execute stored precompiled code made by a compiler which is part of the interpreter system.]
]

= Multi-dimensional Arrays
== Multi-dimensional arrays
#mwb
1. What are the differences between normal arrays and 2D arrays?
#uncover(2)[#text(red)[An extra dimension \ An additional index to address elements]]
2. Which index comes first, row or column?
#uncover(2)[#text(red)[Neither! (very common misconception)]]

== Example Array!

== Creating 2D Arrays
#notes

#only(1)[```cs int[,] grid = new int[4,4];
grid[2, 1] = 5```]
#only(2)[
  ```cs int[,] arr = new int[4, 4];
for(int first = 0; first < 4; first++)
{
    for(int second = 0; second < 4; second++)
    {
        arr[first, second] = first + second;
    }
}
```

What does this produce?
]

#only(3)[
  ```cs int[,] T = new int[4, 4];
for(int first = 0; first < 4; first++)
{
    for(int second = 0; second < 4; second++)
    {
        T[first, second] = first * second;
    }
}
```

What does this produce?
]

#let ext(body) = {text(purple)[#bold[#body]]}
== You Try
#Comp
Try in C\# filling a 5x5 array with random numbers \ between 1 and 9 and display as a table

#ext[Extension:] Make the random numbers between 1 and 999 and make the table line up nicely

#ext[Extension:] Modify your program to find the range, mean and mode of all the numbers in the grid

== Practice Time!
#Comp
On BPCompSci

*W121 – C\# 2D Arrays*