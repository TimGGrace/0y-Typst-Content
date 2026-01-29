#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#GClass
On Google Classroom

*L224 - OOP Recap worksheet*

#setTimer(title:"Recap",totalTime: 15)

= OOP: I did it again.
#note[`Revision of Classes/Objects, Class diagrams, inheritance, polymorphism, aggregation and composition`]

== Homeworks
#place(dx:13em,dy:-4.4em,rect(fill:yellow.lighten(50%),stroke:1pt,inset:10pt,text(24pt)[*Marks*
#enum(numbering:"1:")[Incomplete, *requires resubmission*][Complete, but late.][Complete and on time]]))
#text(24pt)[
*Missing one homework*
- Email to you, only you.
#pause
*Missing more than one homework*
- Email to you *and* your parents
- Summary note to focus. *Permenant!*
- Context based, #smallcaps[TALK TO ME].
- May involve phonecalls.]

#let display_Sols(listy) ={
  return for i in range(listy.len()) {
      let val = listy.at(i)
      [== Questions on Keywords
      #notes
      #val.at(0)
      
      #redText(val.at(1))]
  }
}
#display_Sols(
  (([1. What is the difference between a primitive variable and an object reference variable?],[Primitive variable stores actual data, whereas object reference variable stores a reference (memory address) pointing to where the data is stored in the heap]),
  ([2. What is the difference between an object and an object reference?],[Object is where the actual data is stored about a thing (in the heap), whereas the object reference is the statically-allocated memory reference that allows access to that object]),
  ([3. What is meant by `Instantiation`, `Encapsulation` and `Inheritance`:],text(20pt)[*Instantiation* \
The process of creating an object from a class. The constructor is called \
*Encapsulation* \
Grouping together attributes about a kind of thing (state) and functions/methods for that data (behaviour) into a class and restricting access to an object’s attributes and methods \
*Inheritance* \
An “… is a …” relationship between classes. The inheriting subclass is a more specialised version of the parent/super class. It has all of the state and behaviour of the parent, along with additional state/behaviour.]),
([4. What is the difference between aggregation and composition?],[Aggregation is a weak association. When the owning object is destroyed, the owned object still exists

Composition is a strong association. When the owning object is destroyed, the owned object is also destroyed]),
([5. How are Inheritance, aggregation and composition represented on a class diagram?],[Inheritance: Empty-headed arrow from child *to* parent.

Aggregation: Empty-headed diamond from owned *to* owning class.

Composition: Filled diamond from owned *to* owning class.]),
([6. What is the difference between an abstract method and a virtual method?],text(22pt)[Virtual methods can be overridden by the derived class /\/ virtual methods do not have to be overridden /\/ abstract methods must be overridden by the derived class;

Virtual methods have an implementation/body /\/ virtual methods contain code (with functionality) (in the base class) /\/ abstract methods do not contain an implementation/body /\/ abstract methods contain no code (with functionality) (in the base class) /\/ abstract methods only contain a declaration (in the base class);

Abstract methods can only be declared in abstract classes /\/ virtual methods can be declared in abstract and non-abstract classes;]),
([What is the difference between the private access specifier and the protected access specifier?],[Private attributes can only be accessed by the class/object they belong to whereas protected attributes can also be accessed by any classes that inherit from the class they belong to;

#bold[NE]. private attribute can only be accessed by the class/object they belong to whereas protected attributes can be accessed by others classes/objects])
)
)

== OOP Diagrams
#notes
Draw the class diagram for the `Person` class.
#text(22pt)[```cs public class Person {
    protected string name;
    protected int age;
    
    public Person(string inName, int inAge) {
        name = inName;
        age = inAge;
    }
    
    public virtual void Display() {
        Console.Write(name);
        Console.Write(" (Age: " + age + ")");
    }
}```]
#uncover(2)[
  #text(red.darken(20%))[#place(dy:-10em,dx:2em,
  rect(width:600pt, stroke:0pt,
table(columns:1fr, inset:10pt,
table.cell(fill:blue.lighten(70%))[`Person`],
table.cell(fill:blue.lighten(70%))[`# name : string
# age : integer`], 
table.cell(fill:blue.lighten(70%))[`+ Person(inName : string, inAge : integer)
+ Display()`]))
)]
]

== One step further
#mwb
#text(24pt)[```cs 
public class Student : Person {
    private bool firstYear;
    public Student(string inName, int inAge, bool inFirstYear) : base(inName, inAge) {
        firstYear = inFirstYear;
    }

    public bool IsFirstYear() {
        return firstYear;
    }
}
```]
1. What is the purpose of ```cs base``` ?
2. State three publically accessible methods from Main.

== Pre Release Program
There's OOP in your pre-release program, lucky you!

*What are the three principles of OOP Design?*
#only(2)[
  #enum[
    Encapsulate what varies
  ][
    Favour composition over inheritance
  ][
    Program to interfaces, not implementations.
  ]
]
#only(3)[
  #enum[
    Encapsulate what varies
  ][
    #strike[Favour composition over inheritance]
  ][
    #strike[Program to interfaces, not implementations.]
  ]
  Sorry. Your pre-release program doesn't do these well.
]

== Getting to know the pre-release
#notes
#text(24pt)[It's a big program! That's a lot to take in.
1. Copy the program into a new Visual Studio solution, and run it. #pause
2. Use Ctrl + M, + O to collapse everything to definitions. #pause
3. Go through the program to identify key features: #enum(numbering:"a.")[Write down every class name.][Draw an inheritance/composition diagram.][Draw the class diagrams for each class.][Annotate it with anything suspicious!]]