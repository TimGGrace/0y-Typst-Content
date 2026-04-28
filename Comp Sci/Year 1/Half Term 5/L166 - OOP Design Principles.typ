#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter - Suggest a suitable interface:
#mwb
#place(dy:1em)[#text(18pt)[```cs public class BasicFood : IConsumable {
    private bool consumed = false;
    private int hpGainedWhenConsumed;
    public BasicFood(int inHpGained) {
        hpGainedWhenConsumed = inHpGained;
    }
    public int consume() {
        if (!consumed) {
            consumed = true;
            return hpGainedWhenConsumed;
        } 
        else return 0;
    }
    public bool isConsumed() {
        return consumed;
    }
}
```]]
#only(2)[
  #place(dx:18em,dy:3em,)[
    #text(18pt)[
      ```cs public interface IConsumable 
      {
        int consume();
        bool isConsumed();
      }

      ```
    ]
  ]
]

== Fill in the blanks
#mwb
#grid(columns:(1fr,1fr),column-gutter: 5pt,
text(18pt)[
```cs 

static void Main(string[] args) {
  IStringList myList = new SillyList();
  myList.add("Hello");
  myList.add("World");
}

public interface IStringList {
    void add(string item);
    string getAt(int i);
    int getCount();
}
```
],
text(18pt)[
```cs 

public class SillyList : IStringList {
  private List<string> secretList 
                    = new List<string>();

  public void add(string item)     {
      secretList.Add(item);
  }
  public string getAt(int i)     {
      return secretList[i];
  }
  public int getCount()     {
      return secretList.Count;
  }
}
```
])
#only(1)[
#place(dy:-260pt, dx:230pt)[
  #rect(fill:red.lighten(40%), radius:15pt, width:100pt, stroke:1pt,align(center)[`(1)`])
]
#place(dy:-283pt, dx:590pt)[
  #rect(fill:green.lighten(40%), radius:15pt, width:100pt, stroke:1pt,align(center)[`(2)`])
]
]
#only(2)[]

== Will this code compile?
#mwb
#grid(columns:(1fr,1fr),column-gutter: 10pt,
text(18pt)[
```cs public interface ITiger {
    int getStripes();
    void eat();
}

public interface ILion {
    void roar();
    void eat();
}
```
],
text(18pt)[
```cs public class Liger : ILion, ITiger
{
    private int numOfStripes = 10;
    public void roar() {
        Console.WriteLine("*meow*");
    }
    public int getStripes() {
        return numOfStripes;
    }
    public void eat() {
        numOfStripes += 1;
        roar();
    }
}
```
])
#only(2)[
  #place(dy:-2em,dx:4em)[#rect(fill:green.lighten(40%),stroke:1pt,radius:15pt,inset:20pt,[YES])]
]
= OOP Design Principles
#note[Keywords: `Encapsulation; Composition; Information Hiding; Inheritance; Interface; Implementation;`]
#only(2)[
  #place(dy:-7em,dx:3em)[#image("img/166 spec.png")]
]

== Game v2
#list[Three weeks to make a game.][This will replace the practical (Task 3) for weekly assignments A126 & A127][In class in three weeks, you will be playing each others' games]#pause
#v(2em)
- The game *must* be C\# and use Console
- The game *must* use certain other skills (next slide)
== Skills for Game v2
It must use *at least two* of the following:
- OOP, #text(20pt)[eg classes, inheritance, composition, polymorphism, interfaces]
- Recursion
- Stacks or Graphs
- 2D Arrays
- Text Files or Binary Files
- Searching or Sorting algorithms
- Structures

== OOP Design Principles
#notes
You need to be aware of the following *three object-oriented \ design principles*.

They are recognised as producing more #bold[elegant] OOP solutions:#pause
1. Encapsulate what varies#pause

2. Favour composition over inheritance#pause

3. Program to interfaces, not implementation

== Encapsulate what varies
#notes
The goal here isn't just to encapsulate what is #bold[currently] varying, \ but what may vary in the future.

It's an *abstraction* process. #pause

We want to avoid highly interconnected functions/classes. Instead, if something “varies”, we should ideally only need to change one class. #pause

Consider options for a sales tax calculator:
1. Hard-code the tax rate throughout your program.
2. Store the tax rate as a globcal constant.
3. Have a method called `calculateSalesTax(Product)`.

== How could we do better?
#discuss
#place(dy:1em)[#grid(columns:(1fr,1fr), column-gutter: 0pt,
text(18pt)[
```cs public class Pet {
    public string name;
}
public class Cat : Pet {
  private int grump = 10;
  public void sulk()     {
    Console.Write("S");
    for (int i = 0; i < grump; i++) {
      Console.Write("i");
    }
    Console.WriteLine("gh");
  }
}
public class Dog : Pet {
    private int loyalty = 4;
    public int getLoyalty() {
        return loyalty;
    }
}
```
],
text(18pt)[
  ```cs 
  
  
  static void Main(string[] args) {
      Cat kitty = new Cat();
      Dog puppy = new Dog();
      kitty.name = "Kitty";
      puppy.name = "puppy";
      catEat(kitty);
  
      Console.ReadKey();
  }
  public static void catEat(Cat pet) {
      Console.Write("*");
      Console.Write(pet.name);
      Console.WriteLine("*is eating.*");
  }
```
])]

== Favour composition over inheritance
#notes
Inheritance isn't the magical answer to all the world's problems!#pause

Tightly-coupled systems made using elaborate inheritance hierarchies can be very difficult to change if new features are required.#pause

Let's consider making a question generator for GCSE Quadratics.
1. A class called `Quadratic` that stores an equation.
2. Classes for different types of question, eg:
  - `FactoriseQuadratic`
  - `SolveQuadratic`
  - `CompleteTheSquare`

== Program to interfaces, not implementation
#notes
#text(22pt)[This is all about decoupling your code so that it's easier to modify \ at a later date.#pause

Let's say I'm making a game and I need to be able to *render* things in the world, as well as *render* some things in an inventory.

1. Players: World renderable, never in an inventory.
2. Apples: World renderable *and* in an inventory.
3. Points: Inventory renderable, *never* in the world.#pause

With classes, we'd need `InventoryThing`, `WorldThing` and `InventoryWorldThing`. #pause Or we could use two interfaces.#pause Imagine scaling this up for a larger game...]