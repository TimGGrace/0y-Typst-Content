#import "../../../../Templates/ms-template.typ": *

#mark-scheme[
  == TGR C One
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
