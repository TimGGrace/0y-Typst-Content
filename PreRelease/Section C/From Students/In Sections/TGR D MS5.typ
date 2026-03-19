#import "../../../../Templates/ms-template.typ": *

#mark-scheme[
== TGR D Five
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          `AddFoodToCell` /\/ `AddFoodToNest`;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `GetDetails` /\/ `GetAreaDetails` /\/ `GetCellDetails`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `Entity`;
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          (This will) check if the ant is carrying any food; \
          It should/will move towards its nest.;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          1. Generates a random `Row` and `Column` within the grid boundaries;
          2. (uses a definite loop to) iterate through every existing `Nest`;
          3. (Uses an indefinite loop to) repeat the process so long as the location is invalid;
          4. A location is invalid if it a location that already contains a `Nest`;
        ]
      )
    )
  )
]