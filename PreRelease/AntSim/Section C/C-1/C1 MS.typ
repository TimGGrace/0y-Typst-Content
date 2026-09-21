#import "../../../Templates/ms-template.typ": *

#mark-scheme[ 
  #cs-ms-table(
    questions:(
      (
        number: 6.000001,
        marks: 3,
        solution:[
          #table(columns:2,
          table.cell(fill:black.lighten(80%))[Statement],
          table.cell(fill:black.lighten(80%))[True/False],
          table.cell(fill:black.lighten(80%), align: left)[Uses definite iteration],text(red)[True],
          table.cell(fill:black.lighten(80%), align: left)[Uses nested iteration],text(red)[True],
          table.cell(fill:black.lighten(80%), align: left)[Uses exception handling],text(red)[False],
          table.cell(fill:black.lighten(80%), align: left)[Calls methods from other classes],text(red)[True],)
          *1 Mark*: 2 correct rows; \
          *2 Marks*: 3 correct rows; \
          *3 Marks*: 4 correct rows; \
          *A.* Any acceptable alternative to True/False (eg. Y/N)
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
          Overriding; *A.* Override
        ]
      ),
      (
        number: 7.2,
        marks: 2,
        solution: [
          Pheromones are used to get *to* food; \
          (so) if an ant is carrying food, the highest priority task is to return to the nest;
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
          Entity; \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case
        ]
      ), 
      (
        number: 8.2,
        marks: 1,
        solution: [
          WorkerAnt \// QueenAnt; \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case
        ]
      ),
      (
        number: 8.3,
        marks: 1,
        solution: [
          Composition;
          *A.* Aggregation;
        ]
      ),
      (
        number: 8.4,
        marks: 1,
        solution: [
          `NewAntChance` / `NewAntThreshold`;
          *A.* any suitable identifier that demonstrates it is the probability of producing a new ant.
        ]
      ),
      (
        number: 8.5,
        marks: 1,
        solution: [
          `WorkerAnt` returns *additional* information to `Ant`; \
          *A.* Description of additional return \ #text(9.9pt)[(`", carrying {AmountOfFoodCarried} food, home nest is at {NestRow} {NestColumn}"`)] \
          *NE.* `WorkerAnt` returns more.
        ]
      )
    )
  )
  #pagebreak()
  #cs-ms-table(
    questions:(
      (
        number: 9.000001,
        marks: 2,
        solution: [
          Passing by value passes a copy of the original value; \
          Which means changes within the subroutine will *not* impact the original variable; \ \ *OR* \ \
          Passing by reference passes a *pointer* to the original variable's memory address; \
          Changes made within the subroutine *will* impact the original variable;
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
          The neighbour in that position/direction is not on the grid;\ 
          *NE.* the neighbour is invalid
        ]
      ),
    )
  )
  
]