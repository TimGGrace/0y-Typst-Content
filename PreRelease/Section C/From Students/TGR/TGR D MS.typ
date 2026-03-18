// #mark-scheme[
// == Set Two
// #cs-ms-table(
//     questions:(
//       (
//         number: 1,
//         marks: 1,
//         solution: [
          
//         ]
//       ),
//       (
//         number: 2,
//         marks: 1,
//         solution: [
          
//         ]
//       ),
//       (
//         number: 3,
//         marks: 1,
//         solution: [
          
//         ]
//       ),
//       (
//         number: 4,
//         marks: 2,
//         solution: [
          
//         ]
//       ),
//       (
//         number: 5,
//         marks: 4,
//         solution: [
          
//         ]
//       )
//     )
//   )
// ]

#import "../../../../Templates/ms-template.typ": *


#mark-scheme[
  == Set One
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          GetDetails;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `3`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `O(1)`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          Missed/Skipped elements;
          Indexing errors;
          Compiler/Syntax Error;
          
          *Max 2*
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          `Entity` is used as the base class for all items in the simulation;
          `Cell` is a more specialised verison of `Entity`;
          Which stores food;
          And has methods for displaying/modifying the quantity of food in the cell;

        ]
      )
    )
  )
]

#mark-scheme[
== Set Two
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          `GetNumberOfAntsInCell` /\/ `GetNumberOfPheromonesInCell` /\/ `GetStrongestPheromoneInCell`;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          Converts a coordinate/2D position into an index (for the one dimensional list `Grid`);
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `100`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          Exits the subroutine should no `Ant`s exist;

          Should there be no `Ant`s, the `Nest` will not make any changes;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          A new class inheriting `Ant`;

          Override `AdvanceStage` to check all Nests in the same cell; \
          Deleting them appropriately;

          Override `ChooseCellToMoveTo` to always select a random valid move;
        ]
      )
    )
  )
]

#mark-scheme[
== Set Three
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          `Worker`;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `GetAreaDetails`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `ChooseCellToMoveTo` /\/ `GetDetails`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          Combining methods and properties into a (single) object; \
          Restricting access to those (methods and properties);
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          Iterates through each neibouring cell; \
          Ignoring invalid positions; *A.* reference to -1 \
          Compare the strength of the strongest pheromone in the cell with the current strongest; \
          If the pheromone is stronger than the current strongest, update the strongest Pheromone and Index of strongest pheromone variables; \
          Return the index of the cell with the strongest pheromone; \
          `-1` is returned if there is no neigbouring cell with any pheromones;

          *Max 4*
        ]
      )
    )
  )
]
#mark-scheme[
== Set Four
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          `0`;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `IndexToUse`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `GetIndicesOfNeighbours`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          Checks if the pheromone is in the given cell;\ 
          Increments the count (by 1) if true/it is in the cell; *R.* if implied the count always increases.

        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          Modify the `Main` method;\ 
          After `SimulationParameters` have been set;\ 
          Ask the user for a number;\ 
          Store that number in `SimulationParameters[3]`;

        ]
      )
    )
  )
]

#mark-scheme[
== Set Five
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          `AddFoodToCell` /\/ `AddFoodToNest`;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `GetDetails` /\/ `GetAreaDetails` /\/ `GetCellDetails`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `Entity`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          (This will) check if the ant is carrying any food; \
          It should/will move towards its nest.;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          1. Generates a random `Row` and `Column` within the grid boundaries;
          2. (uses a definite loop to) iterate through every existing `Nest`;
          3. (Uses an indefinite loop to) repeat the process so long as the location is invalid;
          4. A location is invalid if it a location that already contains a `Nest`;
        ]
      )
    )
  )
]

#mark-scheme[
== Set Six
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

#mark-scheme[
== Set Seven
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          `Entity` /\/ `Ant`;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `10`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `3`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          `(2,4)`;
          (If) the ant is carrying food, it will prioritise moving towards its own nest;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          Within `Nest`'s `AdvanceStage`; \
          Within the first iterative structure; \
          Ensure that QueenAnts are also counted; \
          by incrementing `AntsInNestCount` appropriately;

          *A.* Last two marks covered by 'Move `AntsInNestCount++;` outside of the selection structure.
        ]
      )
    )
  )
]