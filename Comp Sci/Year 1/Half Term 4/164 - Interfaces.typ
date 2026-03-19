#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#brainscape(title: "B4")

== Will this code compile? Explain.
#mwb
#only(1)[
  #text(22pt)[```cs class Program {
    static void Main(string[] args) {
      Stegosaurus steggy = new Stegosaurus(5);
      Console.WriteLine(steggy.age);
    }
  }
  public abstract class Dinosaur {
    public int age;
    public Dinosaur(int inAge) { age = 5; }
  }
  public class Stegosaurus : Dinosaur {
    public Stegosaurus(int inAge) : base(inAge) { }
  }```]
]
#only(2)[
 ```cs 
class Program {
  static void Main(string[] args) {
    Shape bestagon = new Shape(5);
    Console.WriteLine(bestagon.size);
  }
}
public abstract class Shape {
  public int size;
  public Shape(int initialSize) {
    size = 4;
  }
}
```
]
#only(3)[
  #text(20pt)[```cs
public abstract class User 
{
  public int priority;

  public abstract void authenticate() 
  {
    Console.WriteLine("Secure check in progress...");
  }

  public User(int initialPriority) 
  {
    priority = 0;
  }
}
```]
]
= Interfaces
#note[Keywords: `Interface; Abstract Method; Implement; Abstraction;`]
#only(2)[
  #place(dy:-6em,dx:0em)[#image("img/164 spec.png", width:100%)]
]

== Interfaces
#notes
#text(22pt)[An *interface* is a special data type which only \ contains methods *without code*.
- No Variables
- No code
- Just _interfaces_ for functions.#pause

A class cannot inherit from an interface, but it can *implement* it. *Implementing* has the same syntax as inheritance in C\#, but you can implement many interfaces.#pause

They're used to specify a set of behaviours that a collection of classes _must_ have.]

== An example!
#notes
Let's create, and annotate, an interface.

== UML Diagrams
On a UML diagram, we indicate *implementation* with a dashed line and 'regular inheritance' arrow.

== Why interfaces?
#notes
We've got two main benefits for interfaces:

1. Can write mutliple different implementations of the same interface.#pause 

2. Classes can implement behaviour for many sources

== Practice Time!
#Comp
Either:
1. *WX07 - C\# Interfaces Game*

2. Create your own! (As described below)
#place(dx:8em,)[#image("img/Inventory Diagram.png")]
#place(dy:15pt)[#rect(stroke:0pt)[
  #text(20pt)[Write code for part of an \ item/inventory system.

  For each item in the inventory, \ allow the user to _do \ something_ with it, \ depending on what \ behaviour it has.]
]]