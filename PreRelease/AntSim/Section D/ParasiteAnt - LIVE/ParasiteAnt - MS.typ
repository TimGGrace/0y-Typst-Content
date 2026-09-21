#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 4,
      solution: [
        *All marks for AO3 (programming)* \ \
        1. Class created with the correct identifier, inheriting from `Ant`;
        2. Constructor correctly calls the parent class constructor;
        3. `TypeOfAnt` set to '`parasite`'; *R.* other strings, *I.* case
        4. New `ParasiteAnt` correctly made within the Simulation Class constructor and added to the Ant list; *R.* alternative coordinates
      ]
    ),
    (
      number: 11.2,
      marks: 1,
      solution: [
        *Mark is for AO3 (evaluate)*
        
        *\*\*\* SCREEN CAPTURE \*\*\** \
        _Must match code from *11.1*. \
        Code for *11.1* must be sensible._ 

        Screen capture showing an ant labeled 'parasite' within the nest both before and after a single stage progesses. Food in the nest should change from 500 to 480.
        #grid(columns:(0.8fr,0.8fr), column-gutter: 5pt,
        [Screenshot 1:#image("solution1.png", height:14cm)],
        [Screenshot 2:#image("solution2.png", height:14cm)])
        #v(13cm)
      ]
    ),
    (
      number:11,
      marks: none,
      solution: [ 
*New Class, `ParasiticAnt`*
```cs class ParasiteAnt : Ant
{
  public ParasiteAnt(int StartRow, int StartColumn, int NestInRow, int NestInColumn)
  : base(StartRow, StartColumn, NestInRow, NestInColumn)
  {
    TypeOfAnt = "parasite";
  }
}
```
*Modified `Simulation` Class constructor:*
```cs ...
  Ants.Add(new ParasiticAnt(2, 4, 2, 4));
}
```
]
    )
  )
)]