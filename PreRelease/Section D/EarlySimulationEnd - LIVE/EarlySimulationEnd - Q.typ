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
      This question extends the Skeleton Program by terminitating it early if there are no more ants at the beginning of a stage.

      The simulation should keep track of the current stage number. The first stage of any simulation should be stage *`0`*.

      Whenever the simulation advances a stage, it should first check if there are any Ants left in the simulation. If there are *no ants remaining*, the simulation should terminate, and display the number of stages that were completed. It should *not* display the number of stages the user requested if it did not perform them.

      For Example, if the user tells the Simulation to advance 50 stages, but there are no ants at the start of the 34th stage, the program should output:

      `Simulation terminated early at stage 34. No remaining Ants.`

      Once the simulation terminates, the user should no longer be offered menu options.

      *What you need to do*

      *Task 1* \
      Create a new method within the `Simulation` class called `GetAntCount` that returns the number of ants left in the simulation. 

      *Task 2* \
      Modify the `Simulation` class to track the current stage number. This should start at `0`. \
      Modify the `AdvanceStage` method of the `Simulation` class to check if there are no ants at the beginning of every stage. 
      - If there are *no ants*, `AdvanceStage` should perform no more iterations.
      - If there are *any ants*, `AdvanceStage` should increment the stage counter and continue as normal.

      *Task 3* \
      Modify the `Main` subroutine to behave as described above.
      - The early termination message should be displayed appropriately.
      - The number of stages advanced should not display if the simulation is terminated early.
      - After termination, the user is no longer presented the menu.

      *Task 4* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter 3
      - enter 5
      - enter 100
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
          Your PROGRAM SOURCE CODE for any amended methods.
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