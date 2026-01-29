#import "../../../Templates/ms-template.typ": *

#mark-scheme[
  #cs-ms-table(
    questions:(
      (
        number: 6.000001,
        marks: 3,
        solution: [
          The nest calculates the food consumption; if the food level drops to 0 (and there are still ants), ants are marked for culling; \ \
          If the current food level is less than the number of ants in the nest, ants are marked for culling; \ \
          If the current food level is less than 5 times the number of ants (indicating a severe shortage), additional ants are marked for culling;
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
          `(2, 4)`; \
          *A.* missing brackets \
          *A.* other sensible notation
        ]
      ),
      (
        number: 7.2,
        marks: 2,
        solution: [
          *1 Mark:* \
          It is possible a the first nest position would be not on the grid; \ \
          *Max 1:* \
          The program could be modified to only accept dimensions such that `(2, 4)` is on the grid; \
          The first position of the nest could be made random within the given dimensions;
        ]
      )
    )
  )
  #cs-ms-table(
    questions:(
      (
        number: 8.1,
        marks: 1,
        solution: [
          Inheritance;
        ]
      ),
      (
        number: 8.2,
        marks: 1,
        solution: [
          Constructor;
        ]
      ),
      (
        number: 8.3,
        marks: 1,
        solution: [
          Entity
        ]
      ),
      (
        number: 8.4,
        marks: 1,
        solution: [
          `6`;
        ]
      ),
      (
        number: 8.5,
        marks: 1,
        solution: [
          `Strength `\//` PheromoneDecay `\//` BelongsTo`; \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case
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
          The method translates a coordinate / row & column into an index; \
          for a linear/one-dimensional collection/list (as Grid is a one-dimensional list);
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
          `CurrentCell` \// `Details` \// `N`;\ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case
        ]
      ),
    )
  )
]