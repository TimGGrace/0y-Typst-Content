#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)

#weeklyReview(title:"R114 - OOP 1")

== Starter
#mwb
For the following statements, determine whether they are true or false:
1. The Private access modifier means that the variable/method can only be accessed anywhere within the current C\# project. #only(2)[#text(red)[False]]

2. The call stack contains a stack frame for each procedure and function in the code. #only(2)[#text(red)[False]]

3. An implicit or default constructor is created automatically when the programmer does not make one themselves. #only(2)[#text(red)[True]]

= Inheritance
#pause
#place( dy:-8em,dx:15em,
  image("img/155 spec.png")
)

== Inheritance
#notes
Inheritance is the act of having a class *inherit* all of the \ proprties and behaviours of another class.#pause

It lets us re-implement code, without re-writing it!

Why might that be useful?#pause

1. Time
2. Easier to read
3. Teamwork
4. Futureproofing

== Mathematical Inheritance
#mwb
Let's look at shapes, which we #bold[should] all be comfortable with. How would you sort them? I want to think about 'X is a type of Y' relationships.

#grid(columns:(1fr,1fr,1fr,1fr),inset:10pt,
[Square],[Circle],[Rectangle],[Triangle],
[Parallelogram],[Rhombus],[Kite],[Trapezium],
[Quadrilateral],[Elipse])

== UML Inheritance
With the shapes from earlier, we could construct the following \ UML diagram:
#let properties = (width:150pt,height:40pt)

#place()[#diagram(
  
  node-stroke: 1pt,
  node((0,0),[Shape],name:<A>,..properties),
  node((-1,0.5),[Round],name:<B>,..properties),
  node((1,0.5),[Quadrilateral],name:<C>,..properties),
  node((1,0),[Triangle],name:<D>,..properties),
  node((-1.5,1.2),[Circle],name:<E>,..properties),
  node((-0.5,1.2),[Elipse],name:<F>,..properties),
  node((1,1.6),[Kite],name:<G>,..properties),
  node((1.5,1.2),[Rectangle],name:<H>,..properties),
  node((1.5,2),[Square],name:<I>,..properties),
  node((0.5,1.2),[Parallelogram],name:<J>,..properties),
  node((0.5,2),[Rhombus],name:<K>,..properties),


  edge(<A>,<C>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.3))),
  edge(<A>,<B>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.3))),
  edge(<A>,<D>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.3))),

  edge(<B>,<E>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.46))),
  edge(<B>,<F>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.41))),

  edge(<C>,<G>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.28))),
  edge(<C>,<H>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.47))),
  edge(<C>,<J>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.42))),
  edge(<H>,<I>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.48))),
  edge(<J>,<K>,marks:((inherit:"solid",size:20, fill:fadedYellow,stroke:1pt),(inherit:"bar",size:7, fill:black,stroke:1pt,pos:0.48)))
)]#pause
#place(dy:8em,dx:-1em)[Note: That empty arrow is the symbol used for \ *inheritance* in UML diagrams.]
== Example Time!
Let's say we want to make three different things turn up on our screen:
1. A Player.
2. Enemies.
3. Collectibles

We could code each of these with a `Draw()`, as well as positions. #pause

If we wanted to change the program later, to store 3D coordinates, we'd need to update every one of these classes.

We'd also have to do massive amounts of re-coding if we wanted to move to a different output system (EG. MonoGame, WinForms, Maui)

== The Solution
#notes
The solution is to have a *parent class* called `Entity` that will store \ the basic location and `Draw()` functions, and then write dedicated code for the remaining features of the other _types_ of `Entity`. #pause

1. Let's draw the UML diagram. #pause

2. Let's code it!

== To Recap
#notes
1. *Inheritance*
  - Allows for sharing information/methods between classes.
  - Each class can only inherit from *one* other class \ (aka the parent / superclass)
  - a class can be inheritted by any number of classes \ (aka children / subclasses)#pause
2. *Access Modifiers*
  - *public* (+) Accessible anywhere within the program.
  - *protected* (\#) Accessible in the class and *derived classes*.
  - *private* (-) Accessible *only* within the defining class.

== Practice Time!
#Comp
*W130 - C\# Inheritance* from BPCompSci
#v(3cm)
#text(purple)[#bold[Extension:]
Create your own custom Exception called `AccountWithdrawalException`. It should inherit from the `Exception` base class. Pass in a reference to the account owner in the constructor, and add a `getOwnerName()` function. Test that exception.]