#import "../../../../Templates/ms-template.typ": *

#mark-scheme[
== TGR D Two
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
