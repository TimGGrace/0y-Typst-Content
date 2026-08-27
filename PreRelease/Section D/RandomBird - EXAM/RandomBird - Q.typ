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
    question-number: 14,
    marks: none,
    question: [
      The simulation is to be extended to include a predator threat, a bird.

      Every stage, the bird randomly selects one location and eats a random number of ants between 1 and 5, but no more than the number of ants in that cell. 
      
      The number of ants eaten and the cell location are to be displayed each stage. 
      
      The bird cannot eat queen ants.


      *What you need to do*

      *Task 1* \
      Modify the `AdvanceStage` within the `Simulation` class so that whenever a stage is advanced, the first thing that happens is that a random cell is chosen for the bird. 
      
      Then if there are any non-queen ants in the cell, a random number between 1 and 5 or the total number of non-queen ants in the cell, whichever is lower, is chosen. 
      
      That many non-queen ants are then removed from the simulation as they have been eaten.
      
      Finally, the number of ants eaten and the cell they were eaten from should be displayed.

      *Task 2* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter 1
      - enter 5
      - enter 10
      *You need to repeat this test until at least 1 ant is eaten.*
    ]
  )
]#pagebreak()
#question-page[
  
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your #EAD.
      #question(
        question-number: 14.1,
        question: [
          Your PROGRAM SOURCE CODE for the amended `AdvanceStage` method in the `Simulation` class.
        ], 
        marks: 11
      )
      #question(
        question-number: 14.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])
]
]