#import "../../../Templates/lib.typ": *
#show raw: set text(font: "Consolas",size:12pt)
#let inheritance = ((inherit:"solid",size:12, fill:white,stroke:1pt),(inherit:"bar",pos:0.3,size:4))

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "May Assessment Section C",
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
    time-allowed: "20 minutes",
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
  question-number: 6,
  question: [
    This refers to the `AdvanceStage` method in the `Nest` class.
  ], 
  marks: none
)
#aqa.question(
  question-number: 6.000001,
  question: [
    Describe each of the conditions that must be met for the population of a nest to decrease (cull ants) during a simulation stage.
  ], 
  marks: 3
)
#aqa.question(
  question-number: 7.1,
  question: [
    The `SetUpANestAt` method in the `Simulation` class is called several times during the constructor. The first `Nest` is always placed at the same point.\ \
    State the location of the first Nest.
  ], marks: 1
)
#aqa.question(
  question-number: 7.2,
  question: [
    Programming the first nest to a specific location could cause issues if the program is expanded to allow the user to choose the simulation's grid dimensions. \ \
    State the issue this would cause, as well as how the program could be modified to prevent this. \ \
    *You should not make any changes to the Skeleton Program when answering this question.*
  ], marks: 2
)

#aqa.question(
  question-number: 8.1,
  question: [
    *Figure 1* shows an incomplete class diagram describing the relationship between the `WorkerAnt` class and the `Ant` class.
    #align(center)[*Figure 1* \ 
    #fletcher.diagram(
      label-size:30pt,
      node-outset:-5pt,
      node((0,0),rect(width:80pt,height:30pt,[`Ant`]),name:<Ant>),
      node((0.5,0.9),rect(width:80pt,height:30pt,[`WorkerAnt`]),name:<WA>),
      edge(<Ant>,<WA>,marks:((inherit:"solid",size:15, fill:white,stroke:1pt),(inherit:"bar",size:5, fill:black,stroke:1pt,pos:0.2))),
      
    )]
    
    State the type of relationship indicated by the arrow in *Figure 1*.
  ], marks: 1
)
#aqa.question(
  question-number: 8.2,
  question: [
    In the main part of the program, a new instance of the `Simulation` class is created.  \ \ 
    State the name of the special type of method that is automatically executed to initialize an object when it is first created.
  ],
  marks: 1
)
#pagebreak()
#aqa.question(
  question-number: 8.3,
  question: [
    State the identifier of the *superclass* of the `Pheromone` class.
  ], 
  marks: 1
)
#aqa.question(
  question-number: 8.4,
  question: [
    The `Ant` class contains the static attribute `NextAntID`, which is initialized to `1`. If a user selects *Simulation 1* (which creates *1 Queen and 4 Workers*), state the value of `NextAntID` immediately *after* the simulation has been initialized.
  ],
  marks: 1
)
#aqa.question(
  question-number: 8.5,
  question: [
    The `Pheromone` class uses information hiding. State the identifier of one attribute in the `Pheromone` class that is not directly accessible within the `Simulation` class.
  ],
  marks: 1
)

#aqa.question(
  question-number: 9.000001,
  question: [
    In the Simulation class, the `GetIndex` method contains the following calculation:\ #align(center)[ `(Row - 1) * NumberOfColumns + Column - 1` ] Explain the purpose of this calculation regarding how the data structure is stored.
  ],
  marks: 2
)
#aqa.question(
  question-number: 10.000001,
  question: [
    State the identifier of a local variable used in the `GetCellDetails` method in the `Simulation` class.
  ], marks: 1
)
#aqa.end-of-questions
#aqa.blank-page(message: [` `])