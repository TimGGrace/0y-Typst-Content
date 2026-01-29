#import "../../../Templates/lib.typ": *

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "May Assessment Section D",
    materials: ("a calculator.",),
    instructions: (
      "Use black ink or black ball-point pen.",
      "Fill in the boxes at the top of this page.",
      "Answer *all* questions.",
      "You must answer the questions in the spaces provided. Do not write outside the box around each page or on blank pages.",
      "If you need extra space for your answer(s), use the lined pages at the end of this book. Write the question number against your answer(s).",
      "Do all rough work in this book. Cross through any work you do not want to be marked."
    ),
    date: "Summer 2026",
    time: "",
    time-allowed: "1 hour",
    advice: (
      "In some questions you are required to indicate your answer by completely shading a lozenge alongside the appropriate answer.",
      "If you want to change your answer you must cross out your original answer.",
      "If you wish to return to an answer previously crossed out, ring the answer you now wish to select."
    ),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "CAP3",
    numbering-style: "compsci",
    hide-borders: true,
    
  )
)

#aqa.front-cover()
#aqa.question(
  question-number: 11,
  marks: none,
  question: [
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
      #aqa.question(
        question-number: 11.1,
        question: [
          Your PROGRAM SOURCE CODE for the amended method `Main`.
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
#pagebreak()
#aqa.question(
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
      Modify the `DisplayMenu` method to show a new menu option - "6: Diapause". \
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
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 12.1,
        question: [
          Your PROGRAM SOURCE CODE for the new methods `GoHome` and `Diapause` and any ammended methods.
        ], 
        marks: 7
      )
      #aqa.question(
        question-number: 12.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])
#pagebreak()
#aqa.question(
  question-number: 13,
    question: [
      This question extends the Skeleton Program so that there is a new type of worker ant - a Seeker Ant. \ \
      When a new nest is constructed, the nest will be created with the same number of ants, but *one will be a Seeker Ant*. There should still be a single Queen Ant.\ \
      The Seeker Ant is a rare breed of worker ant. It is only able to carry up to `5` food, but paths directly to the nearest food if it is not carrying anything.

      When it is without food, the Seeker Ant should move towards the food cell with the *lowest Manhattan Distance* instead of moving randomly as other Worker Ants do. Under all other circumstances, it should move as Worker Ants do.
      
      The *Manhattan Distance* can be calculated using the following formula:

      #grid(columns:(2cm,1fr),[],[
        `distance = abs(Target Row - Current Row) 
                 + abs(Target Column - Current Column)`
      ])
      Where `abs` represents the *positive* result of the sum.

      

      
      *What you need to do* \      
      *Task 1* \
      Create a new class called `SeekerAnt` that is a subclass of `WorkerAnt`. 

      The class should contain two methods, a constructor and a method `SeekFood`.

      The constructor should set the type of ant to '`seeker`', and the carry capacity to `5`.

      The `SeekFood` method should be passed the grid. It should then find the nearest food using the Manhattan distance as described above. The ant should then be moved one cell towards the nearest food.
      
      *Task 2* \
      Modify the `SetUpNestAt` method within the `Simulation` class to create ants as described above.

      *Task 3* \
      Modify the `AdvanceStage` method within the `Simulation` class to allow the Seeker Ant to work as intended. If the ant being moved is a *Seeker* ant that is *not* carrying food, it should call the new `SeekFood` method. Otherwise, it should call the `ChooseCellToMoveTo` method.
      *Task 4* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `1`
      - enter `4`
      - enter `1`
      - enter `4`
      - enter `1`
      
    ],
    marks: none
)
#pagebreak()
#rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 13.1,
        question: [
          Your PROGRAM SOURCE CODE for the class `SeekerAnt` and the modified methods within the `Simulation` class.
        ], 
        marks: 11
      )
      #aqa.question(
        question-number: 13.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])
#pagebreak()

#aqa.question(
  question-number: 14,
    marks: none,
    question: [
      The simulation is to be extended to include a predator threat, a bird.

      Every stage, the bird randomly selects one location and eats a random number of ants between 1 and 5, but no more than the number of ants in that cell. 
      
      The number of ants eaten and the cell location are to be displayed each stage. 
      
      The bird cannot eat queen ants.


      *What you need to do*

      *Task 1* \
      Modify the `AdvanceStage` within the `Simulation` class so that whenever a stage is advanced, the first thing that happens is that a random cell is chosen for the bird. 
      
      Then if there are any non-queen ants in the cell, a random number between 1 and 5 or the total number of non-queen ants in the cell, whichever is lower, is chosen. 
      
      That many non-queen ants are then removed from the simulation as they have been eaten.
      
      Finally, the number of ants eaten and the cell they were eaten from should be displayed.

      #rect(width:100%)[Example Display: \ `The bird ate 1 ants in location 3, 3.`]

      *Task 2* \
      Test that the changes you have made work:
      - run the Skeleton Program
      - enter 1
      - enter 5
      - enter 10
      *You need to repeat this test until at least 1 ant is eaten.*
    ]
)
#rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 14.1,
        question: [
          Your PROGRAM SOURCE CODE for the amended `AdvanceStage` method in the `Simulation` class.
        ], 
        marks: 11
      )
      #aqa.question(
        question-number: 14.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])

#aqa.end-of-questions
#aqa.blank-page(message: [` `])