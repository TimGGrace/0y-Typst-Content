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
      A new option is to be added for the set up of the simulation.

      When asked to select a simulation, the user should be able to enter `5`. 
      
      When they do, they will be asked to enter a number between `10` and `200` *inclusive*. This number will be quantity of food placed in cells. 

      The user will then be asked to enter a number between `1` and `5` *inclusive*. This number is to be the number of cells that contain food.

      In all other regards, the Simulation properties should be the same as *`Simulation 1`*

      `NOTE`: In the current behaviour of the simulation, food can be placed multiple times within the same cell. This should not be changed when answering this question.

      *What you need to do*

      *Task 1* \
      Modify the `Main` subroutine so that should the user enter `5` when prompted for a simulation number they are presented with the prompt:
      #align(center)[`Enter the quantity of food per cell, between 10 and 200:`]
      Input should then be taken from the user.

      Then the user should be presented with the prompt: 
      #align(center)[`Enter the number of food cells, between 1 and 5:`]
      Input should then be taken from the user.

      *Task 2*\
      Modify the `Main` subroutine so that once a valid value has been gained from the user, *if they have chosen simulation 5*, that the grid is created and the correct number of cells are given food. They should be given an amount of food equal to the first number entered by the user.

      *Task 3* \
      Test that the changes you made work:
      - run the Skeleton Program
      - Enter `5`
      - Enter `4`
      - Enter `24`
      - Enter `1`
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
          Your PROGRAM SOURCE CODE for any amended methods.
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