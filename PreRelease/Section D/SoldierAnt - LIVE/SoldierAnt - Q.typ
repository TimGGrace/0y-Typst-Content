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
      This question extends the Skeleton Program so that there is a new type of ant - a Soldier Ant. \ \
      When a new nest is constructed, the nest will be created with the same number of ants, but *one will be a Soldier Ant*. There will still be a single Queen Ant. \ \
      Every stage the Soldier Ant will travel to a new, random, adjacent cell, ignoring Pheromones and Food.  \ \
      Adjacent cells in *Figure 1* are marked with `X`, where `S` represents the Soldier Ant.

      #align(center)[*Figure 1*
      #table(columns:5,
      [],[],[],[],[` `],
      [],[`X`],[`X`],[`X`],[],
      [],[`X`],[`S`],[`X`],[],
      [],[`X`],[`X`],[`X`],[],
      [` `],[],[],[],[])]

      After *all* ants have moved, the Soldier Ant will kill all other ants in the same cell that are from other nests, removing them from the simulation.

      The soldier ant:
      - cannot kill ants from its own nest.
      - cannot kill a queen ant.
      - cannot carry food, even if it should move onto a food source.
      When seen in an inspected cell, the solider ant should be visible as 'soldier' with its ID value and stages alive. \ \ 
      *What you need to do* \ \
      *Task 1* \
      Create a new class called `SoldierAnt` that is a subclass of `Ant`.
      
      Create two methods a constructor and `ChooseCellToMoveTo` in the `SoldierAnt` class that allow a soldier ant to work as intended.
      
      The method `ChooseCellToMoveTo` in the `SoldierAnt` class should override the method from the `Ant` class.
      
      *Task 2* \
      Modify the `SetUpNestAt` method within the `Simulation` class to create ants as described above.

      
      
    ],
    marks: none
  )
]
#question-page[
  \
  #grid(columns:(2.8cm, 1fr, 0.5cm),
  [],
  [
    *Task 3* \
      Modify the `AdvanceStage` method within the `Simulation` class to allow the soldier ant to work as intended. \ \
      *Task 4* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `4`
      - enter `3`, then `2`, then `4`
      - enter `5`, then `5`
      - enter `3`, then `2`, then `4` \ \ ])

      
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #question(
        question-number: 13.1,
        question: [
          Your PROGRAM SOURCE CODE for the class `SoldierAnt` and all amended methods within the `Simulation` class.
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