#import "../../../../Templates/ms-template.typ": *
#mark-scheme[
  == CRP Two
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
]
