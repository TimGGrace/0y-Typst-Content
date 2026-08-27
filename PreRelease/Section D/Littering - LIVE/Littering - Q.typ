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
  question-number: 12,
  marks: none,
  question: [
      The simulation is to be expanded to simulate an additional environmental factor: littering.

      Passers by drop litter, which the ants can eat. This will occasionally add  food to the simulation. It will add at least `100` food and at most `500` food.

      After every `5` stages have passed, so first occuring at stage `5` (and then `10`, and `15` and so on) a random cell is to be filled with food. 
      
      This cell cannot be a nest (people don't go near ant nests).

      *What you need to do*

      *Task 1* \
      Modify the `Simulation` class to contain a property called `StagesPassed` which starts at `0`.

      *Task 2*\
      Change `AdvanceStage` method within the `Simulation` class so that if the number of stages passed is a multiple of 5 and greater than 0, food is added to a random cell which does *not* contain a nest. 
      
      The amount of food added should be a random amount between `100` and `500`. 
      
      Then the `StagesPassed` is incremented every time a stage is advanced.

      *Task 3* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `1`
      - enter `1`
      - enter `5`
      - enter `4`
      - enter `1`
      - enter `5`
      - enter `4`
      - enter `1`
  ]
)

#rect( width: 105%,
  [
    *Evidence that you need to provide* \
    Include the following evidence in your Electronic Answer Document.
    #aqa.question(
      question-number: 12.1,
      marks: 7,
      question: [
        Your PROGRAM SOURCE CODE for the ammended `AdvanceStage` method within the `Simulation` class as well as any additional variables you have created.
      ]
    )
    #aqa.question(
      question-number: 12.2,
      marks: 1,
      question: [
        SCREEN CAPTURE(S) showing the results of the requested test.
      ]
    )
  ])