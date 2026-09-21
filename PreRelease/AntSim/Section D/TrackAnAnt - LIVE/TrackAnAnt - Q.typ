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
  question-number: 14,
  marks: none,
  question: [
      A new option is to be added for the menu of the simulation.

      The new option, titled '`6. Track 1 ant over X stages`', allows the user to track the progress of a single ant over a given number of stages.

      After selecting option `6`, the user will be asked to enter a number. If there is no Ant with that ID number, the user will be asked to enter a number repeatedly until they enter a valid Ant ID number.

      Then the user will be asked to enter the number of stages to advance.

      The simulation will advance that many stages, displaying information about the chosen Ant at each stage.

      The information should be displayed as so: \
      `Ant 3
Ant 3, worker, stages alive: 1, carrying 0 food, home nest is at 2 4`

      If the ant dies, the following message will be displayed:\ 
      `Ant 3 died`

      Should an Ant die whilst tracking, no further stages should occur.

      *What you need to do*

      *Task 1* \
      Create a new subroutine inside of the `Simulation` class called `TrackAnt`. 
      
      First the user should be asked to enter an ID of an `Ant` to track. If there is no `Ant` with that ID, they should be asked again. \
      Then the user will be asked a number of stages to advance. 
      
      Each time the simulation is advanced, the location and details of the ant should be printed, as shown above.

      *Task 2*\
      Add a new option in `DisplayMenu`: '`6. Track 1 ant over X stages`'

      *Task 3* \
      Update `Main` so that the subroutine `TrackAnt` is called when the user enters `6`.
      
      *Task 4* \
      Test that the changes you made work:
      - run the Skeleton Program
      - Enter `4`
      - Enter `6`
      - Enter `30`
      - Enter `3`
      - Enter `50`
    ]
  )
#rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 14.1,
        marks: 11,
        question: [
          Your PROGRAM SOURCE CODE for any amended methods.
        ]
      )
      #aqa.question(
        question-number: 14.2,
        marks: 1,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ]
      )
    ])