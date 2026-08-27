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

== TGR D Three
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier for a local variable within the `SetUpANestAt` method in the `Simulation` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier for a user-defined method within the `Simulation` class that takes 4 integers as its parameters and returns a string.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of a user-defined method within the `Ant` class that is overriden by at least one of its children.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    The program uses the concept of encapsulation within its class structure.
    
    Define encapsulation.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the operation of the `GetIndexOfNeighbourWithStrongestPheromone` method.
  ]
)
