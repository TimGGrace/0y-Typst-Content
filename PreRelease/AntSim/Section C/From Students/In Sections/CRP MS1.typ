#import "../../../../Templates/ms-template.typ": *
#mark-scheme[
  == CRP One
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
]