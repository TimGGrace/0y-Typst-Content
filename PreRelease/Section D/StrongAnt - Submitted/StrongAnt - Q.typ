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
    question: [
      This question extends the Skeleton Program so that there is a new type of ant - a Strong Ant. \ \
      When a new nest is constructed, the nest will be created with the same number of ants, but *one will be a Strong Ant*. There should still be a single Queen Ant.\ \
      The Strong Ant is a rare breed of worker ant. It is able to carry up to `100` food, but is incapable of leaving a pheromone trail.
      
      
      *What you need to do* 
      
      *Task 1* \
      Create a new class called `StrongAnt` that is a subclass of `WorkerAnt`. \ \
      Create a constructor that will set the type of ant to 'strong', and the food capacity to 100.
      
      *Task 2* \
      Modify the `SetUpNestAt` method within the `Simulation` class to create ants as described above.
      
      *Task 3* \
      Modify the `AdvanceStage` method within the `Simulation` class to allow the strong ant to work as intended. Strong ants should never create or update Pheromones, but should otherwise act in the same way as a Worker Ant.
      
      *Task 4* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `1`
      - enter `3`, then `2`, then `4`
      - enter `5`, then `5`
      - enter `1`
    ],
    marks: none
  )
  
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #question(
        question-number: 12.1,
        question: [
          Your PROGRAM SOURCE CODE for the class `StrongAnt` and the modified methods within the `Simulation` class.
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