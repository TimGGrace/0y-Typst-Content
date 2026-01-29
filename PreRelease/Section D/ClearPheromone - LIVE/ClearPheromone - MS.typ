#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 4,
      solution: [
        *All marks for AO3 (programming)*

        1. Selection statement, in correct location, to check if cell is now devoid of food.
        2. Iterative structure within selection structure iterates through all Pheromones. 
        3. Pheromones in the same cell are added to a list to remove. *R.* if this could identify Pheromones incorrectly.
        4. Pheromones removed appropriately. *R.* Additional Pheromones removed or Pheromones missed
        
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

        Screen capture showing result when `1` then `1` is entered followed by `20` stage advances, followed by `1`. No Pheromones should be in a cell with that had food in the initial image, and does not in the second image.
      ]
    ),
    (
      number: 11,
      marks: none,
      solution: [
        *Typical Solution:*
        ```cs         ...
CurrentCell.UpdateFoodInCell(-FoodObtained);
A.UpdateFoodCarried(FoodObtained);

PheromonesToDelete = new List<Pheromone>();
if (CurrentCell.GetAmountOfFood() == 0){
    foreach (Pheromone P in Pheromones) {
        if (P.InSameLocation(CurrentCell)) {
            PheromonesToDelete.Add(P);
        }
    }
}
foreach (Pheromone P in PheromonesToDelete) {
    Pheromones.Remove(P);
}
        ...
            }```
      ]
    )
  )
)
]