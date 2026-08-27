#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter: Active recalled
#notes

On your own:

Make a _brain dump_ on the topic of the *call stack*.

Aim to include:
- Where is the call stack?
- What information is stored in the call stack?
- How does it change in size during runtime?

= Stacks
#note[Keywords: `Stack; Data structure; Abstract Data type; Push; Pop; Peek; Stack overflow;`]
#only(2)[#place(dy:-9em,dx:-1em)[
  ```cs
try {
    // Paste entire codebase here
} catch (Exception ex) {
    var q = System.Web.HttpUtility.UrlEncode(ex.Message);
    Process.Start("https://stackoverflow.com/search?q=" + q);
}
  ```
  A 'Stack Overflow' Exception
]]
#only(3)[
  #place(dy:-8.5em,dx:17em,image("img/151 spec.png", height:110%))
]

== Abstract Data Types
#notes
We're going to be using *abstract data types* \ throughout this course. #pause

They are a theoretical way of organising a collection of data, #bold[independent of any programming language].#pause

They can then be implemented within a programming language to create a *Data Structure*.#pause

EG: Stacks, Queues, Graphs, Trees, Hash Tables, Dictionaries, Vectors

== Abstract Data Types
#notes
An *ADT* will carry a list of features or requirements for \ how we handle the data. #pause

For a *stack*, we can consider it a collection of items that can only be accessed from the #bold[top].#pause

You can put a new item onto the #bold[top], take an item off of the #bold[top], or just look at the item on the #bold[top].

== Stack as an ADT
#notes
In #bold[abstract] terms, a stack needs to have 5 core operations:

1. `Peek` - return the item at the top without removing it.#pause

2. `Pop` - return the item at the top and remove it.#pause

3. `Push` - Add a new item to the top.#pause

4. `IsEmpty`#pause

5. `IsFull`

== Dry Run (together)
#mwb
`
stack.Push(5);
stack.Push(10);
stack.Push(9);

int myInt = stack.Pop();

Console.WriteLine(myInt + stack.Peek());
`

#MWBQ(title:"Dry Runs",
([`stack.Push(3);
stack.Push(1);
stack.Push(4);
stack.Push(stack.Pop() * stack.Pop());

stack.Push(5);

Console.WriteLine(stack.Pop() + stack.Peek());`

What does this code output?

What does the stack look like at the end?],place(dy:-12em,dx:25em)[#text(48pt)[9 \ \ 4 \ 3 #line(stroke:7pt+red,start:(-0.7em, -0.8em),length:5em)]]),
([`stack.Push("ll");
stack.Push("o");
stack.Push("He");

string s = stack.Pop();
stack.Push(stack.Pop() + stack.Pop());
stack.Push(s + stack.Pop());`

What does the stack look like at the end?],place(dy:-5em,dx:25em)[#text(48pt)[Heoll #line(stroke:7pt+red,start:(-0.7em, -0.8em),length:5em)]]),
([`stack.Push("lo");
stack.Push("l");
stack.Push("He");

string s = stack.Peek();
stack.Push(stack.Peek() + stack.Peek());
stack.Push(s + stack.Peek());`

What does the stack look like at the end?],place(dy:-9em,dx:25em)[#text(48pt)[HeHeHe \ HeHe \ He \ l \ lo #line(stroke:7pt+red,start:(-0.7em, -0.8em),length:5em)]]))

== Programming an integer stack
#mwb
1. What are the 5 methods needed for the *stack ADT*?

2. For each of these, what parameters/return types are needed?

3. Write down a *function stub* for each of them.

== Static Stacks
A *stack* data structure can be implemented using an array and an integer variable behind the scenes.#pause

EG:
```cs
int[] data = new int[5];
int top_pointer = -1;
```#pause

Thus `Push` would be:
```cs
top_pointer += 1;
data[top_pointer] = new_item;
```
== Discuss
#discuss
How does the Stack data structure relate to OOP?

#only(2)[
  #text(red)[
    Encapsulation:
    1. Combining data and methods into a single object.
    2. Restricting access to methods/data.

    To create a Stack data structure, we want to do both! \
    1. Put the data and 5 methods in one place.
    2. Restrict access to the data, so you can only access it via the methods.

    Thus we could make a Stack class to implement the data structure!
  ]
]

== Your turn:
#Comp
You're going to program an *integer stack* using an array and \ a top pointer. Select your difficulty: 
1. Use the skeleton program provided for the `MyStack` class which has 2 variables and 5 methods required (and a constructor).

2. Write a class called MyStack, which contains the required `private` variables and 5 `public` methods (and a constructor).

Extension: Create a 'generic' `Stack` class rather than an integer-specific one, using _parametric polymorphism_. Research will be required!

