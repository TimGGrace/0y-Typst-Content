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
    paper-code: "Section C V1",
    numbering-style: "compsci"
  )
)[
  #front-cover()
  #question-page[
    #question(
      question-number: 6.000001,
      question: [
        Complete the unshaded cells of the *Table 1* below to show which statements are true and which are false about the `AdvanceStage` method within the `Simulation` class.
        #figure(
          caption:[*Table 1*],
          [
            #table(columns:2,
          table.cell(fill:black.lighten(80%))[Statement],
        table.cell(fill:black.lighten(80%))[True/False],
        table.cell(fill:black.lighten(80%), align: left)[Uses definite iteration],[],
        table.cell(fill:black.lighten(80%), align: left)[Uses nested iteration],[],
        table.cell(fill:black.lighten(80%), align: left)[Uses exception handling],[],
        table.cell(fill:black.lighten(80%), align: left)[Calls methods from other classes],[],)
          ]
        )
      ]
    )
    #question(
      question-number: 7,
      question: [
        The `Entity` class contains the attribute `Row`. This attribute has a *protected* access modifier. Explain the difference between a *protected* attribute and a *private* attribute.
      ], marks: 2
    )
    #question(
      question-number: 7.1,
      question: [
        In the `Ant` class, the `AdvanceStage` method is defined in a way that allows it to be redefined in the `WorkerAnt` and `QueenAnt` classes.  \ \
        In Object-Oriented Programming, what is the term for a method in a child class providing a specific implementation of a method that is already provided by its parent class?
      ], marks: 2
    )
    #question(
      question-number: 7.2,
      question: [
        In the `Simulation` class, the `AdvanceStage` method is responsible for the pathfinding for each `Ant`.  \ \
        Explain why the method checks if the `Ant` is carrying food before it checks for pheromones.
      ], marks: 2
    )
    
  ]
  #question-page[
    #question(
      question-number: 8,
      question: [
        *Figure 1* shows an incomplete class diagram for the Ant Simulation.
        #align(center)[*Figure 1* \  \    
        #diagram(
          label-size:30pt,
          node-outset:-5pt,
          node((0,0),rect(width:80pt,height:30pt,[`A`]),name:<A>),
          node((0.5,0.9),rect(width:80pt,height:30pt,[`Cell`]),name:<Cell>),
          node((-0.5,0.9),rect(width:80pt,height:30pt,[`Ant`]),name:<Ant>),
          node((-1.5,0.9),rect(width:80pt,height:30pt,[`Pheromone`]),name:<Pher>),
          node((1.5,0.9),rect(width:80pt,height:30pt,[`Nest`]),name:<Nest>),

          node((-1,1.8),rect(width:80pt,height:30pt,[`B`]),name:<B>),
          node((0,1.8),rect(width:80pt,height:30pt,[`WorkerAnt`]),name:<WA>),

          edge(<A>,<Cell>,marks:((inherit:"solid",size:15, fill:black,stroke:0pt),(inherit:"solid",size:15, fill:black,stroke:0pt,pos:0.23))),
          edge(<A>,<Ant>,marks:((inherit:"solid",size:15, fill:black,stroke:0pt),(inherit:"solid",size:15, fill:black,stroke:0pt,pos:0.21))),
          edge(<A>,<Pher>,marks:((inherit:"solid",size:15, fill:black,stroke:0pt),(inherit:"solid",size:15, fill:black,stroke:0pt,pos:0.078))),
          edge(<A>,<Nest>,marks:((inherit:"solid",size:15, fill:black,stroke:0pt),(inherit:"solid",size:15, fill:black,stroke:0pt,pos:0.11))),
          edge(<Ant>,<B>,marks:((inherit:"solid",size:15, fill:white,stroke:1pt),(inherit:"bar",size:5, fill:black,stroke:1pt,pos:0.2))),
          edge(<Ant>,<WA>,marks:((inherit:"solid",size:15, fill:white,stroke:1pt),(inherit:"bar",size:5, fill:black,stroke:1pt,pos:0.2))),
          
        )]
//NOTE: Box A is the parent of Cell, Ant, Nest, and Pheromone. \ \ Box B inherits from Ant.
      ],
      marks: none
    )
    #question(
      question-number: 8.1,
      question: [
        State the identifier of the class labelled `A`.
      ],
      marks: 1
    )
    #question(
      question-number: 8.2,
      question: [
        State the identifier of the class labelled `B`.
      ],
      marks: 1
    )
    #question(
      question-number: 8.3,
      question: [
        The `Simulation` class contains a collection of `Cell` objects called `Grid`.  \ \
        State the type of relationship (inheritance, aggregation, or composition) that exists between the `Simulation` class and the `Cell` class.
      ], marks: 1
    )
    #question(
      question-number: 8.4,
      question: [
        In the `Nest` class, the value `50` is used in a calculation regarding the creation of new ants. It would be better to use a named constant. \ \ Suggest a suitable identifier for this constant.
      ],
      marks: 1
    )

    #question(
      question-number: 8.5,
      question: [
        The `WorkerAnt` class overrides the `GetDetails` method found in the `Ant` class. Describe how the return value of `GetDetails` differs between a generic `Ant` object and a `WorkerAnt` object.
      ],
      marks: 1
    )
    #question(
      question-number: 9.000001,
      question: [
        The `GetCellReference` method accepts `Row` and `Column` as parameters. These parameters are passed *by reference* rather than *by value*. \ \ 
        Explain the effect of passing these parameters by reference.
      ], marks: 2
    )
    #question(
      question-number: 10.000001,
      question: [
        The `GetIndicesOfNeighbours` method returns a list of integers. \ \ State the significance of the value `-1` when it appears in this list.
      ], marks: 1
    )
  ]
]