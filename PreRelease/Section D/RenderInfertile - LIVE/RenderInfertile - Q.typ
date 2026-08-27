#import "../../../Templates/exam-template.typ" : *
#show raw: set text(font: "Consolas",size:12pt)
#exam(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "Potential Section D Questions",
    materials: ("A copy of the Skeleton Program","A copy of the Preliminary Material"),
    instructions: (
      "Answer *all* questions.",
      "Show all rough work for this paper."
    ),
    date: "January 2026",
    time: "",
    time-allowed: "20 minutes",
    advice: ("",),
    series-code: "7517",
    specification-code: "1",
    paper-code: "Section D",
    numbering-style: "compsci"
  )
)[
#question-page[
  #question(
    question-number: 11,
    marks: none,
    question: [
      This question extends the Skeleton Program by allowing a player to render the entire simulation infertile.

      When a simulation is rendered infertile, *all* queens must be killed (removed from the simulation). No other ants are affected.

      *What you need to do*

      *Task 1* \
      Create a new method in the `Simulation` class called `RenderInfertile` that renders the simulation infertile as described.

      *Task 2* \
      Add a new menu option, `6`, within the main menu to allow the user to access this feature. When choosing this, the `RenderInfertile` method is called.

      *Task 3* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter 1
      - enter 6
      - enter 3
      - enter 2 then 4
    ]
  )
  
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your #EAD.
      #question(
        question-number: 11.1,
        question: [
          Your PROGRAM SOURCE CODE for the new method `RenderInfertile` within the `Simulation` class, as well as any amended methods.
        ], 
        marks: 4
      )
      #question(
        question-number: 11.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])
]
]