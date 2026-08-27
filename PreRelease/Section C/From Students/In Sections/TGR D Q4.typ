#import "../../../../Templates/lib.typ": *

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "Pre Release Section D",
    materials: ( "a computer",),
    instructions: (""),
    date: "Summer 2026",
    time: "",
    time-allowed: "NA",
    advice: (""),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "Pre Release Questions",
    numbering-style: "compsci",
    hide-borders: true,
    
  )
)

== TGR D Four
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the *smallest* value that the method `ChooseRandomNeighbour` could return.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier for a local variable within `ChooseCellToMoveTo` method in the `WorkerAnt` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of a user-defined method within the `Simulation` class which takes in two integers as parameters and returns an list of integers.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Describe the function of the selection structure within the `GetNumberOfPheromonesInCell` method.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the changes you would need to make to the program to allow the user to choose the starting amount of food in each nests after the simulation has been chosen.
    
    *You should not make any changes to the Skeleton Program when answering this question.*
  ]
)
