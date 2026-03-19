#import "../../../../Templates/ms-template.typ": *

#mark-scheme[
  == TGR C Two
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