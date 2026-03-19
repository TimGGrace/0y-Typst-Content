#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title:"R116 - Assembly")

== Subtype Polymorphism is when:
#mwb
#enum(numbering:"A.")[
  You only have to define a function/procedure once in the parent class. A derived class takes the form of the parent when calling the procedure/function
][
  A function/procedure in a derived class has the same name but different implementation as a function/procedure in the parent class
]

== Complete the missing parts
#mwb
#text(20pt)[```cs public class Shape {
  public virtual double GetArea() {
    return 0;
  }
}

public class Circle : Shape {
  private double radius;
  public Circle(double inR) { radius = inR; }
  
  public override double GetArea() {
    return radius * radius * Math.PI;
  }
}```
]
#only(1)[
  #place(dy:-12em,dx:85pt)[#rect(fill:red,stroke:1pt,[`__1__`])]
]
#only("1-2")[
  #place(dy:-3.5em,dx:85pt)[#rect(width:80pt,fill:green,stroke:1pt,align(center)[`__2__`])]
]
#only(3)[]

== Correct subtype polymorphism: True or False?
#mwb
```cs public class SuperClass {
  public virtual void DoIt() {
    Console.WriteLine("SuperClass");
  }
}
public class SubClass : SuperClass {
  public void DoIt() {
    Console.WriteLine("SubClass");
  }
}```
#only(2)[
  #place(dy:-5em,dx:20em)[#rect(fill:red,stroke:1pt,inset:10pt,text(32pt)[False:\ Missing `override`])]
]

= Abstract Methods and Classes
#note[Keywords: `Inheritance; Subtype Polymorphism; Override; Abstract Method; Abstract Class; MustOverride; MustInherit; Implement; Instantiate; Multiple Inheritance;`]

== Abstract Method
#notes
Definition: \
A method which has a name, parameter list (and return type), but #bold[no code body].

It's #bold[interface] has been created, but not its #bold[implementation].#pause

It's abstract. It's the _concept_ of a function.#pause

This method #underline[must] be overriden in child classes.

== Abstract Class
#notes
Definition:
A class that cannot be instantiated.#pause

Any class with abstract methods *must* also be abstract. #pause

It's abstract, it's the _concept_ of a class. \ Just like `Shape` was.

== Example
```cs public abstract class Dinosaur {
  protected string name;
  public abstract void SayMyName();
}

public class Brontosaurus : Dinosaur {
  public override void SayMyName() {
    Console.WriteLine($"{name} the Bronto here, RAWR!");
  }
}```
#only(2)[
  #discuss
  #place(dy:-8em,dx:18em)[#rect(fill:fadedBlue.lighten(40%),stroke:1pt,radius:15pt,inset:10pt)[
    Discuss
    1. Why can't we make objects \ from an abstract class?

    2. What's the purpose of \ abstract classes?
  ]]
]

== UML Diagrams
In order to indicate that something is abstract, we simply mark it in italics.

EG:
#grid(columns:(1fr,1fr),
table(columns:(150pt),
align(center)[_Animal_],[` `],[_+ Eat()_],
),
table(columns:(150pt),
align(center)[Lion : Animal],[` `],[\+ Eat() \ \+ Roar()],
)
)
#place(dy:-3em,dx:15.6em,simple-arrow(fill:white,stroke:3pt,arrow-height:10,arrow-width:10,end:(-9.2em,0em)))

== You Try!
#Comp
*W132 - C\# Abstract Methods and Classes* on BPCompSci
#v(3cm)
#text(purple)[#bold[Extension:] Add a #text(fadedBlue)[`Circle`] class to the program.]

