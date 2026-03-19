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
    State the identifier of a string variable local to the `Ant` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    Explain the purpose of the `ChangeFood` method within the `Nest` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the return type of the `GetDetails` method.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Complete Figure 1 to show the order in which the simulation components are created when a new simulation is begun.
    #aqa.center[
      *Figure 1*
      #table(columns:(150pt,80pt),
      table.cell(fill:gray.lighten(50%))[Component],table.cell(fill:gray.lighten(50%))[Order],
      table.cell(fill:gray.lighten(50%))[Nests],[],
      table.cell(fill:gray.lighten(50%))[Food in Cells],[],
      table.cell(fill:gray.lighten(50%))[Ants],[],
      table.cell(fill:gray.lighten(50%))[Cells],[]
      )
    ]
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    At the beginning of the program the user is asked to enter a simulation number. Should they enter a valid number, ie `1, 2, 3 `or` 4`, then the appropriate simulation begins.

    Should they enter any other value, numeric or otherwise, no simulation will load, and the program will break.

    Describe the changes you would need to make to the Skeleton Program such that the user is asked repeatedly to enter a simulation number *until* they enter a valid number.

    *You should not make changes to the Skeleton Program when answering this question.*
  ]
)
