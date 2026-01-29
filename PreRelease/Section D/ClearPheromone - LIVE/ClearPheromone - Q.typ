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
      This question extends the Skeleton Program altering how pheromones persist.

      When ants collect food, they may deplete the food source, which renders the cell useless to other ants.
      
      To improve the simulation, whenever an ant depletes the food for a cell, any pheromones at the current location should be cleared (removed from the simulation).
                          
      *What you need to do*

      *Task 1* \
      Amend the method `AdvanceStage` in the `Simulation` class to implement Pheromone clearing as described.

      *Task 2* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter `1`
      - enter `1`
      - enter `5` then `20`
      - enter `1`
    ]
  )
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your #EAD.
      #question(
        question-number: 11.1,
        question: [
          Your PROGRAM SOURCE CODE for the amended method `AdvanceStage` within the `Simulation` class.
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