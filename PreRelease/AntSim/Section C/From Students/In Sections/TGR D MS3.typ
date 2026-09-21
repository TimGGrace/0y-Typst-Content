#import "../../../../Templates/ms-template.typ": *


#mark-scheme[
== TGR D Three
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