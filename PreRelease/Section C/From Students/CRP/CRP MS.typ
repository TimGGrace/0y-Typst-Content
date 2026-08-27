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
          GetIndicesOfNeigbours;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          GetFoodCapacity
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          GetNumberOfAntsInCell /\/ GetNumberOfPheromonesInCell /\/ GetStrongestPheromoneInCell;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          Private attributes can only be accessed by/within the class/object they belong to;

          Protected attributes can be accessed by/within the owning class and any classes that inherit from it;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          If there are no ants in the nest, nothing happens;\
          The food required for every ant in the nest is calculated; *A.* explanation as to calculation.\          
          That food is then consumed from the nest's store;\
          If there is insufficient food, between 1 and 3 ants will be culled;\
          If no ants are to be culled, there is a 50% chance that a new ant will be created. 2% of the new ants will be Queens;

          *Max 4*
        ]
      )
    )
  )
  == Set Two
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          WorkerAnt /\/ QueenAnt;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          Additional parameters can be added easily/without modifying the interface/parameters; \
          *A.* any reasonable advantage. \
          *R.* obfuscation.
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          No neighbouring cells contain pheromones;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          (The first iterative structure) controls the number of stages to progress;\
          (The second iterative structure) loops through each Pheromone (so that it can weaken);
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          If it has food, it moves towards its nest; \
    By adjusting its row and column by at most 1 unit separately; \
    If none of its neighbours has a pheromone, it chooses a random neighbour to move to; \
    If a neighbouring cell contains a pheromone, it moves to the cell with the strongest pheromone;
        ]
      )
    )
  )
  == Set Three
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          Row /\/ Column /\/ ID;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          Entity;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          GetDetails /\/ ChooseCellToMoveTo;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          Encapsulation is combining attributes and methods into a single class; \
          And being able to restrict their access;
        ]
      )
    )
  )
]
