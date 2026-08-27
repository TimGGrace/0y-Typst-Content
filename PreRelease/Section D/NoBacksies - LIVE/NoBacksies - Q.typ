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
    question-number: 14,
    marks: none,
    question: [
      This question improves the Skeleton Program by fixing an issue with Ant pathing.

      `Ant`s should track every location they have previously been to. Before an `Ant` moves, they should add their current location to this list. Whenever an Ant is at its Nest, the list should be cleared before adding their current location.

      While seeking food, if an `Ant` would move to a location they have previously been in, they should instead randomly select a neighbouring location to move to. This may *not* be a location they have previously visited. 
      
      If an `Ant` is not able to move without moving to a previously visited location, it will become confused, and *refuse to move*.

      These changes should *not* modify the behaviour of any `Ant` traveling *towards* the `Nest` *with food*.
      
      *What you need to do* 
      
      *Task 1* \
      Modify the `Ant` class to store a collection of previously visited locations.

      *Task 2*\
      Modify the `AdvanceStage` method within the `Ant` class to clear the collection of visited locations if the ant is at its Nest.
      
      *Task 3*\
      Modify the `AdvanceStage` method within the `Simulation` class to function as described above, allowing `Ant`s to keep track of its current location.

      *Task 4* \
      Modify the `ChooseCellToMoveTo` method within `WorkerAnt` to check for previous locations when pathing as described above.
      
      *Task 5* \
      Test that the changes you have made work: 
      - run the Skeleton Program
      - enter 1
      - enter 5 then 30
      - enter 1
    ]
  )
  #rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #question(
        question-number: 14.1,
        question: [
          Your PROGRAM SOURCE CODE for the amended methods within the `Ant`, `WorkerAnt` and `Simulation` classes.
        ], 
        marks: 11
      )
      #question(
        question-number: 14.2,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ],
        marks: 1
      )
    ])
]]