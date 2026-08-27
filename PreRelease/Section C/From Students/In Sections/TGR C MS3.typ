#import "../../../../Templates/ms-template.typ": *

#mark-scheme[
  == TGR C Three
#cs-ms-table(
    questions:(
      (
        number: 1,
        marks: 1,
        solution: [
          Boolean;
        ]
      ),
      (
        number: 2,
        marks: 1,
        solution: [
          `Row` /\/ `Column`;
        ]
      ),
      (
        number: 3,
        marks: 1,
        solution: [
          `100` (per stage);
        ]
      ),
      (
        number: 4,
        marks: 2,
        solution: [
          Public methods can be called from anywhere within the program;

          Protected methods can only be called within the class and any class that inherits from it;
        ]
      ),
      (
        number: 5,
        marks: 4,
        solution: [
          Iterating through every possible neigbour; \
          If the cell is off the grid or is the current cell; \
          Add `-1` to the list;
          Otherwise add the cell's index to the list;
        ]
      )
    )
  )
]