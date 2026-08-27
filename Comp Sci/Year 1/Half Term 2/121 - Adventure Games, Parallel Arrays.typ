#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

= Adventure Game Evaluation

== SA 2
- First lesson of the week beginning 17th November (2 weeks away)
- Programming only
- Topics include everything up to L120 – Lists 2 (last lesson) \ See *BPCompSci* for full list of topics we’ve covered. Read upwards!
- If you haven’t already, you need to start revising now

== #text(red)[Follow these instructions in order]
#enum(
  [Find your Adventure Game Application (in the debug folder)],
  [Make a copy of it and rename it in the format "SURNAME-forename"],
  [Move the copy into the "CompSci" folder you run programs from],
  [Run it],
  [Stand behind your chair so I know you're ready]
)

== Adventure Game Process
#enum(
  [Move one desk along towards the board \
  #text(size:24pt)[If you're at the front, go to the back!]],
  [You'll have some time to play the game. \
#text(size:24pt)[Write feedback on the MWB!]],
[When I tell you to, you'll move to another PC and another game.],
[We'll play as many games as we can without running out of time!]
)

= Arrays 2
#note([Keywords: `Array; Element; Index; Parallel Arrays;`])

== #text(fadedBlue)[Populating] an array - Reminder
*One at a time* \ \ \ \
#place(dy:-4.5em,[#text(24pt)[```cs 
string[] names = new string[4];
names[0] = "Katniss";
names[1] = "Peeta";
...
```]])
*Auto-initialise*
#place(dy:-20pt,[#text(24pt)[```cs 
string[] names = {"Katniss","Peeta","Rue","Thresh"};
```]])
*A For Loop*
#text(24pt)[```cs
string[] names = new string[4];
for (int i=0; i < names.Length; i++) {
  names[i] = Console.Readline();
}
```]

== Parallel arrays
#place(left,dy:-3em,dx:9em,[```cs string[] students = new string[8]; ``` \ ```cs int[] marks = new int[8];```])

If we store two arrays, but use the same index for both systems, then we can effectively store two different types of data for the same index. \ \

EG:
```cs
students[4] = "Jim"; marks[4] = 10;
students[5] = "Angie"; marks[4] = 24;
```
Tells us that Jim scored 10, and Angie scored 24!

== You try:
#place(left,dy:-3em,dx:9em,[```cs string[] students = new string[8]; ``` \ ```cs int[] marks = new int[8];```])
\ \ 
On BPCompSci, *W108 - C\# Arrays* \ \
Remember, take screenshots and code-pastes whenever you complete a challenge.