#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 12.1,
      marks: 7,
      solution: [
        1. Variable `StagesPassed` exists within `Simulation`; *A.* by implication within AdvanceStage
        
        Marks 2 - 7 refer to the `AdvanceStage` method within the `Simulation` class.
        2. `StagesPassed` is incremented within `Simulation` after all other behaviours;
        3. Selection structure with one correct condition;
        4. Selection structure with two correct conditions;
        5. A random cell is selected; *A.* if this could contain a nest;
        6. A random cell that does *not* contain a nest is always selected;
        7. A random value between 100 and 500 is added to the cell;

        *NOTE:* For marks 3 and 4, the correct conditions are: `StagesPassed != 0` and `StagesPassed % 5 == 0`
      ]
    ),
    (
      number: 12.2,
      marks: 1,
      solution: [
        *Mark is for AO3 (evaluate)*
        
        *\*\*\* SCREEN CAPTURE \*\*\** \
        _Must match code from *12.1*. \
        Code for *12.1* must be sensible._ 

        Screen capture showing 1500 food at stage 0, then no more than 1500 food at stage 4, followed by more food at stage 5 (more than stage 4)
        #image("screenshot1.png", height:13.5cm)
        #grid(columns:2, column-gutter: 5pt,
        image("screenshot2.png", height:14cm),
        image("screenshot3.png", height:14cm))
        #v(13cm)
      ]
    ),
    (
      number:12,
      marks: none,
      solution: [
        *Modified AdvanceStage within Simulation class:*
        ```cs ...
        if(StagesPassed%5==0 && StagesPassed>0)
        {
            int cell = -1;
            bool done = false;
            while(!done)
            {
                cell = RGen.Next(0, Grid.Count());
                done = true;
                foreach(Nest N in Nests)
                {
                    if (Grid[cell].InSameLocation(N))
                    {
                        done = false;
                    }
                }
            }
            Grid[cell].UpdateFoodInCell(RGen.Next(100, 501));
        }
        StagesPassed++;
        ```
        ]
    )
  )
)]