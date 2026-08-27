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
    question-number: 12,
    marks: none,
    question: [
      This question extends the Skeleton Program by allowing a user to apply pesticide to an area within the simulation.

      When applying pesticide, the user will be asked to enter two coordinates.

      Then *all* ants within the area will be killed (removed from the simulation). No other ants should be killed.

      *What you need to do*

      *Task 1* \
      Create a new method in the `Simulation` class called `Pesticide` that accepts two positions and kills ants as described.

      *Task 2* \
      Add a new menu option, '`6. Apply Pesticide`', within the main menu to allow the user to access this feature. When choosing this the user should be asked to enter two positions as described. *Then* the `Pesticide` method is called.

      *Task 3* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter 4
      - enter 6
      - enter 2 then 3
      - enter 4 then 5
      - enter 3
      - enter 2 then 4
    ]
  )
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your #EAD.
      #question(
        question-number: 12.1,
        question: [
          Your PROGRAM SOURCE CODE for the new method `Pesticide` and any amended methods.
        ], 
        marks: 7
      )
      #question(
        question-number: 12.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])
]
]