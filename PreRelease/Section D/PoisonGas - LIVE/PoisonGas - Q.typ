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
      This question extends the Skeleton Program by adding a new type of Pheromone: Poison Pheromones.

      Unlike most pheromones, Poison Pheromones begin with an initial strength of `2500`, and decays at a rate of `1000` each stage. Poison Pheromones belong to Ant '`-1`', indicating it is poison.

      Every stage, *before* ants have a chance to move, Poison Pheromones will kill off (remove from the simulation) any Ant that is in the same location.

      Poison Pheromones act in the same way as other pheromones for *all* other purposes.

      *What you need to do*

      *Task 1* \
      Create a new class called `PoisonPheromone` that is a subclass of `Pheromone`. \ \
      Create two new methods within the `PoisonPheromone` class to enable it to function as described above: a constructor and `AdvanceStage`. \ \
      The method `AdvanceStage` should override the method within the `Pheromone` class.

      *Task 2* \
      Modify the constructor of the `Simulation` class so that one `PoisonPheromone` is placed in the position `(3, 3)` in every simulation.

      *Task 3* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter 4
      - enter 2
      - enter 2 then 3
      - enter 3 then 4
      - enter 5 then 2
      - enter 2
      - enter 2 then 3
      - enter 3 then 4
    ]
  )

  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your #EAD.
      #question(
        question-number: 12.1,
        question: [
          Your PROGRAM SOURCE CODE for the new class `PoisonPheromone` as well as the amended method within the `Simulation` class.
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