#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 12.1,
      marks: 7,
      solution: [
        *All marks for AO3 (programming)* \

        1. `Simulation` constructor modified to add a single `PoisonPheromone` object to the Pheromones List. *A.* equivalent, eg additional list created if its use is clear (ie. AdvanceStage is also provided)
        
        
        Marks 2 to 7 relate to the `PoisonPheromone` class.
        2. Creating a new class called `PoisonPheromone` that inherits from `Pheromone`; \
            *R.* other names for class *I.* case and minor typos
        3. Constructor that calls parent class constructor and sets Row and Column to 3. *A.* Row and Column set with the parent class constructor. 
        4. Constructor sets `BelongsTo` to -1, `Strength` to `2500` and `PheromoneDecay` to `1000`; *A.* use of parent constructor to achieve this.
        5. Subroutine called `AdvanceStage` that overrides parent class method and reduces Pheromone Strength; *A.* use of parent class `AdvanceStage` to achieve this.
        6. Iterative structure compares location of each ant with the location of the `PoisonPheromone`
        7. Ants in the same location are suitable added to a list for later deletion, then removed from the `Ants` list. *A.* suitable alternative.
        
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

        Screen capture showing Ants are present around `(2, 4)` and a Pheromone at `(3, 3)`. After two time steps, Pheromone should have strength 500, and no ants should be within `(3, 3)`. *A.* if an ant has wandered to the nest, as this may have happened from the other nest.
      ]
    ),
    (
      number: 12,
      marks: none,
      solution: [
        *Typical Solution:* \
        *Simulation Constructor*
        #text(10pt)[```cs
public Simulation(List<int> SimulationParameters) {
    ...
    Pheromones.Add(new PoisonPheromone(3, 3));
    ...
}
```]
#v(14em)
*PoisonPheromone Class*
        #text(9.9pt)[```cs
class PoisonPheromone : Pheromone {
  public PoisonPheromone(int Row, int Column) : base(Row, Column, -1, 500, 200) 
  {
  }
  public override void AdvanceStage(List<Nest>N, List<Ant>A, List<Pheromone> P) {
      base.AdvanceStage(N, A, P);
      List<Ant> AntsToCull = new List<Ant>();
      foreach (Ant a in A) {
          if (InSameLocation(a)) { 
              AntsToCull.Add(a); 
          }
      }
      foreach (Ant a in AntsToCull) {
          A.Remove(a);
      }
  }
}
```]
]
)))]
        


