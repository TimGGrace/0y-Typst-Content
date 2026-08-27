#import "../../../../Templates/ms-template.typ": *

#mark-scheme[
== TGR D Six
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          `Simulation`;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `0`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `AdvanceStage`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          No neighbouring cell has (any) pheromones; \
          The Ant will move to a random neighbour;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          Identifies `(A.GetFoodCarried() + FoodObtained) > A.GetFoodCapacity()` as the unnecessary logical statement;

          Ants will always be carrying `0` food if they are attempting to pick up food (so `A.GetFoodCarried()` will always be `0`);

          Therefore that FoodObtained will always be less than the ant's food capacity (due to the bounds defined in the random amount picked up);

          (So the) logical statement will always be false;
        ]
      )
    )
  )
]