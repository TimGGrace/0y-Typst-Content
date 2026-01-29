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
      This question refers to the method `GetChoice` in the `Program` class. 
      
      The program is to be changed so that it checks that the choice made by the user, when using the simulation menu, is a valid option. 
      
      A valid option is a number between 1 and 5 inclusive, or a 9. 
      
      The program should keep asking the user to enter a value until a valid option has been entered. Each time an invalid value is entered an appropriate error message should be displayed. 
      
      *What you need to do* 
      
      *Task 1* \
      Modify the method `GetChoice` so it checks that the value entered by the user is valid. An appropriate error message should be displayed if an invalid option is entered and the user should be asked to enter another value.
      
      *Task 2* \
      Test that the changes you have made work: 
      - run the Skeleton Program
      - enter 3
      - enter 11
      - enter 8
      - enter 4
    ]
  )
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #question(
        question-number: 11.1,
        question: [
          Your PROGRAM SOURCE CODE for the amended method `GetChoice`.
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