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

== CRP Three
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the name of an identifier for a local variable in a method in the `Entity` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    The `Ant` class inherits from another class. State the name of this class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of a method within the `Ant` class that is overriden by one of its child classes.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    The `Simulation` Class makes use of encapsulation. Define encapsulation.
  ]
)
