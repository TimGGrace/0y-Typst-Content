#import "../../../Templates/template.typ": *

#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
*Recap of Abstract Data Types and vectors*
#enum(
  [What is the difference between a static and dynamic data structure?],
  [What is an abstract data type?],
  [Give three examples of Abstract Data Types],
  [What is the difference between an abstract data type and a data structure?]
)


= Vectors Data Structure
#pause
//#place(center,dy:-8em,image(width:85%,"../../Images/L212 Spec.png"))

== Starter
#notes
*Recap of Abstract Data Types and vectors*
#enum(
  [What is the difference between a static and dynamic data structure? \
  #text(red)[Static - Fixed size known before being used. \ Dynamic - memory allocated at run-time. No fixed size. Uses the heap. Requires pointers/references to link memory]
],
  
  [What is an abstract data type? \
  #text(red)[Theoretical description of a composite data type. \ Defines operations on that ADT]
],
  
  
)

== Starter
#notes
*Recap of Abstract Data Types and vectors*
#enum(start:3,
  [Give three examples of Abstract Data Types \
  #text(red)[Stack, Queue, Graph, Rooted Tree, Dictionary, ...]],
  [What is the difference between an abstract data type and a data structure? \
  #text(red)[Data structure is an actual implementation of an ADT.]])

== Static vs. Dynamic
#text(size:24pt)[#text(fill:fadedBlue)[Static] data structures reserve a fixed amount of #bold[memory], and are stored in the stack. \
They result in structures with data that is directly accessible, which results in fast lookups with minimal overhead. \ \
#pause
#text(fill:orange)[Dynamic] data structures have no fixed size, and the memory grows and shrinks as items are added/removed. \
This means there is no wasted memory, and #bold[theoretically] no limit on how much can be stored. \
The trade-off is that memory is based on pointers, so data lookup takes longer, and includes additional memory to store these pointers.]

== What about a stack?
#mwb
For an integer stack data structure using an array and a pointer, is this #text(fadedBlue)[static] or #text(orange)[dynamic]?\ \
#pause
#text(red)[Static data structure, because the array is directly accessible with fixed size. \ \ However, the memory is technically allocated dynamically.]

== Vectors Recap
#notes
Find:
#enum(
  [$vec(1,2) + vec(3,-5)$ \ ` `],
  [$vec(2,2) - vec(1,-4)$ \ ` `],
  [$2 times vec(3,-8)$ \ ` `],
  [$vec(4,2) dot vec(1,5)$ \ ` `],
  [$abs(vec(10,24))$]
)
#pause
#place(left,dy:-12.1em,dx:8em,text(red)[#enum(
  [$vec(4,-3)$ \ ` `],
  [$vec(1,6)$ \ ` `],
  [$vec(6,-16)$ \ ` `],
  [$(4 times 1) + (2 times 5) = 14$ \ ` `],
  [$sqrt(10^2+24^2)=26$]
)])

== Programming Vectors
What options do we have if we want to add vectors to our programs? \
#text(24pt)[Have any of you done this in your NEA's already?] \ \
#pause
Pick one of the following options, then make sure each of the functions work!
#enum(
  [Using an array],
  [Using a structure],
  [Using classes]
)
#place(left, dy:-4em,dx:13em,
rect(inset:10pt, fill:BPTeal, radius:15pt,
  text(24pt)[Functions: \
  - Add two vectors
  - Subtract two vectors
  - Scalar multiplication
  - Dot product
  - Magnitude
  - Convex Combination
  - Angle between two vectors
]))

== Examples: Array
#place(left,dy:15pt,dx:0pt,text(size:24pt)[```cs 
static double[] addVec(double[] vec1, double[] vec2) {
  double[] result = new double[vec1.length];
  for (int i=0; i<vec1.Length; i++) {
    result[i] = vec1[i] + vec2[i];
  }
  return result;
}
static double[] multVec(double[] vec, double mult) {
  double[] result = new double[vec.Length];
  for (int i=0; i<vec.Length; i++) {
    result[i] = mult * vec[i];
  }
  return result;
}```])
#pause
#note([Why might I be making a new array in this last question?])