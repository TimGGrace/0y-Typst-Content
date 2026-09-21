#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))


#QuickQuestions(
  firstSet: (
    ([Evaluate $ 3 quad 2 quad * quad 4 quad - $],[$2$]),
    ([Write the following RPN in infix notation:$ 8 quad 3 quad - quad 2 quad \/ $],[$(8 quad - quad 3) quad \/ quad 2$]),
    ([Write $0101" " 1101_2$ in hexadecimal, without converting into decimal.],[$5D_h$]),
  ),
  secondSet: (
    ([Write $1A E_16$ in binary.],[$1" "1010" "1110_2 $]),
    ([State the three different busses used within a computer, along with their directionality.],[Data Bus: bidirectional\
    Address Bus: unidirectional\
    Control Bus: bidirectional]),
  )
)

= Fixed Point Binary
#note[Keywords: `Binary; Binary Point; Fixed Point; Number Base;`]#pause
#place(center+horizon,
  image("img/104-spec.png",height:110%)
)

== A Place Value reminder
$  18948.5024_(10) $
#table(columns:range(10).map(_=>1fr), stroke:(top:0pt,left:1pt,right:1pt,bottom:0pt), align:center,
..range(10).map(n=>{
  let pow = 5 - n
  return $10^(#pow)$}),
  $0$,$1$,$8$,$9$,$4$,$8$,$5$,$0$,$2$,$4$
)#pause
And now in binary:
$ 10110.1010_2 $
#table(columns:range(10).map(_=>1fr), stroke:(top:0pt,left:1pt,right:1pt,bottom:0pt), align:center,
..range(10).map(n=>{
  let pow = 5 - n
  return $2^(#pow)$}),
  $0$,$1$,$0$,$1$,$1$,$0$,$1$,$0$,$1$,$0$
)#pause
#place( center, dy:1em,
  $ 2^4 + 2^2 + 2^1 + 2^(-1) + 2^(-3) = 22.125_10 $
)

== Converting
#green-book
Example:
#only(1)[Convert into decimal:
$ 1011.1100_2 $]
#only(2)[Convert into binary:
$ 7 3/8 $
]

#MWBQ(
  (text(36pt)[Convert $6 3/4$ into binary],text(36pt)[$ 0110.1100_2 $]),
  (text(36pt)[Convert $1010.1011_2 $ into decimal],text(36pt)[$ &= 8+2+1/2+1/8+1/16\ &= 10 11/16 (=10.6875) $]),
  (text(36pt)[Convert $5.1875$ into binary],text(36pt)[$ 0101.0011_2 $]),
  (text(36pt)[Convert $0100.0110_2$ into decimal],text(36pt)[$ &= 4+1/4+1/8\ &= 4 3/8 (= 4.375) $]),
  (text(36pt)[Convert $1/3$ into binary],text(36pt)[$ ??? $]),
)

== Discuss with your neigbour
#discuss
#v(2em)
#text(52pt)[Compare the binary for $67$ and $33.5$]

= Switch
#note[The #bold[other] selector]

== Selection Statements
The *selection* process allows a computer to compare values and decide what course of action to take.

When you're comparing against lots of fixed options, a `switch` statement becomes more effective than an `if` statement.

==
#v(-1em)
#text(15pt)[```cs
static void Main(string[] args) {
  string pokemon;
  string aboutPokemon;
  Console.WriteLine("Professor Oak asks you to choose your first Pokémon - who do you pick?");
  pokemon = Console.ReadLine();

  switch (pokemon) {
    case "Charmander":
      aboutPokemon = "Type: Fire";
      break;
    case "Squirtle":
      aboutPokemon = "Type: Water";
      break;
    case "Bulbasaur":
      aboutPokemon = "Type: Grass, Poison";
      break;
    default:
      aboutPokemon = "You don't know your Pokémon";
      break;
  }
  Console.WriteLine(aboutPokemon);
}

```
]

== 
#text(18pt)[```cs
static void Main(string[] args) {
  int mark;

  Console.WriteLine("Enter your rating out of 5");
  mark = int.Parse(Console.ReadLine());

  switch (mark)
  {
    case 0:
      Console.WriteLine("Your rating is: Terrible");
      break;
    case 1:
      Console.WriteLine("Your rating is: Poor");
      break;
  }
}

```]#pause
#place( center+horizon,dx:10em, 
  rect( inset:10pt,radius:15pt,fill:fadedBlue.lighten(40%),stroke:fadedBlue+2pt,
    align(left)[
      Amend the program to inclide:\
      2 $->$ "Bad"\
      3 $->$ "Average"\
      4 $->$ "Good"\
      5 $->$ "Excellent"
    ]
  )
)

==
#text(16pt)[
  ```cs
static void Main(string[] args){
  int mark;

  Console.WriteLine("Enter your rating out of 5");
  mark = int.Parse(Console.ReadLine());

  switch (mark)
  {
    case 0:
      Console.WriteLine("Your rating is: Terrible");
      break;
    case 1:
      Console.WriteLine("Your rating is: Poor");
      break;
    default:
      Console.WriteLine("That wasn't one of the choices!");
      break;
  }
}

  ```
]
== Scope of variables Example
#v(-1em)
#text(15pt)[
```cs
int howManyUsers;
Console.Write("How many users: ");
howManyUsers = int.Parse(Console.ReadLine());
switch (howManyUsers)
{
  case 1:
    string name;
    Console.Write("Enter name: ");
    name = Console.ReadLine();
    Console.WriteLine("Hello " + name);
    break;
  case 2:
    string name;
    string name2;
    Console.WriteLine("Enter two names: ");
    name = Console.ReadLine();
    name2 = Console.ReadLine();
    Console.WriteLine("Hello " + name + " and " + name2);
    break;
}
```
]
#Worksheet(
  title:"More Problems",
  text(40pt)[On BPCompSci:\ *W102 - switch*]
)