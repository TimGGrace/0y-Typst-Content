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

== TGR D Seven
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier for a user-defined parent class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    Write down the maximum number of ants that could be culled in a single nest in a stage.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    Write down the amount of food a `QueenAnt` consumes per stage.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    *Figure 1* shows a visualisation of part of a `Grid` in an active simulation.
    #aqa.center[
      *Figure 1*
      #table(columns:range(3).map(_=>11em),inset:10pt,
      [`(2, 2)`\ `500 food`],[`(2, 3)`],[`(2, 4)`\ `NEST`],
      [`(3, 2)`],[`(3, 3)`\ `ANT`],[`(3, 4)`],
      [`(4, 2)`\ `Pheromones: 2`],[`(4, 3)`],[`(4, 4)`\ `NEST`])
    ]
    The following information is given about `ANT`:
    - The `ANT` is carrying `20` units of food.
    - The `ANT`'s nest is located at `(2, 4)`.

    State the location of the cell that the ant will move to, and explain why.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    If, during the regular operation of the simulation, a `Nest` has no food and only `QueenAnt`s, it will not attempt to cull them, despite there being no food.

    Describe the changes you would need to make to the Skeleton Program to ensure that this is corrected.

    *You should not make any changes to the Skeleton Program when answering this question.*
  ]
)
