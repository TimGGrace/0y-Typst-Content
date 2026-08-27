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
      This question extends the Skeleton Program by allowing a user to simulate a light breeze.

      When a light breeze occurs, all pheromones are moved one position to the right, as shown in *Figure 1*.
      #align(center)[
        *Figure 1*
        #grid(columns:2,column-gutter:50pt,table(columns:5,
        table.cell(colspan:5,stroke:(bottom:1pt,top:0pt,right:0pt,left:0pt),[Before Breeze:]),
        [` `],[` `],[` `],[` `],[`P`],
        [` `],[` `],[` `],[`P`],[` `],
        [` `],[`P`],[`P`],[` `],[` `],
        [` `],[`N`],[` `],[` `],[` `],
        [` `],[` `],[` `],[` `],[` `],),
        table(columns:5,
        table.cell(colspan:5,stroke:(bottom:1pt,top:0pt,right:0pt,left:0pt),[After Breeze:]),
        [` `],[` `],[` `],[` `],[` `],
        [` `],[` `],[` `],[` `],[`P`],
        [` `],[` `],[`P`],[`P`],[` `],
        [` `],[`N`],[` `],[` `],[` `],
        [` `],[` `],[` `],[` `],[` `],))
      ]
      Where `N` is a `Nest` and `P` is a `Pheromone` within a cell.

      
      No other elements of the simulation should be changed.
      
      Pheromones that are moved should have the same strength before and after they move.
      
      *What you need to do*

      *Task 1* \
      Create a new method in the `Simulation` class called `LightBreeze` that moves all Pheromones as described as described.

      *Task 2* \
      Add a new menu option, '`6. Light Breeze`', within the main menu to allow the user to access this feature. Then the `LightBreeze` method is called.

      *Task 3* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter 1
      - enter 5 then 5
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
        question-number: 11.1,
        question: [
          Your PROGRAM SOURCE CODE for the new method `LightBreeze` and any amended methods.
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