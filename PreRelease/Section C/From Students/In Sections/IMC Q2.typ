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
    State the identifier for a user-defined boolean variable within the constructor for the `Simulation` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier of a user-defined method within the `Simulation` class that accepts exactly two parameters.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    The method `GetCellReference` accepts two references as its parameters. These are also known as pointers.

    Describe the purpose of a pointer in this context.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    The Skeleton Program uses encapsulation. One aim of encapsulation is to restrict access to data, often achieved with access modifiers.

    State the difference between the public and protected access modifiers.
  ]
)

