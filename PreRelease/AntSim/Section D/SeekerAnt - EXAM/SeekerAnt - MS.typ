#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 14.1,
        marks: 11,
        solution: [
          *All marks for AO3 (programming)* \ \
          Mark points 1 and 2 relate to the `SeekerAnt` class. \ \
          1. Creating a new class called `SeekerAnt` that inherits from `WorkerAnt`; \
            *R.* other names for class *I.* case and minor typos
          2. Constructor that calls parent class constructor and then sets `TypeOfAnt` to `seeker` && `FootCapacity` to `5`.
          3. Method `SeekFood` created with correct interface.
          4. Iterative structure that checks each cell within the grid.
          5. Selection structures comparing each cell's food amount to 0.
          6. Distance between Ant and a Cell is correctly calculated.
          7. Cell with lowest Manhattan Distance is identified.
          8. Ant moves towards this cell.
          \ Mark point 9 refers to the `AdvanceStage` method within the `Simulation` class.          
          9. Selection structure calls `SeekerAnt`s `SeekFood` method in the correct location; *R.* If Seeker Ant is unable to move correctly under all circumstances.
          \ Mark points 10 and 11 relate to the `SetUpNestAt` method within the `Simulation` class.
          10. Modified `SetUpANestAt` so that nests are set up with an additional seeker ant.
          11. Modified `SetUpANestAt` so that one fewer worker ants are created. \ \
        ]),
        (number: 14.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*
        
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *14.1*, including prompts on screen capture matching those in code. \ Code for *14.1* must be sensible._ \ \
          Screen capture(s) showing at least one ant paths directly towards the nearest food.
          #v(13cm)
          *Expected Solution*: \
          `Seeker Class`
          #text(10pt)[```cs 
class SeekerAnt : WorkerAnt
{
    public SeekerAnt(int Row, int Column) : base(Row, Column, Row, Column) {
        TypeOfAnt = "seeker";
        FoodCapacity = 5;
    }
    public void SeekFood(List<Cell> grid)
    {
        Cell bestCell = null;
        int bestDistance = int.MaxValue;
        foreach (Cell c in grid)
        {
            if (c.GetAmountOfFood() == 0) continue;

            int distance = Math.Abs(c.GetColumn() - Column) + Math.Abs(c.GetRow() - Row);
            if (distance < bestDistance)
            {
                bestDistance = distance;
                bestCell = c;
            }
        }
        if (Row < bestCell.GetRow())
        {
            Row++;
        } else if (Row > bestCell.GetRow())
        {
            Row--;
        }
        if (Column < bestCell.GetColumn())
        {
            Column++;
        }
        else if (Column > bestCell.GetColumn())
        {
            Column--;
        }
    }
}```]

          `Modifications to Simulation`
          #text(10pt)[```cs 
          public void SetUpANestAt(int Row, int Column)
          {
              Nests.Add(new Nest(Row, Column, StartingFoodInNest));
              Ants.Add(new QueenAnt(Row, Column, Row, Column));
              Ants.Add(new SeekerAnt(Row, Column));
              for (int Worker = 3; Worker <= StartingAntsInNest; Worker++)
              {
                  Ants.Add(new WorkerAnt(Row, Column, Row, Column));
              }
          }```]

          `Modifications to AdvanceStage`
          #text(10pt)[```cs
public void AdvanceStage(int NumberOfStages)
{
    for (int Count = 1; Count <= NumberOfStages; Count++)
    {
      ...
      
        if (A.GetFoodCarried() > 0)
        {
            UpdateAntsPheromoneInCell(A);
        }
        if (A.GetFoodCarried() > 0 || A.GetTypeOfAnt() != "seeker"){
            A.ChooseCellToMoveTo(GetIndicesOfNeighbours(A.GetRow(), A.GetColumn()),
                             GetIndexOfNeighbourWithStrongestPheromone(A.GetRow(), A.GetColumn()));
        } else
        {
            ((SeekerAnt)A).SeekFood(Grid);
        }
        ...
    }
}```]
        ]
      ),
    )
  )
]