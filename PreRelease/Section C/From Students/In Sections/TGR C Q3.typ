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

== TGR C Three
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the return type of the `InSameLocation` method within the `Entity` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier of a local variable within the `GetDetails` method within the `Simulation` class which stores an integer.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the Pheromone Decay Rate for Simulation 2.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Describe the difference between public and protected methods.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the operation of the `GetIndicesOfNeighbours` method within the `Simulation` class.
  ]
)