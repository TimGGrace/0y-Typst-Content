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
    question-number: 13,
    question: [
      This question extends the Skeleton Program by preventing unintended ant behaviour.
      
      Currently, when ants lay pheromone trails, they are strongest nearest to the nest, rather than strongest near the food. The result is that when food appears anywhere other than a neighbouring cell to a nest, the Ants are unable to path to it using Pheromones. This leads to a 'Death Spiral' that will trap every ant in the nest, eventually leading to the ants to run out of food.

      One solution is for ants to keep track of how many moves they make while carrying food, and adjusting the strength of their Pheromones accordingly.

      Ants should reset this tracker to `0` whenever they pick up food.

      *New* pheromones should be laid according to the following formula:

      `New Strength = Start Pheromone Strength 
                      - Distance * Decay Rate - 1`

      As well as this, the simulation will need to check for Pheromones from a cell that has been cleared. \
      *After* an Ant has collected food, if the cell now has `0` food, *all* Pheromones from an Ant which has placed Pheromones on *that cell* should be cleared (removed from the simulation).
                      
                      
      *No other behaviour needs to be modified.*
      
      *What you need to do*
      
      *Task 1* \
      Modify the `Ant` class to contain a `StepsTaken` counter.

      *Task 2* \
      Modify the `UpdateFoodCarried` and `AdvanceStage` methods within the `Ant` class to act as described above.

      *Task 3* \
      Modify the `AdvanceStage` method within the `Simulation` class to act as described above.
      
      *Task 4* \
      Modify the `UpdateAntsPheromoneInCell` method within the `Simulation` class to act as described above.
      
      *Task 5* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `2`
      - enter `5`, then `40`
      - enter `1`
    ],
    marks: none
  )
]
#question-page[
  \
      
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #question(
        question-number: 13.1,
        question: [
          Your PROGRAM SOURCE CODE for any amended methods within the `Ant` class and any amended methods within the `Simulation` class.
        ], 
        marks: 11
      )
      #question(
        question-number: 13.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])
]
]