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

      

      
      *What you need to do* 
      
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
]
#question-page[ \
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #question(
        question-number: 13.1,
        question: [
          Your PROGRAM SOURCE CODE for the class `SeekerAnt` and the modified methods within the `Simulation` class.
        ], 
        marks: 11
      )
      #question(
        question-number: 13.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])
]
]