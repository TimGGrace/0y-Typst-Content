#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

= Player Movement
#note[Use of `struct`s to allow us to have moveable players.

Load Visual Studio and get out paper!]

== Player Movement
#place(dy:-3em,dx:12em,
  rect(inset:10pt, fill:blue.lighten(70%),stroke:1pt,radius:15pt)[
    'Simple OOP' is part of \ the B-band programming skills.
  ])
The goal:
1. A ```cs struct``` that can store a player
  - Coordinate
  - Symbol #pause
2. Functions that draw the player and move the player. #pause
3. Interaction with walls/boundaries. #pause
4. #text(purple)[#bold[EXT:]] Things to collect

== Struct (RECAP)
#only(1)[```cs struct coordinate {
  public int x;
  public int y;
}
```]
#only(2)[Even better:
  ```cs struct coordinate {
    public int x;
    public int y;
    public ConsoleColor colour;
    public char symbol;
  }```
]

== Player Movement
#place(dy:-3em,dx:12em,
  rect(inset:10pt, fill:blue.lighten(70%),stroke:1pt,radius:15pt)[
    'Simple OOP' is part of \ the B-band programming skills.
  ])
The goal:
1. A ```cs struct``` that can store a player
  - Coordinate
  - Symbol
2. Functions that draw the player and move the player.
3. Interaction with walls/boundaries. 
4. #text(purple)[#bold[EXT:]] Things to collect