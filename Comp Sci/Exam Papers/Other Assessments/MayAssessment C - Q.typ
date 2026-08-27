#import "../../../Templates/lib.typ": *
#show raw: set text(font: "Consolas",size:12pt)
#let inheritance = ((inherit:"solid",size:12, fill:white,stroke:1pt),(inherit:"bar",pos:0.3,size:4))

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "May Assessment Section C",
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

#aqa.front-cover()

#aqa.question(
  question-number: 6,
  question: [
    This question refers to the `AdvanceStage` method in the `Nest` class.

    Describe each of the conditions that must be met for the population of a nest to decrease (cull ants) during a simulation stage.
  ], 
  marks: 3
)
#aqa.question(
  question-number: 7,
  marks: none,
  question: [
    The `SetUpANestAt` method in the `Simulation` class can be called several times during the constructor. The first `Nest` is always placed at the same position in the grid.
  ]
)
#aqa.question(
  question-number: 7.1,
  question: [
    State the location of the first `Nest`.
  ], marks: 1
)
#aqa.question(
  question-number: 7.2,
  question: [
    The Skeleton Program is expanded to allow the user to choose the simulation's grid size.
    
    Programming the first `Nest` to a specific location could cause issues should the simulation's grid dimensions change.

    State the issue this would cause, as well as how the program could be modified to prevent this.

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
      edge(<Ant>,<WA>,marks:((inherit:"solid",size:30, fill:white,stroke:1pt),(inherit:"bar",size:10, fill:black,stroke:1pt,pos:0.39))),
      
    )]
    
    State the name of the relationship indicated by the arrow in *Figure 1*.
  ], marks: 1
)
#aqa.question(
  question-number: 8.2,
  question: [
    In the main part of the program, a new instance of the `Simulation` class is created.  \ \ 
    State the name of the special type of method that is automatically called to initialise an object when it is first created.
  ],
  marks: 1
)
#pagebreak()
#aqa.question(
  question-number: 8.3,
  question: [
    State the identifier of the *superclass* of the `Ant` class.
  ], 
  marks: 1
)
#aqa.question(
  question-number: 8.4,
  question: [
    The `Ant` class contains the static attribute `NextAntID`, which is initialised to `1`. The user then selects *Simulation 1* (which creates *one Queen and four Workers*). 
    
    State the value of `NextAntID` immediately *after* the simulation has been initialized.
  ],
  marks: 1
)
#aqa.question(
  question-number: 8.5,
  question: [
    The `Pheromone` class uses information hiding. 
    
    State the identifier of an attribute in the `Pheromone` class that is not directly accessible within the `Simulation` class.
  ],
  marks: 1
)

#aqa.question(
  question-number: 9.000001,
  question: [
    In the `Simulation` class, the `GetIndex` method contains the calculation #align(center)[ `(Row - 1) * NumberOfColumns + Column - 1` ] Explain the purpose of this calculation.
  ],
  marks: 2
)
#aqa.question(
  question-number: 10.000001,
  question: [
    State the identifier of a local variable used in the `Nest` class.
  ], marks: 1
)
#aqa.end-of-questions
#pagebreak()
#align(center)[
  #text(size:12pt)[
    #v(5mm)
  *There are no questions printed on this page*
  ]]