#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

= NEA Programming Concepts: \ Movement
#Comp
#note([Log in and load Visual Studio. \ Make sure you have a pen and paper for notes])

== Console Apps that look interactive
#notes
We've got the option to use WinForms to make a GUI,\
but that's going to be very complicated and not very complex.

Generally, stick with Console.

How can we add user interaction, while still building our complexity? #pause

We'll look at two options today, a function, and OOP.

== Functional menu
#notes
*The aim*: \
- Make a function that takes an array of strings (our menu items), 
- displays them, 
- forces the user to select one, 
- returns a number representing the choice made.
- Must be interactive in some way.
Let's get started!

== OOP player
A class is like a structure, except it can store information *and* methods.

EG:
`
player.X = 4;
player.Y = 5;` #pause

`player.Move('N');
player.Draw();`

== Basic OOP: Annotate!
#notes
Usefully, 'Simple OOP model' is in B-band. \ It's immediately there! No hassle, just good marks.

```cs 
public class Player {
  public int X, Y;
  public char symbol;
  public Player() {
    X = 0; Y = 0;
    symbol = '@';
  }
  public void Draw(){
    Console.SetCursorPosition(X, Y);
    Console.Write(symbol);
  }
  public void Move(char direction) {
    ...
  ```
#uncover("2-")[
  #place(dy:-15em,dx:11em)[
    #rect(inset:10pt,fill:fadedBlue.lighten(50%),stroke:1pt,radius:15pt,[
      `class`, rather than `struct`
    ])
  ]
]
#uncover("3-")[
  #place(dy:-13em,dx:11em)[
    #rect(inset:10pt,fill:fadedBlue.lighten(50%),stroke:1pt,radius:15pt,[
      variables, like a `struct`
    ])
  ]
]
#uncover("4-")[
  #place(dy:-11em,dx:11em)[
    #rect(inset:10pt,fill:fadedBlue.lighten(50%),stroke:1pt,radius:15pt,[
      a 'constructor' sets initial values
    ])
  ]
]
#uncover("5-")[
  #place(dy:-7em,dx:11em)[
    #rect(inset:10pt,fill:fadedBlue.lighten(50%),stroke:1pt,radius:15pt,[
      methods defined just like in `Program`.
    ])
  ]
]

== Let's practice
#Comp
Let's make a player!

They must:
- Have a symbol drawn to the screen,
- Move if I use the arrow keys,
- Not move off of the screen.
- Not be able to move into the randomly generated blocks

We can always extend this later, such as power-ups, enemies etc. There's a huge amount you can do!