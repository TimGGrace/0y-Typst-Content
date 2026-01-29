#import "../../../Templates/exam-template.typ" : *
#show raw: set text(font: "Consolas",size:12pt)
#let inheritance = ((inherit:"solid",size:12, fill:white,stroke:1pt),(inherit:"bar",pos:0.3,size:4))
#exam(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "Potential Section C Questions",
    materials: ("A copy of the Skeleton Program","A copy of the Preliminary Material"),
    instructions: (
      "Answer *all* questions.",
      "Show all rough work for this paper."
    ),
    date: "November 2025",
    time: "",
    time-allowed: "20 minutes",
    advice: ("",),
    series-code: "7517",
    specification-code: "1",
    paper-code: "Section C V3",
    numbering-style: "compsci"
  )
)[
  #front-cover()
  #question-page[
    #question(
      question-number: 6,
      question: [
        This refers to the `ChooseCellToMoveTo` method in the `WorkerAnt` class.
      ],
      marks: none
    )
    #question(
      question-number: 6.000001,
      question: [
        A `WorkerAnt` is *not* carrying food. Describe the process it uses to decide which cell to move to next.
      ],
      marks: 3
    )
    #question(
      question-number: 7.1,
      question: [
        In the `Simulation` class, the `GetNestInCell` method iterates through the `Nests` collection to find a nest. \ \
        State the time complexity for this approach.
      ],
      marks: 1
    )
    #question(
      question-number: 7.2,
      question: [
        The `AdvanceStage` method within the `Simulation` class iterates through the `Pheromones` collection. \ \
        Explain why a separate temporary list is created to store pheromones that need to be removed, rather than removing them directly inside the main loop.
      ],
      marks: 2
    )
    #question(
      question-number: 8.1,
      question: [
        State the identifier for a class which inherits from the `Ant` class.
      ],
      marks: 1
    )
    #question(
      question-number: 8.2,
      question: [
        State the identifier of a variable local to the `Simulation` class.
      ],
      marks: 1
    )
    #question(
      question-number: 8.3,
      question: [
        State the identifier of a method within the `Simulation` class that takes two integers as its parameters and returns a string.
      ],
      marks: 1
    )
    #question(
      question-number: 8.4,
      question: [
        State the coordinate of the only guaranteed `Nest` in any simulation.
      ],
      marks: 1
    )
    #question(
      question-number: 8.5,
      question: [
        The method `GetAreaDetails` uses string concatenation. \ \
        Define the term 'string concatenation'.
      ],
      marks: 1
    )
  ]#question-page[
    #question(
      question-number: 9.000001,
      question: [
        Another alternative to storing the `Grid` as a linear list would be to use a two dimensional array. \ \ 
        Explain why this may be a more appropriate technique.
      ], marks: 2
    )

    #question(
      question-number: 10.000001,
      question: [
        The `Cell` class inherits from `Entity`. The `Cell` constructor includes a call to the constructor of the parent class. \ \ 
        Explain the purpose of calling the parent class constructor.
      ], 
      marks: 1
    )
  ]
]