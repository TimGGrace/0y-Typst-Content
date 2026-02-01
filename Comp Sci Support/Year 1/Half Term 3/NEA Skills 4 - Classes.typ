#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

= Classes
#Comp
#note([Log in and load Visual Studio. \ Make sure you have a pen and paper for notes])

== Using Classess effectively

Two sessions ago, we looked at using a ```cs struct``` to store information about a Player, and then we wrote functions to move them around the screen. #pause

*Classes* allow us to put all of that into one object.
- Properties (like position) #pause
- Methods (like `Draw` and `Move`) #pause

It's not much more difficult to program, but far more effective in the long run.

== Making a static object
Let's start with making a thing that appears on the screen.
#text(18pt)[#only(1)[```cs public class Entity {
  public int x, y;
  public char symbol;
  
}```]
#only(2)[```cs public class Entity {
  public int x, y;
  public char symbol;
  
  public Entity() {
    x = 5; y = 5;
    symbol = '@';
  }
}```]
#only(3)[```cs public class Entity {
  public int x, y;
  public char symbol;
  
  public Entity() {
    x = 5; y = 5;
    symbol = '@';
  }

  public void Draw() {
    Console.SetCursorPosition(x, y);
    Console.Write(symbol);
  }
}```]]

== Let's test that works.
```cs static void Main(string[] args) {
  Entity object1 = new Entity();
  object1.Draw();

  Entity object2 = new Entity();
  object2.x = 10;
  object2.y = 10;
  object2.symbol = '#';
  object2.Draw();
}```

== Adding to it
One option to add to this is to make more features within Entity.

But if you want multiple *types* of entity, we can use *Inheritance*. \ (A band skill, nice!) \
EG:

```cs public class Player : Entity {
  public void Move(string dir){
    ...
  }
}```
Player here has *all* of the properties and methods of Entity, plus more!

== Testing Player
#grid(columns:(1fr,1fr))[
#text(20pt)[
```cs static void Main(string[] args) {
  Entity barrier1 = new Entity();
  Player p1 = new Player();
  p1.x = 10; p1.y = 10;
  p1.symbol = '#';

  while (true){
    ConsoleKey choice = Console.ReadKey(true).KeyChar;
  }
  ...
```
]
][
#text(20pt)[
```cs ...
switch(choice){
  case ConsoleKey.UpArrow:
    p1.Move("up");
    break;
  case ConsoleKey.DownArrow:
    p1.Move("down");
    break;
    ...```
]
#only(2)[See how much cleaner this is compared to last time?]
#only(3)[
  Now all you've got to do is to make it work! 
]
]