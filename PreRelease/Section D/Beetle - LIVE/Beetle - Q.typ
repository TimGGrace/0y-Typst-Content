#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 14.1,
        marks: 11,
        solution: [
          *All marks for AO3 (programming)* \ \
          Mark points 1 to 7 relate to the `Beetle` class. \ \
          1. Creating a new class called `Beetle` that inherits from `Entity`; \
            *R.* other names for class *I.* case and minor typos
          2. Constructor that calls parent class constructor and sets Row and \ Column to 3. *A.* Row and Column set after the call to the parent class constructor.
          3. Subroutine called `AdvanceStage` that overrides parent class method.
          4. Random valid position is generated; *R.* Beetle is capable of not moving.
          5. Iterative structure that checks each Ant.
          6. All Ants in the same position added to a list for removal.
          7. Removal occurs *after* the iterative structure. *A.* equivalent (eg manipulation of iterator variable)
          \ Mark points 8 to 11 relate to the modified methods within the `Simulation` class.
          8. `GetAreaDetails`, `GetDetails` and `GetCellDetails` contain selection structure comparing a Cell's location to the beetle's location.
          9. All selection structures correctly display `Beetle` when necessary. \ *R.* alternative strings. *I.* case and minor typos
          10. Call to Beetle's `AdvanceStage` made within the primary iteration structure. *R.* Beetle's `AdvanceStage` will be called multiple times per stage.
          11. Call to Beetle's `AdvanceStage` made after all Ants have moved.
        ]),
        (number: 14.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)* \
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *14.1*, including prompts on screen capture matching those in code. \ Code for *14.1* must be sensible._ 
          
          Screen capture(s) showing that the beetle displays correctly and the simulation is uninterrupted. 
          
          *R.* Beetle is seen in a cell with an ant.
          #v(13cm)
          *Expected Solution*: \
          `Beetle Class`
          #text(10pt)[```cs 
class Beetle : Entity
{
    public Beetle() : base(3, 3)
    {
    }

    public override void AdvanceStage(List<Nest> Nests, List<Ant> Ants, List<Pheromone> Pheromones)
    {
        int newCol = -1; int newRow = -1;
        do
        {
            newCol = Column + RGen.Next(3) - 1;
            newRow = Row + RGen.Next(3) - 1;
        } while (newCol == Column && newRow == Row);
        Row = newRow;
        Column = newCol;

        List<Ant> AntsToCull = new List<Ant>();
        foreach (Ant a in Ants)
        {
            if (InSameLocation(a))
            {
                AntsToCull.Add(a);
            }
        }
        foreach (Ant a in AntsToCull) Ants.Remove(a);
    }
}```]

          `Modifications to GetAreaDetails and GetDetails`
          #text(10pt)[```cs
if (AmountOfFood > 0) {
    Details += $"| {AmountOfFood} food |  ";
}
if (TempCell.InSameLocation(beetle)) {
    Details += "| Beetle |";
}
          ```]

          `Modifications to GetCellDetails`
          #text(10pt)[```cs
if (CurrentCell.InSameLocation(beetle)) {
    Details += "| Beetle |";
}
          ```]

          `Modifications to AdvanceStage`
          #text(10pt)[```cs
public void AdvanceStage(int NumberOfStages)
{
    ...
        foreach (Nest N in Nests) {
            N.AdvanceStage(Nests, Ants, Pheromones);
        }
        beetle.AdvanceStage(Nests, Ants, Pheromones);
    }
}```]
        ]
      ),
    )
  )
]