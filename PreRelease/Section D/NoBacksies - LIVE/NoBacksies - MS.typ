#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 14.1,
        marks: 11,
        solution: [
          *All marks for AO3 (programming)* \ \
          Mark points 1 to 3 relate to the `Ant` class.
          1. Adding a collection to store positions within the Ant class; *A.* by index or coordinate. *A.* Storing unique values or lists with duplicates;
          2. `AdvanceStage` contains selection structure comparing position to `Nest` location. *A.* any acceptable method;
          3. `AdvanceStage` clears the list appropriately;

          Mark points 4 to 10 relate to the `WorkerAnt` class.
          4. Second selection structure within `ChooseCellToMoveTo` references visited locations. *R.* altered pheromone-less behaviour; *R.* This modifies the 'return to nest' behaviour.
          5. Iterative structure goes through `ListOfNeighbours`;
          6. Selection statement within the iterative structure to skip/ignore -1;
          7. Valid neighbours are added to a list;
          8. Selection structure for no valid neighbours correctly exits without the ant moving;
          9. Iterative structure with random position/index generated within;
          10. Iterative structure continues until valid not-visited neighbour is generated. *A.* random valid neighbour chosen from previously generated list;
          
          \ Mark points 11 relates to the modified `Simulation` class.
          11. Ant's current location is added to the list after the stage advances. *A.* Nest location is not added.
        ]),
        (number: 14.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)* \
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *14.1*, including prompts on screen capture matching those in code. \ Code for *14.1* must be sensible._ 
          
          Screen capture(s) showing that after 40 stages, there are still ants.
          *A.* Simulations in which all ants are dead, provided code correct code as it is not guaranteed. ( \~ 70% will have ants.)
          *Expected Solution*: 
          
          *Changes to `Simulation.AdvanceStage`*
        ```cs foreach (Ant A in Ants)
{
    A.AdvanceStage(Nests, Ants, Pheromones);
    A.visitedPositions.Add(GetIndex(A.GetRow(), A.GetColumn()));
    ...
```
          #v(13cm)       
          *Modifications to `Ant.AdvanceStage`*
          ```cs public override void AdvanceStage(List<Nest> Nests, List<Ant> Ants, List<Pheromone> Pheromones)
{
    Stages++;

    if (IsAtOwnNest()) visitedPositions = new List<int>();
}```
          *Modifications to `WorkerAnt.ChooseCellToMoveTo`*
          ```cs
public override void ChooseCellToMoveTo(List<int> ListOfNeighbours, int IndexOfNeighbourWithStrongestPheromone)
{
    if (AmountOfFoodCarried > 0)
    {
        if (Row > NestRow)
        {
            Row--;
        }
        else if (Row < NestRow)
        {
            Row++;
        }
        if (Column > NestColumn)
        {
            Column--;
        }
        else if (Column < NestColumn)
        {
            Column++;
        }
    }
    else if (IndexOfNeighbourWithStrongestPheromone == -1
         || visitedPositions.Contains(
               IndexOfNeighbourWithStrongestPheromone))
 {
     List<int> validNeighbours = new List<int>();
     foreach (int index in ListOfNeighbours)
     {
         if (index != 0 && !visitedPositions.Contains(index))
         {
             validNeighbours.Add(index);
         }
     }
     if (validNeighbours.Count() == 0) return;

     int IndexToUse = -1;
     do
     {
         IndexToUse = ChooseRandomNeighbour(ListOfNeighbours);
     } while (visitedPositions.Contains(IndexToUse));

     ChangeCell(IndexToUse, ref Row, ref Column);
    }
    else
    {
        int IndexToUse = ListOfNeighbours.IndexOf(IndexOfNeighbourWithStrongestPheromone);
        ChangeCell(IndexToUse, ref Row, ref Column);
    }
}
          ```
        

        ]
          
      ),
    )
  )
]