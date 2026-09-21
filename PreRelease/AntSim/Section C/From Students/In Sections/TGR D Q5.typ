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

== TGR D Five
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier for a user-defined method that takes three integers as parameters in the `Simulation` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the name of a user-defined method that uses string concatenation in the class `Simulation` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of the parent class for `Cell`.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Explain the purpose of the first selection structure within the `ChooseCellToMoveTo` method within the `WorkerAnt` class.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the process within the `Simulation` class's constructor for generating a `Nest` *after* the first `Nest` has been created.
  ]
)