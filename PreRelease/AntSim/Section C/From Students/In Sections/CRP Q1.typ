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

== CRP One
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier of a user-defined method which takes two integer inputs and returns a list of integers.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier of a virtual method in the `Ant` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State an identifier of a method that takes a `Cell` as its only parameter and returns an integer.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    The `Ant` class contains several protected attributes. Explain the difference between *protected* and *private* attributes.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Explain the steps in the `AdvanceStage` subroutine within the `Nest` class.
  ]
)