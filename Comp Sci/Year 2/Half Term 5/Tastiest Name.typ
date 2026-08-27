#import "../../../Templates/lib.typ": *

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "Section B",
    materials: ( "a computer",),
    instructions: (""),
    date: "Summer 2026",
    time: "",
    time-allowed: "NA",
    advice: (""),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "Section B Questions",
    numbering-style: "compsci",
    hide-borders: true,
    
  )
)

#aqa.question(
  question-number: 5,
  marks: none,
  question: [
      Write a program that asks the user to enter two names. The program should then output
      #align(center)[`The best name is`]
      followed by the name of the restaurant that contains the tastiest letter.

      If both names contain the same tastiest letter, then the program should output "either".
      
      The name that is tastiest is the name that includes the letter with the highest tastiness score.

      You should create a subroutine called `TastiestName` that takes in two names of restaurants and finds the name which contains the tastiest letter and returns that name. If both names contain the same tastiest letter, then the subroutine should return "`either`".
    ]
  )
#rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 5.1,
        marks: 12,
        question: [
          Your PROGRAM SOURCE CODE
        ]
      )
      #aqa.question(
        question-number: 5.2,
        marks: 1,
        question: [
          SCREEN CAPTURE(S) showing the results of testing the program by entering the inputs `BOB'S BURGERS` and `FRED'S FISH`.
        ]
      )
    ])