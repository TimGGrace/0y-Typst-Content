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
    paper-code: "Section C V2",
    numbering-style: "compsci"
  )
)[
  #front-cover()
  #question-page[
    #question(
      question-number: 6,
      question: [
        This refers to the `AdvanceStage` method in the `Nest` class.
      ], 
      marks: none
    )
    #question(
      question-number: 6.000001,
      question: [
        Describe each of the conditions that must be met for the population of a nest to decrease (cull ants) during a simulation stage.
      ], 
      marks: 3
    )
    #question(
      question-number: 7.1,
      question: [
        The `SetUpANestAt` method in the `Simulation` class is called several times during the constructor. The first `Nest` is always placed at the same point.\ \
        State the location of the first Nest.
      ], marks: 1
    )
    #question(
      question-number: 7.2,
      question: [
        Programming the first nest to a specific location could cause issues if the program is expanded to allow the user to choose the simulation's grid dimensions. \ \
        State the issue this would cause, as well as how the program could be modified to prevent this. \ \
        *You should not make any changes to the Skeleton Program when answering this question.*
      ], marks: 2
    )
    
    #question(
      question-number: 8.1,
      question: [
        *Figure 1* shows an incomplete class diagram describing the relationship between the `WorkerAnt` class and the `Ant` class.
        #align(center)[*Figure 1* \ 
        #diagram(
          label-size:30pt,
          node-outset:-5pt,
          node((0,0),rect(width:80pt,height:30pt,[`Ant`]),name:<Ant>),
          node((0.5,0.9),rect(width:80pt,height:30pt,[`WorkerAnt`]),name:<WA>),
          edge(<Ant>,<WA>,marks:((inherit:"solid",size:15, fill:white,stroke:1pt),(inherit:"bar",size:5, fill:black,stroke:1pt,pos:0.2))),
          
        )]
        
        State the type of relationship indicated by the arrow in *Figure 1*.
      ], marks: 1
    )
    #question(
      question-number: 8.2,
      question: [
        In the main part of the program, a new instance of the `Simulation` class is created.  \ \ 
        State the name of the special type of method that is automatically executed to initialize an object when it is first created.
      ],
      marks: 1
    )
    
  ] #question-page[
    #question(
      question-number: 8.3,
      question: [
        State the identifier of the *superclass* of the `Pheromone` class.
      ], 
      marks: 1
    )
    #question(
      question-number: 8.4,
      question: [
        The `Ant` class contains the static attribute `NextAntID`, which is initialized to `1`. If a user selects *Simulation 1* (which creates *1 Queen and 4 Workers*), state the value of `NextAntID` immediately *after* the simulation has been initialized.
      ],
      marks: 1
    )
    #question(
      question-number: 8.5,
      question: [
        The `Pheromone` class uses information hiding. State the identifier of one attribute in the `Pheromone` class that is not directly accessible within the `Simulation` class.
      ],
      marks: 1
    )
    
    #question(
      question-number: 9.000001,
      question: [
        In the Simulation class, the `GetIndex` method contains the following calculation:\ #align(center)[ `(Row - 1) * NumberOfColumns + Column - 1` ] Explain the purpose of this calculation regarding how the data structure is stored.
      ],
      marks: 2
    )
    #question(
      question-number: 10.000001,
      question: [
        State the identifier of a local variable used in the `GetCellDetails` method in the `Simulation` class.
      ], marks: 1
    )
  ]
]