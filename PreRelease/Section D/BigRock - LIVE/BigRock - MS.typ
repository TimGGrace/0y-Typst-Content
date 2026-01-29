#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 12.1,
      marks: 7,
      solution: [
        *All marks for AO3 (programming)* \

        Marks 1 to 4 relate to the modified methods within the `Simulation` class.
        1. Selection statement within the `Simulation` class constructor identifies the coordinate `(1,4)`; *A.* equivalent
        2. A new `BigRock` is added to the `Grid` with position `(1, 4)`; *R.* if a `Cell` is still added in this position.
        3. Selection statement added within `GetIndicesOfNeighbours` to check for `BigRock`; *A.* any equivalent check. *R.* references to `(1, 4)`
        4. `-1` added to `ListOfNeighbours` in this case. *R.* additional effects.
        Marks 5 to 7 relate to the `BigRock` class.
        5. Creating a new class called `BigRock` that inherits from `Cell`; \
            *R.* other names for class *I.* case and minor typos
        6. Constructor that calls parent class constructor and sets Row and Column to `(1, 4)`. *A.* Row and Column set with the parent class constructor. 
        7. Subroutine called `GetDetails` that overrides parent class method and returns suitable string. *I.* calls to the parent's `GetDetails`.
        
        *Max 6* if code contains errors \
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

        Screen capture showing that one big rock and no ants are in the cell `(1, 4)` after one iteration of the simulation.

        #image("Screenshot.png", height:10cm)
      ]
    ),
    (
      number: 12,
      marks: none,
      solution: [
        *Typical Solution:* \
        *BigRock Class*
        #text(10pt)[```cs class BigRock : Cell
{
    public BigRock(int StartRow, int StartColumn) 
              : base(StartRow, StartColumn) { }
              
    public override string GetDetails()
    {
        return "Big Rock";
    }
}```]
#v(13cm)
*GetIndicesOfNeighbours*
#text(10pt)[```cs
private List<int> GetIndicesOfNeighbours(int Row, int Column)
{
    List<int> ListOfNeighbours = new List<int>();
    foreach (int RowDirection in new int[] { -1, 0, 1 })
    {
        foreach (int ColumnDirection in new int[] { -1, 0, 1 })
        {
            int NeighbourRow = Row + RowDirection, NeighbourColumn = Column + ColumnDirection;
            if ((RowDirection != 0 || ColumnDirection != 0) && NeighbourRow >= 1 && NeighbourRow <= NumberOfRows &&
                NeighbourColumn >= 1 && NeighbourColumn <= NumberOfColumns)
            {
                //Beginning of code-change
                if (Grid[GetIndex(NeighbourRow, NeighbourColumn)] is BigRock)
                {
                    ListOfNeighbours.Add(-1);
                } else ListOfNeighbours.Add(GetIndex(NeighbourRow, NeighbourColumn));
                //End of code change
            }
            else
            {
                ListOfNeighbours.Add(-1);
            }
        }
    }
    return ListOfNeighbours;
}
```]

*Simulation Constructor*
#text(10pt)[```cs
public Simulation(List<int> SimulationParameters)
{
    StartingNumberOfNests = SimulationParameters[0];
    NumberOfRows = SimulationParameters[1];
    NumberOfColumns = SimulationParameters[2];
    StartingFoodInNest = SimulationParameters[3];
    StartingNumberOfFoodCells = SimulationParameters[4];
    StartingAntsInNest = SimulationParameters[5];
    NewPheromoneStrength = SimulationParameters[6];
    PheromoneDecay = SimulationParameters[7];
    int Row, Column;
    for (Row = 1; Row <= NumberOfRows; Row++)
    {
        for (Column = 1; Column <= NumberOfColumns; Column++)
        {
            //Start of modified code
            if (Row == 3 && Column == 3) Grid.Add(new BigRock(Row, Column));
            else Grid.Add(new Cell(Row, Column));
            //End of modified code
        }
    }
    SetUpANestAt(2, 4);

    ...
}
```]
      ]
    )
  )
)
]