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
      Write a program that asks the user for a positive number. This should be repeated until the user enters a positive number. Then the program should then output either `“That is not a Spooky Number”` or `“That is a Spooky Number”`, followed by a sum to prove that it is a Spooky Number appropriately.

      A Spooky Number is a *positive number* that can be made from a multiplication of two other numbers made from its digits.

      Every digit within the Spooky Number must be used exactly once to make the multiplication.

      *Examples*
      - `1206` is a Spooky Number as `1206 = 6 x 201`
      - `1827` is a Spooky Number as `1827 = 21 x 87`
      - `1444` is not a Spooky Number
      - `1395`is a Spooky Number
      - `6880` is a Spooky Number
      - `67` is not a Spooky Number

      *Note*: All single digit integers are considered Spooky Numbers.
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
          SCREEN CAPTURE(S) showing the results of testing the program by entering the inputs `-3`,`1530` and `9966`. You will need to execute your program more than once to test all of the inputs.
        ]
      )
    ])