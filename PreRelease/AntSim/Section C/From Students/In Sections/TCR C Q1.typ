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

== TGR C One
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the default quantity of food to be added to a cell.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    What is returned by the method `GetStrongestPheromoneInCell` if there are no pheromones within the cell?
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the purpose of the `InSameLocation` method within the `Entity` class.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Explain the operation of the `GetNumberOfAntsInCell` method.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the steps taken to decide where an `Ant` should move in a single stage.
  ]
)