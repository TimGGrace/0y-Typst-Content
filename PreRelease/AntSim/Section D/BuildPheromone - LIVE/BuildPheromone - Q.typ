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
      This question extends the Skeleton Program altering how ants lay pheromones.

      When an Ant is carrying food, they currently only add to their own pheromones, and only ever up to the original starting value. In the wild, Ant pheromones build on top of each other, reinforcing group behaviour.
      
      To improve the simulation, whenever an ant is to lay a pheromone, they should increase the active pheromone in the current cell by half of the initial starting pheromone strength, using the formula:

      `New Pheromone Strength = Old Pheromone Strength 
                          + Starting Pheromone Strength / 2`

      As in the real world, any ant can contribute to *any* pheromone trail within the cell they are currently in.
                          
      *What you need to do*

      *Task 1* \
      Amend the method `UpdateAntsPheromoneInCell` in the `Simulation` class to implement Pheromones as described.

      *Task 2* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter `1`
      - enter `5` then `10`
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
          Your PROGRAM SOURCE CODE for the amended method `UpdateAntsPheromoneInCell` within the `Simulation` class.
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