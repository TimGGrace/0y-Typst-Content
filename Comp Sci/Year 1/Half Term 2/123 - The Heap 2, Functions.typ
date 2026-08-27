#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Starter
#mwb
Categorise the following declarations into *primitive variables* and *object reference variables*
#list(
  [```cs int myNum;```],
  [```cs string yourName;```],
  [```cs int[] vector;```],
  [```cs bool torpedoFired;```],
  [```cs List<string> shopping;```],
  [```cs double numOfDucksInRow;```]
)
#only(2)[
  #place(center,dx:-12em,dy:-7.5em,rect("P",width:30pt,height:30pt,fill:orange,stroke:1pt))
  #place(center,dx:-12em,dy:-3.6em,rect("P",width:30pt,height:30pt,fill:orange,stroke:1pt))
  #place(center,dx:-12em,dy:-0.9em,rect("P",width:30pt,height:30pt,fill:orange,stroke:1pt))
  #place(center,dx:-12em,dy:-6.2em,rect("O",width:30pt,height:30pt,fill:blue,stroke:1pt))
  #place(center,dx:-12em,dy:-2.2em,rect("O",width:30pt,height:30pt,fill:blue,stroke:1pt))
  #place(center,dx:-12em,dy:-4.9em,rect("O",width:30pt,height:30pt,fill:blue,stroke:1pt))
  #place(left,dy:-6em,dx:14em,rect([Strings and arrays \ are technically \ objects],stroke:blue+3pt))
]

= The Heap
#note([Keywords:
`Memory allocation, Heap, Call Stack, Stack Frame, Dynamic, Static, Object, Primitive, Variable, Object Reference, Garbage Collector`])

== British Informatics Olympiad
#text(size:20pt)[
A fun, but very challenging programming competition. Can be completed in any programming language. \
$3$ hours, $3$ problems.
#place(left,dy:15pt,rect(fill:rgb(200,200,200),inset:10pt,text(size:20pt)[Each letter in the alphabet can be given a value based on its position in the alphabet, A being 1 through to Z being 26. Two letters can produce a third letter by adding together their values, deducting 26 from the sum if it is greater than 26, and finding the letter whose value equals this result. 

A simple encryption scheme for a string is as follows. Working from left to right, after leaving the leftmost character alone, each character is replaced with the character produced by adding it to the character to its immediate left. 

For example: 
The string ENCRYPT goes through the steps ENCRYPT → ESCRYPT → ESVRYPT → ESVNYPT → ESVNMPT -> ESVNMCT -> ESVNMCW 
]))
#place(left,dy:15.8em,text(size:24pt,[To participate, you must have completed at least one question from last year's paper. More information on GClassroom, or email Isabel (imc\@barton.ac.uk)]))]

== The Heap
As *objects encapsulate multiple* pieces of *data*. They are *dynamically allocated memory* on the heap. \ \
#text(fill:green,bold["A relatively unstructured pool of memory ready to use for storing data for objects"]) \ \
When a new object is created on the heap, a *reference* to that object is returned in the code:
```cs 
List<int> shopping;
shopping = new List<int>();```

== In pairs, discuss:
#mwb
#enum(
  [What is the difference between an *object* and an *object reference*?],
  [What is the difference between an *object reference variable* and a *primitive variable*?]
)

== Programming Starter
#notes
Write as much information as you can remember:
#enum(
  [What is a subroutine?],
  [What is a built-in function?]
)
== Programming Starter
#notes
1. What is a subroutine?
- A self-contained block of code which itself has an identifier
- It can be called from other parts of the code. A call to a subroutine is a statement in its own right.
- They may have parameters and local variables
- They may return a value in the code

== Programming Starter
#notes
2. What is a built-in function?
- A subroutine which returns a value in the code
- It is defined as part of the programming language (or a standard library of functions)
- Eg:
  - string functions like `.ToUpper()` and `.Substring()`
  - `Console.ReadLine()`

== Custom Functions
#notes
*A function is a subroutine that returns a value* \ \
`WordInCaps = Word.ToUpper();
FirstLetter = Word.Substring(0,1);` \ \
Built in functions are useful, they let us use things we often need without having to re-type the whole process again. \
They're a *very* useful part of the abstraction process.

== Functions in C\#
#notes
Let's annotate a function! \ \
```cs 
static bool isPrime(int toCheck) {
  for (int i=2; i<toCheck; i++){
    if (toCheck % i == 0) 
      return false;
  }
  return true;
}
```

== Functions in C\#
#notes
Let's annotate another function! \ \
#text(size:24pt)[```cs 
static void Main(string[] args) {
 Console.Write("Enter miles travelled: ");
 double milesTravelled = double.Parse(Console.ReadLine());
 Console.WriteLine(CKilo(milesTravelled) + "km");
}

static double CKilo(double miles) {
  double result = miles * 1.6;
  return result;
}
```]

== What's the point?
```cs 
static double CKilo(double miles) {
  double result = miles * 1.6;
  return result;
}
```
#mwb
In pairs, on MWB:
- Why might we use a function instead of a procedure?
- Should we always use functions? Why or why not?

== Your Turn
#Comp
On BPCompSci: \
*W110 - C\# Functions*

