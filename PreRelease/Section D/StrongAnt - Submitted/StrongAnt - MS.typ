#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 12.1,
        marks: 7,
        solution: [
          *All marks for AO3 (programming)* \ \
          Mark points 1 to 3 relate to the `StrongAnt` class. \ \
          1. Creating a new class called `StrongAnt` that inherits from `WorkerAnt`; \
            *R.* other names for class *I.* case and minor typos
          2. Constructor that calls parent class constructor and then sets `TypeOfAnt` to `strong`
          3. Constructor sets `FootCapacity` to 100.
          \ Mark points 4 and 5 relate to the `AdvanceStage` method within the `Simulation` class.
          4. Selection structure to compare type of ant to "strong"; \ *A.* equivalent method of checking for strong ants.
          5. Correct Pheromone behaviour;
          \ Mark points 6 and 7 relate to the `SetUpNestAt` method within the `Simulation` class.
          6. Modified `SetUpANestAt` so that nests are set up with an additional strong ant.
          7. Modified `SetUpANestAt` so that one fewer worker ants are created. \ \
        ]),
        (number: 12.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*

          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *12.1*, including prompts on screen capture matching those in code. \ Code for *12.1* must be sensible._ \ \
          Screen capture(s) showing that the soldier ant displays correctly and the simulation is uninterrupted.
          
          *A.* Soldiers work as regular Ants with correct Inspect Cell behaviour
          
          *Expected Solution*: \
          `StrongAnt Class`
          #text(10pt)[```cs 
class StrongAnt : WorkerAnt
{
    public StrongAnt(int StartRow, int StartColumn, int NestInRow, int NestInColumn)
        : base(StartRow, StartColumn, NestInRow, NestInColumn)
    {
        TypeOfAnt = "strong";
        FoodCapacity = 100;
    }
}```]
          #v(3cm)
          `Modifications to Simulation`
          #text(10pt)[```cs 
          public void SetUpANestAt(int Row, int Column)
          {
              Nests.Add(new Nest(Row, Column, StartingFoodInNest));
              Ants.Add(new QueenAnt(Row, Column, Row, Column));
              Ants.Add(new Strong(Row, Column, Row, Column));
              for (int Worker = 3; Worker <= StartingAntsInNest; Worker++)
              {
                  Ants.Add(new WorkerAnt(Row, Column, Row, Column));
              }
          }```]

          `Modifications to AdvanceStage`
          #text(10pt)[```cs
public void AdvanceStage(int NumberOfStages)
{
    ...
    else
    {
        // Modified statement for pheromones:
        if (A.GetFoodCarried() > 0 && A.GetTypeOfAnt() != "strong")
        {
            UpdateAntsPheromoneInCell(A);
        }
        A.ChooseCellToMoveTo(GetIndicesOfNeighbours(A.GetRow(), A.GetColumn()),
                             GetIndexOfNeighbourWithStrongestPheromone(A.GetRow(), A.GetColumn()));
    }
...
}```]
        ]
      ),
    )
  )
]