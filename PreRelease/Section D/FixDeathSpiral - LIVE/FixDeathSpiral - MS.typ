#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 13.1,
        marks: 11,
        solution: [
          *All marks for AO3 (programming)* \ \
          Marks 1 to 4 discuss changes to the `Ant` class.
          1. `Ant` class contains a public `StepsTaken` variable; *A.* other method of public access.
          2. `UpdateFoodCarried` sets `StepsTaken` to `0`;
          3. Selection statement within `Ant.AdvanceStage` checks if the AmountOfFoodCarried is 0;
          4. If the ant is carrying food, StepsTaken is incremented;
          
          Marks 5 to 7 discuss changes to `UpdateFoodCarried` method within the `Simulation` Class.
          5. Calculation to find new Pheromone Strength includes reference to the ant A's StepsTaken;
          6. Correct calculation to find new Pheromone strength;
          7. This value is used within the call the Pheromone constructor; *R.* Also changes the call to UpdateStrength

          Marks 8 to 11 discuss changes to the `AdvanceStage` method within the `Simulation` class.
          8. Selection statement to check if a cell is now devoid of food;
          9. Iteration structure to detect Pheromones in the same cell;
          10. A list of AntID's created for any ant that has contributed to *that* cell's Pheromones; *A.* This list contains duplicates. *R.* Additional AntID's can be selected;
          11. Iterative structure removes Pheromones that match that AntID; *R.* if additional Pheromones can be removed.
        ]),
        (number: 13.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*
        
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *13.1*, including prompts on screen capture matching those in code. \ Code for *13.1* must be sensible._ 
          
          Screen capture(s) showing that after 40 stages, there are still ants.
          *A.* Simulations in which all ants are dead, provided code correct code as it is not guaranteed. ( \~ 70% will have ants.)
          
          #v(13cm)
          *Expected Solution*: \
          *UpdateAntsInPheromoneInCell:*
          ```cs public void UpdateAntsPheromoneInCell(Ant A)
{
    
    foreach (Pheromone P in Pheromones)
    {
        if (P.InSameLocation(A) && P.GetBelongsTo() == A.GetID())
        {
            
            P.UpdateStrength(NewPheromoneStrength);
            return;
        }
    }
    int PheromoneStrength = NewPheromoneStrength - A.StepsTaken * PheromoneDecay - 1;
    Pheromones.Add(new Pheromone(A.GetRow(), A.GetColumn(), A.GetID(), PheromoneStrength, PheromoneDecay));
}```\ \ 
*Ant.AdvanceStage:*
```cs public override void AdvanceStage(List<Nest> Nests, List<Ant> Ants, List<Pheromone> Pheromones)
{
    Stages++;

    if (AmountOfFoodCarried > 0) StepsTaken++;
}``` \ \
*Ant.UpdateFoodCarried:*
```cs 
public virtual void UpdateFoodCarried(int Change)
{
    StepsTaken = 0;
    AmountOfFoodCarried += Change;
}```
        ]
      ),
    )
  )
]