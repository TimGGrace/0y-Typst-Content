#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Weekly Review 106

= De Morgan's Law
#note([Keywords: `Commutative; Associative; Distributive; Identity; De Morgan’s Law;`])
== Starter: *Boolean Algebra*
#mwb
In pairs, write down as many properties and identities of Boolean Algebra as you can remember. \ \
#bold[Hint]: There are 3 named properties, each with 2 equations, and 8 boolean identities, 4 for each main gate.

== Starter: *Boolean Algebra*
#mwb
#text(24pt)[
#table(columns:(0.8fr,1.5fr),stroke:1pt,inset:15pt,
[Commutative],[$&A.B = B.A \ &A+B = B+A$],
[Associative],[$&A.(B.C) = (A.B).C \ &A+(B+C) = (A+B)+C$],
[Distributive],[$&A.(B+C) = A.B + A.C \ &A+B.C = (A+B).(A+C)$],
[AND],[$&A dot 0=0, &&A dot 1=A, \ &A dot A=A, quad &&A dot overline(A)  = 0$],
[OR],[$&A + 0=A,&&A + 1=1, \ &A + A=A, quad &&A + overline(A)  = 1$])]

== Simplifying Boolean
How to simplify Boolean Algebra
#enum(
  [Look at the expression],
  [Don’t panic],
  [Use one of  the identities or properties of commutativity, associativity, distributivity to reduce one part of the expression],
  [Repeat step 3 until there is nothing left to reduce]
)
== You Try
#notes
#enum(
  [$B dot C + B dot overline(C)$\ ` `],
  [$A + (A dot C)$ \ ` `],
  [$overline(A) dot overline(B) + overline(A) dot B + A dot overline(B) + A dot B$ \ ` `],
  [$overline(A) dot (B dot overline(C) + C dot B)+overline(C)dot B dot A + B dot A dot C$ \ ` `],
  [#text(24pt)[$overline(A) dot (B dot overline(C) + (B + A) dot (B + overline(A)) dot C) + A dot overline(B) dot overline(C) + A dot overline(B) dot C$]]
)

== Complete the truth tables for:
#notes
#grid(columns:(0.8fr,1.5fr),rows:(1fr,1fr),
[$overline(A dot B)$],[#table(columns:4,inset:10pt,[$A$],[$B$],[$A dot B$],[$overline(A dot B)$],
[$0$],[$0$],[#only("2-3")[$0$]],[#only(3)[$1$]],
[$0$],[$1$],[#only("2-3")[$0$]],[#only(3)[$1$]],
[$1$],[$0$],[#only("2-3")[$0$]],[#only(3)[$1$]],
[$1$],[$1$],[#only("2-3")[$1$]],[#only(3)[$0$]],)],
[$overline(A + B)$],[#table(columns:4,inset:10pt,[$A$],[$B$],[$A + B$],[$overline(A + B)$],
[$0$],[$0$],[#only("2-3")[$0$]],[#only(3)[$1$]],
[$0$],[$1$],[#only("2-3")[$1$]],[#only(3)[$0$]],
[$1$],[$0$],[#only("2-3")[$1$]],[#only(3)[$0$]],
[$1$],[$1$],[#only("2-3")[$1$]],[#only(3)[$0$]])])

== Those are logic gates we already have!
#notes
De Morgan's Law states:
$ overline(A dot B) &equiv overline(A) + overline(B) \ "and" \ overline(A+B) &equiv overline(A) dot overline(B) $ 
We often say: \
"Break the line, change the sign" \
#pause
#note([That's much easier than Demorgan's "Negating both terms separately, then negating the whole expression and change the sign between them is logically complete"])

== Example Time!
#notes
Let's simplify:
$ (A dot B) dot overline(overline(A)+overline(B)) $
== You try:
#notes
#enum(
  [$overline((A+B) dot C) $ \ ` `],
  [$overline(A+B dot C)$ \ ` `],
  [$overline(overline(overline(A) dot B)+C)$ \ ` `],
  [$overline(A dot B) + A$ \ ` `],
  [$overline(overline(A+B)+B)$ \ ` `],
  [$overline(overline(B)+overline(A+B))$]
)

= Structures
#note([Keywords: `Structure; Composite Datatype; static memory allocation;`])
== Variables vs Structures
#place(dy:2em,rect(inset:10pt,fill:blue,stroke:2pt+black,radius:5pt,[Age: Integer]))
#place(dy:5em,dx:5em,rect(inset:10pt,fill:green,stroke:2pt+black,radius:5pt,[Name: String]))
#place(dy:8em,rect(inset:10pt,fill:blue,stroke:2pt+black,radius:5pt,[Price: Integer]))
#place(dy:11em,dx:5em,rect(inset:10pt,fill:yellow,stroke:2pt+black,radius:5pt,[Alive: Boolean]))
#place(dy:15em,[We can store information \ in variables!])
#place(dx:13em,rect(width:0em,height:17em,stroke:2pt))
#pause
#place(dx:14em,[What if we wanted to \ store lots of information in \ one place?])
#pause
#place(dx:14em,dy:5em,[Structures!])
#place(dy:6em,dx:13.5em,rect(inset:10pt,stroke:2pt+black,radius:5pt,[
  Car \ 
  Price: Integer \
  Owner: String \
  Age: Integer
]))
#pause
#place(dy:12em,dx:15em,rect(inset:10pt,stroke:2pt+black,radius:5pt,[
  Player \ 
  Position: Coord \
  Shape: Char \
  Alive: Boolean
]))
#pause
#place(dy:7em,dx:21em,rect(inset:10pt,stroke:2pt+black,radius:5pt,[
  Coord \ 
  X: Integer \ Y: Integer
]))

== Structures
#notes
- Structures are like containers
- They group together a set of variables that are related to create a *record*
- Structures are *statically allocated*
```cs 
struct Book {
  public string title;
  public string author;
  public string genre;
  public decimal price;
}
```
#place(dy:-4em,dx:15em,[This is the template \ for a Book structure.])

== Example
#text(24pt)[```cs 
struct Student {
  public string name;
  public int age;
}
static void Main(string[] args) {
  Student FavouritePerson;
  
  Console.WriteLine("Enter name:");
  FavouritePerson.name = Console.ReadLine();
  Console.WriteLine("Enter an age:");
  FavouritePerson.age = int.Parse(Console.ReadLine());

  Console.WriteLine(FavPerson.name + "is the best, and only "+FavPerson.age);
}
```]
#pause
#place(dy:-14em,dx:9.5em,text(red)[Structures define \ templates])
#pause
#place(dy:-10em,dx:15em,text(red)[Then you can declare \ variables of that type.])
#pause
#place(dy:-1em,dx:15em,text(red)[You access the data \ with the '.'])

== You Try
#text(24pt)[- Create a structure called *Person*. 
  - It should hold their: title, full name, age and favourite colour.
- In `Main()`, create a *Person* variable called `myself`, and store the information about yourself.
- Write a procedure called `DisplayPerson`, which takes a *Person* as a parameter, and prints out the information about the person in a useful format.

#text(purple)[EXT:] Write a function called `InputPerson` that asks for the person's information, and returns a new *Person* object. Call this in `Main`, and pass the result into `DisplayPerson`]

== What makes a good discussion?
#mwb
Comp Sci involves a lot of discussion in lessons. \ \
#text(blue)[What is the benefit of discussing ideas in lessons? \ \ 
What features does an effective discussion have? \ \
What makes a discussion ineffective?]

== PRIMM task!
#GClass
Find the PRIMM task on *GClassroom* to help \ you practice structures. \ \
Consider: \ Why do we use PRIMM, even if you're confident enough to go straight to the Make tasks?