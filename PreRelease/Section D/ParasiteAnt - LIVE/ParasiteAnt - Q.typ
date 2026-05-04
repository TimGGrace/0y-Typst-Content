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
  question-number: 11,
  marks: none,
  question: [
      The simulation is to be extended to include a new type of Ant.

      Parasitic Ants are ants without the capacity to move or carry food, but who still consume food. They serve no other purpose to the Nest, other than draining resources.

      When viewed within the simulation, they should appear as any other ant, with the message:
      #align(center)[`Ant 2, parasite, stages alive: 0`]

      *One* Parasitic Ant should be added to the `Nest` at `(2, 4)` in every simulation.

      *What you need to do*

      *Task 1* \
      Create a new class, `ParasiticAnt`, which is a subclass of `Ant`. It should have a single method, a constructor.

      *Task 2*\
      Modify the constructor of the `Simulation` class to create a single ant within the Nest at `(2, 4)`. The Parasite Ant should also belong to that nest.

      *Task 3* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `1`
      - enter `3`
      - enter `2` then `4`
      - enter `4`
      - enter `3`
      - enter `2` then `4`
    ]
  )
#rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 11.1,
        marks: 4,
        question: [
          Your PROGRAM SOURCE CODE for the new `ParasiticAnt` class and the amended `Simulation` constructor.
        ]
      )
      #aqa.question(
        question-number: 11.2,
        marks: 1,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ]
      )
    ])