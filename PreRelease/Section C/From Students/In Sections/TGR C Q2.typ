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

== TGR C Two
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    Name a user-defined method that takes no arguments and returns a string.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier of a class that inherits from the `Ant` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier for a method within the `Ant` class that is overriden by a class which inherits from it.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Explain the difference between a virtual and an abstract method.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the changes that would be necessary to the `ChooseCellToMoveTo` method to allow ants to move two cells at a time if, and only if, they are following a pheromone trail.

    *You should not make any modifications to the Skeleton Program when answering this question*
  ]
)