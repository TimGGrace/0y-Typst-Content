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

== TGR D One
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier of a method within the `Simulation` class which takes no parameters and returns a string.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    The constructor for the `Simulation` class takes a list of integers for its parameter.

    State the index within this list used to indicate the quantity of food stored in each `Nest` at the beginning of the simulation.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the time complexity of the `GetIndiciesOfNeighbours` method.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Within the `AdvanceStage` method in the `Simulation` class, `Pheromones` with `0` strength are added to the list `PheromonesToDelete`, rather than being deleted immediately.

    State two issues that could occur when deleting an element from a list whilst iterating through that list.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Explain the purpose of the `Entity` class and give an example of how it is utilised in the `Cell` class.
  ]
)