#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 13.1,
      marks: 11,
      solution: [
        *All marks for AO3 (programming)* \ \
        Marks 1 to 8 are for the new method `GetIndexOfStrongestFood`
        1. Method with the correct interface; (Correct name, two integer parameters, returns an integer)
        2. Variables for storing the index of the best food-cell found;
        3. List of valid neigbours generated; (Likely through `GetIndicesOfNeighbours`, *A.* equivalent)
        4. Iterative structure iterates once for each valid neigbours 
        5. Selection structure within iterative structure to 'skip' `-1`s; *A.* equivalent
        6. Quantity of food within a cell is found.
        7. Iterative structure compares food within a cell with the best found so far.
        8. Index of the cell with the most food is returned in all cases, `-1` if no food is found;

        Marks 9 to 11 are for the modified `AdvanceStage` \ within the `Simulation` class.
        9. Index of the strongest nearby food is found for each Ant;
        10. Selection structure with all correct conditions; (*Not* carrying food, *not* a queen and *not* near pheromones)
        11. Ant's position is updated appropriately within the selection structure;
        #v(40cm)
      ]
    ),
    (
      number: 13.2,
      marks: 1,
      solution: [
        *Mark is for AO3 (evaluate)*
        
        *\*\*\* SCREEN CAPTURE \*\*\** \
        _Must match code from *13.1*. \
        Code for *13.1* must be sensible._ 

        Screen capture showing food in a cell adjacent to the nest in `(2, 4)`, followed by the simulation advancing 1 stage.
        
        There should then be 4 ants in the same cell next to the Nest.
        #grid(columns:(0.8fr,0.8fr), column-gutter: 5pt,
        [Screenshot 1:#image("solution1.png", height:14cm)],
        [Screenshot 2:#image("solution2.png", height:14cm)])
        #v(13cm)
      ]
    ),
    (
      number:11,
      marks: none,
      solution: [ 
*New Method, `GetIndexOfStrongestFood`*
```cs public int GetIndexOfStrongestFood(int Row, int Column)
{
  int bestFoodPos = -1;
  int bestFoodQuantity = 0;
  List<int> neighbours = GetIndicesOfNeighbours(Row, Column);
  foreach (int pos in neighbours)
  {
    if (pos == -1) continue;
    int foodPresent = Grid[pos].GetAmountOfFood();
    if ( foodPresent > bestFoodQuantity)
    {
      bestFoodPos = pos;
      bestFoodQuantity = foodPresent;
    }
  }

  return bestFoodPos;
}
```
*Modified `Simulation` Class `AdvanceStage`:*
```cs ...
else
{
  if (A.GetFoodCarried() > 0)
  {
    UpdateAntsPheromoneInCell(A);
  }

  int FoodPosition = GetIndexOfStrongestFood(A.GetRow(), A.GetColumn());
  if (A.GetFoodCarried() > 0 
      || FoodPosition == -1 
      || A.GetTypeOfAnt() == "queen") {
    A.ChooseCellToMoveTo(GetIndicesOfNeighbours(A.GetRow(), A.GetColumn()),
                          GetIndexOfNeighbourWithStrongestPheromone(A.GetRow(), A.GetColumn()));
  } else
  {
    Cell NewPos = Grid[FoodPosition];
    A.Row = NewPos.Row;
    A.Column = NewPos.Column;
  }
}
```
]
    )
  )
)]