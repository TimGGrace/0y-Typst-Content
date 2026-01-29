#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 6.0000001,
        marks: 3,
        solution: [
          The ant checks if there is a neighbour with a "strongest pheromone" (if the index returned is not -1); \ \
          If no pheromone is detected (index is -1), the ant selects a random neighbour from the available list; \ \
          If a pheromone is detected, the ant selects the neighbour cell associated with that strongest pheromone index;
        ]
      ),
    )
  )

  #cs-ms-table(
    questions:(
      (
        number: 7.1,
        marks: 1,
        solution: [
          `O(n)` / Linear / `O(Nests.Count)`;
        ]
      ),
      (
        number: 7.2,
        marks: 2,
        solution: [
          Because the algorithm is iterating through the collection; \
          Removing an item could cause unintended consequences \// skip Pheromones;
        ]
      )
    )
  )
  #cs-ms-table(
    questions:(
      (
        number: 9.000001,
        marks: 2,
        solution: [
          *Max 2* \ \
          No calculations would be needed to access Cells at a given coordinate; \
          It makes the data structure closer represent the simulation; \
          It (may) result in faster lookups; \
          It would prevent cells outside of the grid being indexed; (*A.* reference to wrap-around issues)
        ]
      ),
    )
  )
  #cs-ms-table(
    questions:(
      (
        number: 10.000001,
        marks: 1,
        solution: [
          So that the parent/base class's variables are initialised correctly;
        ]
      ),
    )
  )
]