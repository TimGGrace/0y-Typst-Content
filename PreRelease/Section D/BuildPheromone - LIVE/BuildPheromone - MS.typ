#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 4,
      solution: [
        *All marks for AO3 (programming)*

        1. Selection statement modified to no-longer check for ant ownership
        2. Correct calculation for new strength;
        3. Pheromone's strength updated correctly;
        4. Code prevents pheromones ever being made in the same location as a nother Pheromone.
        
        *Max 3* if code contains errors \
        
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

        Screen capture showing only one or zero pheromones per cell.
      ]
    ),
    (
      number: 11,
      marks: none,
      solution: [
        *Typical Solution:*
        ```cs public void UpdateAntsPheromoneInCell(Ant A)
{
    foreach (Pheromone P in Pheromones)
    {
        if (P.InSameLocation(A))
        {
            int newStrength = P.GetStrength() + NewPheromoneStrength / 2;
            P.UpdateStrength(newStrength);
            return;
        }
    }
    Pheromones.Add(new Pheromone(A.GetRow(), A.GetColumn(), 
                    A.GetID(), NewPheromoneStrength, PheromoneDecay));
}```
      ]
    )
  )
)
]