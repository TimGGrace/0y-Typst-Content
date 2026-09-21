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
  marks: none,
  question: [
      The simulation is to be improved to give Ants limited vision.

      Worker Ants who are attempting to find food, but cannot sense any Pheromones, are to be given limited-range food detection.

      If an Ant is to path to a random adjacent cell, and at least one adjacent cell contains food, the Ant is to move to the cell with the highest quantity of food. This should happen *instead* of moving randomly.

      Queen Ants should stay stationary. This behaviour should only change the movement of Worker Ants.

      *What you need to do*

      *Task 1* \
      Create a new method within the `Simulation` class called `GetIndexOfStrongestFood` which takes in an integer Row and Column.

      This method should return the index of the cell to go to within the `Grid` list, returning `-1` if no food is adjacent to the ant.

      *Task 2*\
      Modify the `AdvanceStage` method within the `Simulation` class to move the ant to the cell indicated by the new `GetIndexOfStrongestFood` method if:
      1. The Ant is not carrying food.
      2. The Ant is not a queen.
      3. There are no pheromones in any cell adjacent to the Ant.

      *Task 3* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `1`
      - enter `1`
      - enter `4`
      - enter `2`
      - enter `1` then `3`
      - enter `3` then `5`
      *You must repeat this test until the simulation begins with \ food in a cell adjacent to the Nest at (2, 4)*
    ]
  )
#rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 13.1,
        marks: 11,
        question: [
          Your PROGRAM SOURCE CODE for the new method `GetIndexOfStrongestPheromone` and the amended `AdvanceStage` method.
        ]
      )
      #aqa.question(
        question-number: 13.2,
        marks: 1,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ]
      )
    ])