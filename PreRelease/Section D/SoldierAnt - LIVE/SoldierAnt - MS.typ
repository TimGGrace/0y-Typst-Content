#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 13.1,
        marks: 11,
        solution: [
          *All marks for AO3 (programming)* \ \
          Mark points 1 to 4 relate to the `SoldierAnt` class. \ \
          1. Creating a new class called `SoldierAnt` that inherits from `Ant`; \
            *R.* other names for class *I.* case and minor typos
          2. Constructor that calls parent class constructor and then sets `TypeOfAnt` to `soldier` && `FoodCapacity` to 0. *A.* alternative method of preventing food carrying.
          3. Subroutine called `ChooseCellToMoveTo` that overrides parent class method.
          4. Random valid index generated, and `ChangeCell` called within `ChooseCelLToMoveTo`
          \ Mark points 5 to 9 relate to the `AdvanceStage` method within the `Simulation` class.
          5. Selection structure to treat `SoldierAnt`s differently to other Ants;
          6. Iterative structure inside the selection structure that identifies at least some Ants to be removed (Same position, different nest and not a queen);
          7. Selects all and only ants to be removed;
          8. Selected Ants added to a separate list for removal;
          9. Selected ants are all removed *after* iterative structure for all Ants;
          \ Mark points 10 and 11 relate to the `SetUpNestAt` method within the `Simulation` class.
          10. Modified `SetUpANestAt` so that nests are set up with an additional soldier ant.
          11. Modified `SetUpANestAt` so that one fewer worker ants are created. \ \
        ]),
        (number: 13.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*
        
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *13.1*, including prompts on screen capture matching those in code. \ Code for *13.1* must be sensible._ \ \
          Screen capture(s) showing that the soldier ant displays correctly and the simulation is uninterrupted. \ \
          *A.* Soldiers work as regular Ants with correct Inspect Cell behaviour
          #v(13cm)
          *Expected Solution*: \
          `SoldierAnt Class`
          #text(10pt)[```cs 
class SoldierAnt : Ant
{
    public SoldierAnt(int StartRow, int StartColumn, int NestInRow, int NestInColumn) : base(StartRow, StartColumn, NestInRow, NestInColumn)
    {
        TypeOfAnt = "Soldier";
        FoodCapacity = 0;
    }
    public override void ChooseCellToMoveTo(List<int> ListOfNeighbours, int IndexOfNeighbourWithStrongestPheromone)
    {
        int IndexToUse = ChooseRandomNeighbour(ListOfNeighbours);
        ChangeCell(IndexToUse,ref Row, ref Column);
    }
}```]

          `Modifications to Simulation`
          #text(10pt)[```cs 
          public void SetUpANestAt(int Row, int Column)
          {
              Nests.Add(new Nest(Row, Column, StartingFoodInNest));
              Ants.Add(new QueenAnt(Row, Column, Row, Column));
              Ants.Add(new SoldierAnt(Row, Column, Row, Column));
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
        List<Pheromone> PheromonesToDelete = new List<Pheromone>();
        foreach (Pheromone P in Pheromones) {
            P.AdvanceStage(Nests, Ants, Pheromones);
            if (P.GetStrength() == 0)
            {
                PheromonesToDelete.Add(P);
            }
        }
        foreach (Pheromone P in PheromonesToDelete) {
            Pheromones.Remove(P);
        }
        List<Ant> AntsToCull = new List<Ant>();
        foreach (Ant A in Ants) {
            A.AdvanceStage(Nests, Ants, Pheromones);
            //Start of edit
            if (A.GetTypeOfAnt() == "Soldier")
            {
                A.ChooseCellToMoveTo(GetIndicesOfNeighbours(A.GetRow(), A.GetColumn()),GetIndexOfNeighbourWithStrongestPheromone(A.GetRow(), A.GetColumn()));
                foreach (Ant B in Ants)
                {
                    if (A.InSameLocation(B) 
                        && (A.GetNestRow() != B.GetNestRow() || A.GetNestColumn() != B.GetNestColumn()) 
                        && B.GetTypeOfAnt() != "queen")
                    {
                        AntsToCull.Add(B);
                    }
                }
                continue;
            }
            //End of edit
            Cell CurrentCell = Grid[GetIndex(A.GetRow(), A.GetColumn())];
            if (A.GetFoodCarried() > 0 && A.IsAtOwnNest()) {
                AddFoodToNest(A.GetFoodCarried(), A.GetRow(), A.GetColumn());
                A.UpdateFoodCarried(-A.GetFoodCarried());
            }
            else if (CurrentCell.GetAmountOfFood() > 0 && A.GetFoodCarried() == 0 && A.GetFoodCapacity() > 0) {
                int FoodObtained;
                do {
                    FoodObtained = RGen.Next(1, A.GetFoodCapacity() + 1);
                } while (FoodObtained > CurrentCell.GetAmountOfFood() || (A.GetFoodCarried() + FoodObtained) > A.GetFoodCapacity());
                CurrentCell.UpdateFoodInCell(-FoodObtained);
                A.UpdateFoodCarried(FoodObtained);
            }
            else {
                if (A.GetFoodCarried() > 0) {
                    UpdateAntsPheromoneInCell(A);
                }
                A.ChooseCellToMoveTo(GetIndicesOfNeighbours(A.GetRow(), A.GetColumn()),
                                        GetIndexOfNeighbourWithStrongestPheromone(A.GetRow(), A.GetColumn()));
            }
        }

        //Start of edit
        foreach (Ant A in AntsToCull) Ants.Remove(A);
        //End of edit

        foreach (Nest N in Nests) {
            N.AdvanceStage(Nests, Ants, Pheromones);
        }
    }
}```]
        ]
      ),
    )
  )
]