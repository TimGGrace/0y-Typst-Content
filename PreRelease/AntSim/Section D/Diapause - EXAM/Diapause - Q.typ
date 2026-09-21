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
      The simulation is to be extended to allow users to trigger an event known as *Diapause*.

      Diapause is a state of suspensions in which animals reduce their metabolism, usually in anticipation of cold winters or summer droughts. To undergo this, all the ants must be in their nests.

      When the Diapause option is chosen in the menu, all ants should be immediately moved to their nest. When moving in this way, ants can move any distance and will immediately appear in their nests.

      *What you need to do*

      *Task 1* \
      Create a new subroutine in the `Ant` class called `GoHome` which sets their location to that of their nest.

      *Task 2* \
      Create a new subroutine in the `Simulation` class called `Diapause` which uses `GoHome` to send every ant in the simulation to its nest.

      *Task 3* \
      Modify the `DisplayMenu` method to show a new menu option - 6: Diapause \
      Also modify the subroutine `Main` so that when the user enters 6, the Diapause occurs.

      *Task 4* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter 2
      - enter 5
      - enter 5
      - enter 1
      - enter 6
      - enter 1
    ]
  )
  
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your #EAD.
      #question(
        question-number: 12.1,
        question: [
          Your PROGRAM SOURCE CODE for the amended `AdvanceStage` method in the `Simulation` class.
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