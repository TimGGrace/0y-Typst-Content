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

== TGR D Two
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier for a user-defined method within the `Simulation` class that accepts a single `Cell` as its only parameter, and returns an integer.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    Explain the purpose of `GetIndex` method within the `Simulation` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the number of `Cell`s within the grid in Simulation `3`.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    State the purpose for the first selection statement within the `AdvanceStage` method within the `Nest` class.
    
    Explain why this selection statement is not necessary.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    State the changes that would need to be made in the Skeleton Program to add a new type of Ant which:
    - before it moves, destroys any nest it comes in contact with only if it is not their nest.
    - moves one square randomly each turn,
    - ignores pheromones,
    - cannot pick up food.
    
    *You should not make any changes to the Skeleton Program when answering this question.*
  ]
)