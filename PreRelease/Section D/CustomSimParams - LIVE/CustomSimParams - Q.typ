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
      
      When they do, they will be asked to enter a number between `5` and `20` *inclusive*. If they do not, they should be asked repeatedly until they do enter a number within the range. 
      
      This number will be both the number of rows and the number of columns for the simulation.

      The number of nests should be set based on the size of the chosen grid.
      - If they enter a number which is less than `10`, the simulation will begin with only `1` nest.
      - If they enter a number between `10` and `15` inclusive, the simulation will begin with `2` nests.
      - If they enter a number greater than `15`, the simulation will begin with `3` nests

      *What you need to do*

      *Task 1* \
      Modify the `Main` subroutine so that should the user enter `5` when prompted for a simulation number they are presented with the prompt:
      #align(center)[`Enter a number between 5 and 20`]
      Input should then be taken from the user, and this whole process repeated until the user enters a value within the range.

      *Task 2*\
      Modify the `Main` subroutine so that once a valid value has been gained from the user, *if they have chosen simulation 5*, that the grid is created with a number of rows and a number of columns equal to the entered value.

      *Task 3* \
      Test that the changes you made work:
      - run the Skeleton Program
      - Enter `5`
      - Enter `24`
      - Enter `4`
      - Enter `16`
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