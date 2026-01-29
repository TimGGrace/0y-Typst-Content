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
      This question refers to the method `Main`. 
      
      The program is to be changed so that it checks the second position entered by the user, when using the `"2. Display Area details"` option. 
      
      A valid position is one where the row is no less than the first row entered, and the column is no less than the first column entered.
      
      The program should keep asking the user to enter values until a valid position has been entered. Each time an invalid position is entered an appropriate error message should be displayed. 
      
      *What you need to do* 
      
      *Task 1* \
      Modify the second switch case within the method `Main` so it checks that the position entered by the user is valid. An appropriate error message should be displayed if an invalid position is entered and the user should be made to enter another value.
      
      *Task 2* \
      Test that the changes you have made work: 
      - run the Skeleton Program
      - enter 1
      - enter 2
      - enter 2 then 2
      - enter 1 then 4
      - enter 4 then 4
    ]
  )
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #question(
        question-number: 11.1,
        question: [
          Your PROGRAM SOURCE CODE for the amended method `Main`.
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