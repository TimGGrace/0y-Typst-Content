#import "../../../../Templates/ms-template.typ": *

// == Set Two
// #mark-scheme[
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

#mark-scheme[
  == Set One
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          `500`;
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
          To determine if two entities have the same row and column;\
          *A.* Two entities are in the same location (within the grid)
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          Iterating through the list of `Ant`s; \
          Count any that are in the same location/chosen cell;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          1. An ant will not move if it is carrying food and is at its nest, or not carrying food and on a cell with food;
          2. If the ant is carrying food, move towards its nest;
          3. If the ant is not carrying food and there is a pheromone in an adjacent cell, move to the strongest adjacent cell with pheromone;
          4. In all other cases, move to a random (valid) adjacent cell;

          *R.* points out of order.
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
          `GetChoice` /\/ `GetDetails` /\/ `GetTypeOfAnt`;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `WorkerAnt` /\/ `QueenAnt`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `GetDetails` /\/ `ChooseCellToMoveTo`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          A virtual method may contain code/implementation; \ 
          An abstract method cannot contain code;

          A class that contains an abstract method must also be abstract;

          *Max 2*
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          Within the final selection clause; \
          After the ant has moved once; \
          Check if the new cell also has a pheromone-neighbour; \
          If so, move again;

          *R.* solutions referencing recursive calls to `ChooseCellToMoveTo` unless they also prevent movement more than twice (ie through the addition of extra parameters)
    
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
          Boolean;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `Row` /\/ `Column`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `100` (per stage);
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          Public methods can be called from anywhere within the program;

          Protected methods can only be called within the class and any class that inherits from it;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          Iterating through every possible neigbour; \
          If the cell is off the grid or is the current cell; \
          Add `-1` to the list;
          Otherwise add the cell's index to the list;
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
          `GetIndex` /\/ `GetIndexOfNeighbourWithStrongestPheromone`;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `-1`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `Count` /\/ `A`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          You cannot/should not remove items from a list/collection you are itterating through;

          This can lead to index errors / missing items / crashes;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          Ask the user for an amount of food to place in cells; \
          After the simulation parameters have been set; \
          Change the value of `SimulationParameters[3]`; \
          Then create the `ThisSimulation` object;
        ]
      )
    )
  )
]