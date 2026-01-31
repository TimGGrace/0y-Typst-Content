#import "../../../Templates/lib.typ": *

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "May Assessment Section D",
    materials: (
      "a computer",
      "a printer",
      "appropriate software",
      "the Electronic Answer Document",
      "an electronic version and a hard copy of the Skeleton Program",
      "an electronic version and a hard copy of the Preliminary Material.",
      "You must *not* use a calculator."
    ),
    instructions: (
      "Type the information required on the front of your Electronic Answer Document.",
      "Before the start of the examination make sure your *Centre Number*, *Candidate Name* and *Candidate Number* are shown clearly *in the footer* of every page (also at the top of the front cover) of your Electronic Answer Document",
      "Enter your answers into the Electronic Answer Document.",
      "Answer *all* questions.",
      "Save your work at regular intervals.",
    ),
    date: "Summer 2026",
    time: "",
    time-allowed: "1 hour 10 minutes",
    advice: (
      "You are advised to allocate time to each section as follows:\
      *Section A* - 40 minutes; *Section B* - 20 minutes; *Section C* - 20 minutes; *Section D* - 70 minutes; ",
      "*At the end of the examination* \ 
      Tie together all your printed Electronic Answer Document pages and hand them to the Invigilator.",
      "*Warning*\
      It may not be possible to issue a result for this paper if your details are not on every page of your Electronic Answer Document."
    ),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "CAP3",
    numbering-style: "compsci",
    hide-borders: true,
    
  )
)
#aqa.question(
    question-number: 11,
    question: [
      This question extends the Skeleton Program by adding Food to all display features. \ \
      
      Whenever the user selects option `1. Display Overall Details`, a message indicating how much food is within the *simulation* should be displayed *beneath* the cell details.

      Whenever the user selects option `2. Display Area Details`, a message indicating how much food is within the *chosen area* should be displayed *beneath* the cell details.

      #rect(width:100%,[
      Example 1, Display Overall Details: \
      `...
5, 5:
In total there is 500 food in this simulation`

      Example 2, Display Area Details: \
      `...
3, 4:
In total there is 500 food in this area`
      ])
      
      *What you need to do* 
      
      *Task 1* \
      Create a new subroutine called `GetTotalFoodInArea` within the `Simulation` class which takes in the start row and column and the end row and column and returns an integer which is the total amount of food in the area.
      
      *Task 2* \
      Change the `GetAreaDetails` method within the `Simulation` class so that the total amount of food in the area is added at the end of the details as described above.

      *Task 3* \
      Change `GetDetails` within the `Simulation` class so that the total amount of food in the simulation is added at the end of the details as described above.
      
      *Task 4* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `2`
      - enter `1`
      - enter `3` then `1`
      - enter `5` then `5`      
    ],
    marks: none
  )
#pagebreak() \
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 11.1,
        question: [
          Your PROGRAM SOURCE CODE for the new method `GetTotalFoodInArea` and the modified methods within the `Simulation` class.
        ], 
        marks: 4
      )
      #aqa.question(
        question-number: 11.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])