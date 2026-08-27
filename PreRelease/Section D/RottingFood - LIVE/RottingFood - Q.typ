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
      One cell is to be made as a Rotting Food Cell, containing rotting food which the decays over time.
      
      A rotting cell has a decay rate.

      Every stage, after Ants have moved, the quantity of food within each rotting cell must be reduced by the cell's decay rate.

      As with other cells, a Rotting Food Cell cannot contain negative food.
      
      *What you need to do*
      
      *Task 1* \
      Create a class called `RottingCell`, a subclass of `Cell`. 
      
      It needs a property called `Decay`, a constructor which takes in the row and column *as well as* the decay rate and stores the given decay rate. 
      
      It also needs an `AdvanceStage` method which reduces the amount of the food in the cell according to the decay rate. 
      
      It also needs a `GetDetails` method which prints the details for a normal cell along with the statement:
      #align(center)[“`This cell decays food by x each stage.`”]

      *Task 2* \
      Change `AdvanceStage` method in the `Simulation` class so that each `Cell` is advanced a stage each time (this will do nothing for regular cells)

      *Task 3* \
      Change the constructor for `Simulation` class so that one randomly selected cell *containing* food is changed to be a *RottingCell* containing that amount of food, with a decay rate of `10`.
      
      *Task 4* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `1`
      - enter `1`
      - enter `3` and then enter the cell reference of a food cell. Repeat this for each food cell.
      - enter `4`
      - enter `3`
      - enter the cell reference of the `RottingCell`
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
        Your PROGRAM SOURCE CODE for the new `RottingCell` class as well as any amended methods within the `Simulation` class.
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