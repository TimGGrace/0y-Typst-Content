#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
1. What is the difference between an object and an \ object reference?
#uncover(2)[
  #text(red,20pt)[
  An object stores actual data in the heap, whereas an object reference is a memory reference value stored in a variable, which points to an object stored in the heap.
  ]
]

2. Give an example of C\# code that creates a new object.
#uncover(2)[
  #text(red)[
  ```cs List<int> nums = new List<int>();```
  ]
]
3. How does the Call Stack grow and shrink in size during run time?
#uncover(2)[
  #text(red,20pt)[
Grows with a stack frame when a new subroutine is called. Shrinks when a subroutine ends
  ]
]

== Starter 2
#mwb
1. What are the *properties* of a duck?
  - Not just physical appearance

2. How could you represent this in a C\# structure?

3. What are the *behaviours* of a duck? What can it do?

#text(purple)[#bold[EXT:] What are the differences between a #bold[structure] and a #bold[class]]

= Object-Oriented Programming
#note[Keywords: `Programming paradigm; Object; Class; Instantiation; Attribute; Property; Member variable; Method; Encapsulation;`
]

== Objects
#notes
*Objects* in the real world have:
- An identity
- Attributes (measurable things)
- Behaviours (actions it can take) #pause

Objects in a program will have the same!

== Classes
A class can be thought of as a blueprint for a related group of objects (eg. ducks!)

It exists in the code written by the programmer.
#grid(columns:(1fr,1fr))[
It needs to specify:
- The identifier for the class / group
- Properties/Attributes to store
- Methods/Behaviours to call
][
  EG: ```cs class Duck {
    ConsoleColor colour;
    double Weight, QuackVolume;
    int Age;
    public void Swim() {...}
    }```
]
== Encapsulation
#notes
Encapsulation is: 
1. *combining properties and methods* together into an object #pause
2. being able to *restrict access* to an object’s state/behaviour.  #pause

Like a Pirate chest!
1. You want to be able to put things *in* the chest.
2. You want to be able to *lock* the chest, sometimes.


== Objects vs Classes
#notes
A *class* is the blueprint for the object. It's a template.

An *object* is an isntance of that class.

*Instantiation* is the process of creating an object from the class.

==
#align(center+horizon)[#text(36pt,orange)[#bold[Warning!]]

We are going outside of the class `Program`]


== Classes in C\#

asf