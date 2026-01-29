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
      This question extends the Skeleton Program by adding an obstacle, a big rock, to the simulation.
      
      When a new simulation is started, a big rock is to be placed at `(1, 4)`, *instead of* a regular cell. 

      Ants may not walk onto cells with big rocks, and should instead path to a different cell.

      When a cell with a big rock is inspected, it should display a suitable message such as '`Big Rock`'.
      
      *What you need to do* 
      
      *Task 1* \
      Create a new class called `BigRock` that is a subclass of `Cell`. \ \
      Create two new methods within the `BigRock` class to enable it to function as described above: a constructor and `GetDetails`. \ \
      The method `GetDetails` should override the method within the `Cell` class.

      *Task 2* \
      Modify the constructor and `GetIndicesOfNeighbours` methods within the `Simulation` class to allow the `BigRock` to function as described. 
      
      *Task 3* \
      Test that the changes you have made work: 
      - run the Skeleton Program
      - enter 3
      - enter 4
      - enter 3
      - enter 1, then 4
    ]
  )
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #question(
        question-number: 12.1,
        question: [
          Your PROGRAM SOURCE CODE for the new class `BigRock` as well as the amended methods within the `Simulation` class.
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