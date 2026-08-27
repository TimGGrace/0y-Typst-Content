#import "../../../Templates/lib.typ": *

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

#aqa.question(
    question-number: 13,
    question: [
      The simulation is to be ended early if there are no ants. 
      
      In addition, the age of the oldest ant is to be tracked and printed at the end of the simulation. An ant's age is the same as the number of stages it has been alive for.
      
      *What you need to do*
      
      *Task 1* \
      Create a new method called `GetStages` within the `Ant` class which returns the total number of stages the ant has been alive for.

      *Task 2* \
      Modify the `Simulation` class so that the number of simulation stages and the age of the oldest ant are stored.

      *Task 3* \
      Create a new method called `AntCount` within the `Simulation` class which returns the total number of ants in the simulation.

      *Task 4* \
      Modify the `AdvanceStage` method within the `Simulation` class so that the number of stages is incremented each stage. 
      
      Further modify the method so that if no ants remain in a simulation after a stage completes, the message "`Simulation has no ants after stage `" followed by the current stage is printed and no more stages are advanced.
      
      *Task 5* \
      Modify the subroutine `Main` so that if there are no ants in a simulation, the age of the oldest ant is displayed and then the simulation is exited.
      
      *Task 6* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `1`
      - enter `5`
      - enter `100`
    ],
    marks: none
  )

      
#rect( width: 105%,
  [
    *Evidence that you need to provide* \
    Include the following evidence in your Electronic Answer Document.
    #aqa.question(
      question-number: 13.1,
      question: [
        Your PROGRAM SOURCE CODE for the new method `AntCount` as well as any amended methods.
      ], 
      marks: 11
    )
    #aqa.question(
      question-number: 13.2,
      question: [
        SCREEN CAPTURE(S) showing the results of the requested test.
      ],
      marks: 1
    )
  ])