#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#brainscape(title:"B 3")

== Starter
#notes
1. If I want to store a reference to a new `Account` object called `mySavings`, what C\# code should I write?

2. In which part of the process' memory will the `mySavings` reference be stored?

3. What is meant by *Encapsulation*?

= Access Modifiers and Constructors
#note[Keywords: `Encapsulation; Public; Private; Constructor; Implicit; Explicit; Heap; Object Reference;`]

== Encapsulation
#notes
Encapsulation is: 
1. *combining properties and methods* together into an object #emoji.checkmark #pause
2. being able to *restrict access* to an object's state/behaviour. #emoji.quest

== From Last Time
#grid(columns:(1.5fr,1fr))[#text(20pt)[```cs public class Account
{
    public int balance;
    public int overdraftLimit;
    public void makeDeposit(int amount)
    {
        balance += amount;
    }
    public void MakeWithdrawal(int amount)
    {
        balance -= amount;
    }
}
```]][
1. Where are the access modifiers?

2. How many are there?
]

== Access Modifiers
#notes
*Access Modifiers*  (or *Access Specifiers*) are used to restrict code elements from use by _other parts of the code_.#pause

They can be applied to (written before) _class, variable, and subroutine/function_ definitions. #pause

- *public* means that the element can be accessed from outside of the class.#pause
- *private* means that the element can *only* be accessed from *within* the class.

== The Private Convention
#notes
In general, elements within a class should be *private*, \ unless they have to be *public*.

#only(1)[Why?]
#only(2)[
  - Abstraction (information hiding) \ internal features are not accessible/visible elsewhere

  - Control over modifications \ Perhaps you only want that variable to increase?

  - Reduced Complexity \ As elements aren't visible, they don't get in the way elsewhere
  - Consistency 
]

== Defining a class
#Comp
1. Name the class
2. Decide on the #bold[properties/fields] of the class
3. Declare the fields as #text(fadedBlue.darken(20%))[`private`] variables
4. Declare the #bold[methods] of the class (procedures and functions)
5. Declare appropriate methods as #text(fadedBlue.darken(20%))[`public`]
6. Write the code for the methods  #pause

*W127 - C\# Access Modifiers*, you have #bold[just 15 minutes]

== Constructors
#notes
Whenever you call the `new` key word, a *constructor function* \ is called. This creates an instance of the class in the heap, and a pointer variable in the stack. #pause

#align(center)[```cs Account myAcc = new Account();```] #pause

If no constructor has been programmed, a *default* constructor is automatically created by the compiler, and the code will #bold[implicitly] use it.

== The Implicit Constructor
#notes
The default (implicit) constructor will initialise all of the variables \ within the class to be `null`, and perform no further operations. 
== Explicit Constructors
#notes
To make an explicit constructor, we'll make a method that looks very much like a function, but #bold[without] a return type. Its identifier will be the #bold[same] as the class. #pause

#grid(columns:(1fr,1fr))[```cs 
public class Account {
  public decimal funds;
  public bool isPremium;

  public Account() {
    funds = 0;
    isPremium = false;
  } 
  ```][
    The ```cs public Account()``` is the constructor.

    When called, it will set funds to 0, and isPremium to false.

    You could do all sorts of things with this, not just setting variables.
  ]
== Explicit Constructors
#notes
You can make constructors require parameters, as they \ act as functions. #pause

EG: 
```cs 
public Account(int startFunds) {
  funds = startFunds;
  isPremium = false;
}
``` #pause

#place(dy:1em)[You can also create any number of constructors for one class, so long as they all have a different parameter list. \ 
This is called *subroutine overloading*.]

== Practice!
#Comp
*W128 - C\# Constructors* on BPCompSci.com