#import "../../Templates/lib.typ": *
#let inheritance = ((inherit:"solid",size:12, fill:white,stroke:1pt),(inherit:"bar",pos:0.3,size:4))

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "Reskinned Section C Questions",
    materials: ( "A copy of the Skeleton Program","A copy of the Preliminary Material"),
    instructions: ("Answer *all* questions.",
      "Show all rough work for this paper."),
    date: "Summer 2026",
    time: "",
    time-allowed: "NA",
    advice: (""),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "Section C",
    numbering-style: "compsci",
    hide-borders: true,
  )
)

#aqa.front-cover();

== $quad$2023 Paper 1 Section C
#aqa.question(
  question-number: 7,
  question: [
    This question is about the `Main` method in the `Program` class.
  ],
  marks: none,
)
#aqa.question(
  question-number: 7.1,
  question: [
    Complete the unshaded cells of *Table 4* to show which statements are true and which statements are false about the `Main` method. \
    #align(center)[*Table 4*]
    #grid(columns:(0.2fr,1fr,0.2fr),
    [],table(columns:2,table.cell(fill:black.lighten(80%))[*Statement*],table.cell(fill:black.lighten(80%))[*True/False*],
    table.cell(fill:black.lighten(80%))[Uses indefinite iteration],[],
    table.cell(fill:black.lighten(80%))[Uses nested iteration],[],
    table.cell(fill:black.lighten(80%))[Uses nested selection],[],
    table.cell(fill:black.lighten(80%))[Uses one or more global variables],[],
    table.cell(fill:black.lighten(80%))[Uses one or more local variables],[],
    table.cell(fill:black.lighten(80%))[Uses one or more named constants],[],))
    Copy the contents of the unshaded cells in *Table 4* into the table in your #aqa.EAD.
  ],
  marks: 2,
)
#aqa.question(
  question-number: 8,
  question: [
    The *Skeleton Program* uses overriding. When a derived class overrides a method from the base class, the base class method could be either a virtual method or an abstract method. \ \
    Describe *two* differences between a virtual method and an abstract method.
  ],
  marks: 2,
)
#aqa.question(
  question-number: 10,
  question: [
    This question is about the `GetIndicesOfNeighbours` method in the  `Simulation` class.
  ],
  marks: none,
)
#aqa.question(
  question-number: 10.1,
  question: [
    Explain why the first iteration structure is needed.
  ],
  marks:1
)
#aqa.question(
  question-number: 10.2,
  question: [
    *Figure 6* shows a pseudo-code representation of part of the `GetIndicesOfNeighbours` method. \
    #align(center)[*Figure 6* \ #text(14pt)[`NOT(RowDirection == 0) OR NOT(ColumnDirection == 0)`]]
    Rewrite the code in *Figure 6* so that it has the same functionality but uses `AND` and `NOT` Boolean operations only, instead of the `OR` and `NOT` Boolean Operators.
  ],
  marks:1
)
#aqa.question(
  question-number: 11,
  question: [
  ],
  marks: none
)

#aqa.question(
  question-number: 11.1,
  question: [
    State the name of an identifier for a user-defined method that uses string concatenation.
  ],
  marks: 1,
)

#aqa.question(
  question-number: 11.2,
  question: [
    State the name of an identifier for a class that has a constructor that takes three integer parameters.
  ],
  marks: 1,
)

#aqa.question(
  question-number: 12,
  question: [
    Explain why a value of `-1` is used in the `GetIndexOfNeighbourWithStrongestPheromone` method in the `Simulation` class.
  ],
  marks: 1,
)
#pagebreak()
== $quad$2022 Paper 1 Section C
#aqa.question(
  question-number: 6,
  question: [ 
  An incomplete class diagram of the user-defined classes for part of the *Skeleton Program* is shown in *Figure 8*. \ \
  #align(center)[*Figure 8* \ \
  
    #diagram(
      node-outset:-5pt,
      node((0,0),rect(width:150pt,height:50pt,circle(fill:black,text(fill: white,size:20pt)[1]))),
      node((0.5,0.9),rect(width:150pt,height:50pt,circle(fill:black,text(fill: white,size:20pt)[3]))),
      node((-0.5,0.9),rect(width:150pt,height:50pt,circle(fill:black,text(fill: white,size:20pt)[2]))),

      edge((0,0),(0.25,0.5),stroke:1pt,corner:left,marks:inheritance),
      edge((0,0),(-0.25,0.5),stroke:1pt,corner:right,marks:inheritance),
      edge((0.25,0.5),(0.5,1),stroke:1pt,corner:right),
      edge((-0.25,0.5),(-0.5,1),stroke:1pt,corner:left)
      
    )]
  ],
  marks:none
)
#aqa.question(
  question-number: 6.1,
  question: [
    State the type of relationship the diagram in *Figure 8* shows between the class indicated by *1* and the class indicated by *2*.
  ],
  marks: 1
)
#aqa.question(
  question-number: 6.2,
  question: [
    State the identifier of the class indicated by *1* in *Figure 8*.
  ],
  marks: 1
)
#aqa.question(
  question-number: 6.3,
  question: [
    Explain the difference between an attribute that has a public specifier and an attribute that has a protected specifier.
  ],
  marks:2
)
#aqa.question(
  question-number:6.4,
  question: [
    In object-oriented programming, what is meant by overriding?
  ],
  marks:1
)
#pagebreak()
#aqa.question(
  question-number:8,
  question: [
    An incomplete hierarchy diagram of the user-defined subroutines in part of the Skeleton Program is shown in *Figure 11*. \ \
  #align(center)[*Figure 11* \ \
    #diagram(
      node-outset:-5pt,
      node((0,0),rect(width:120pt,height:50pt,text(size:18pt)[`SetUpANestAt`])),
      node((1,0),rect(width:120pt,height:50pt,circle(fill:black,text(fill: white,size:20pt)[1]))),
      node((1,0.9),rect(width:120pt,height:50pt,text(size:18pt)[`GetIndex`])),
      

      edge((0,-0.4),(0.5,-0.7),"-", stroke:1.5pt,corner:right),
      edge((1,-0.4),(0.5,-0.7),"-", stroke:1.5pt,corner:left),
      edge((2,-0.7),(1,-0.7),"-", stroke:1.5pt,),
      edge((1,0),(1,1),"-",stroke:1.5pt)

    )]
  ],
  marks:none
)
#aqa.question(
  question-number:8.1,
  question: [
    Which identifier should replace *1*?  
  ],
  marks:1
)
#aqa.question(
  question-number: 8.2,
  question: [
    The number `500` is used within the constructor for the `Simulation` class. It would be better to use a named constant with an identifier that describes the purpose of the constant. \ \
    Suggest a suitable identifier for the named constant.
  ],marks:1
)
#aqa.question(
  question-number: 8.3,
  question: [
    State the one value that will always be stored within `Count` variable when the constructor for `Simulation` is called.
  ], marks:1
)
#aqa.question(
  question-number:8.4,
  question: [
    Explain why the iterative structure calling `AddFoodToCell` within the constructor for `Simulation` occurs after all calls to `SetUpNestAt`.
  ],
  marks:1
)
#aqa.question(
  question-number:9,
  question: [
    How many classes in the Skeleton Program inherit from the `Entity` class?
  ], marks:1
)
#aqa.question(
  question-number:10,
  question: [
    The user must enter `1`, `2`, `3`, `4`, `5` or `9` when selecting from the menu. \ \
    Write a regular expression that would match a single allowed character. \ \
    You should *not* make any changes to the Skeleton Program to answer this question.
  ]
)
#pagebreak()
== $quad$2021 Paper 1 Section C
#aqa.question(
  question-number:9,
  question: [This question is about the different types of ant in the simulation.], marks: none
)
#aqa.question(
  question-number:9.1,
  question: [
    Explain why the `NextAntID` attribute in the `Ant` class could *not* have been made a private attribute.
  ], marks:1
)
#aqa.question(
  question-number:9.2,
  question: [
    Describe the circumstances when there could be no ant pieces in the grid but more stages would still alter the simulation state.
  ], marks:2
)
#aqa.question(
  question-number:9.3,
  question: [
    In object-oriented programming, what is meant by polymorphism?
  ], marks: 1
)
#aqa.question(
  question-number: 11,
  question: [
    This question is about the `ChooseCellToMoveTo` method within the `WorkerAnt` class. \ \
    Explain how this subroutine determines the next best position for an ant to move to when the ant *has at least one food*.
  ],
  marks:2
)
#pagebreak()
== $quad$2020 Paper 1 Section C
#aqa.question(
  question-number:6,
  question:[This question is about the `GetIndexOfNeighbourWithStrongestPheromone` method within the `Simulation` class.],
  marks:none
)
#aqa.question(
  question-number:6.1,
  question:[
    What does a return value of `-1` indicate?
  ],
  marks:1
)
#aqa.question(
  question-number: 7,
  question: [
    This question is about the `Simulation` class.
  ], marks: none
)
#aqa.question(
  question-number: 7.1,
  question: [
    State the identifier of a method within the `Simulation` class that uses string concatenation.
  ], marks: 1
)
#aqa.question(
  question-number: 7.2,
  question: [
    State the name of a local variable within the `SetUpANestAt` method.  
  ], marks: 1
)
#aqa.question(
  question-number: 7.3,
  question: [
    The `Simulation` class contains some protected attributes. \ \ Explain the difference between protected and private attributes.
  ], marks: 1
)
#pagebreak()
#let (a,b,c,d,e,f) = ((0,0),(-0.5,0.8),(0.5,0.8),(-1,1.8),(-0.2,1.8),(0.8,1.8))
#aqa.question(
  question-number: 8,
  question: [
    *Figure 4* shows a partially completed class diagram that describes the relationships between some of the classes used in the Skeleton Program. \ \
    #align(center)[
      *Figure 4* \
      #diagram(
        node-outset:-5pt,
        node(a,rect(width:100pt,height:30pt,text(size:18pt)[`(1)`])),
        node(b,rect(width:100pt,height:30pt,text(size:18pt)[`(2)`])),
        node(c,rect(width:100pt,height:30pt,text(size:18pt)[`(3)`])),
        node(d,rect(width:100pt,height:30pt,text(size:18pt)[`(4)`])),
        node(e,rect(width:100pt,height:30pt,text(size:18pt)[`(5)`])),
        node(f,rect(width:100pt,height:30pt,text(size:18pt)[`(6)`])),

        edge(f,b,stroke:1pt,marks:(
                        (inherit:"solid",size:12, fill:white,stroke:1pt),(inherit:"bar",pos:0.13,size:4))
        ),
        edge(f,c,stroke:1pt,marks:(
                        (inherit:"solid",size:12, fill:white,stroke:1pt),(inherit:"bar",pos:0.3,size:4))
        ),
        edge(b,d,stroke:1pt,marks:(
                        (inherit:"solid",size:12, fill:white,stroke:1pt),(inherit:"bar",pos:0.25,size:4))
        ),
        edge(b,e,stroke:1pt,marks:(
                        (inherit:"solid",size:12, fill:white,stroke:1pt),(inherit:"bar",pos:0.3,size:4))
        ),
        edge(a,b,stroke:1pt,marks:(
                        (inherit:"solid",size:10, fill:black),(inherit:"solid",pos:0.38,size:10))
        ),
        edge(a,c,stroke:1pt,marks:(
                        (inherit:"solid",size:10, fill:black),(inherit:"solid",pos:0.4,size:10))
        ),
        
        )
      
    ]
  ],
  marks: none
)
#aqa.question(
  question-number: 8.1,
  question: [
    State the identifier of the class that has been labelled *(1)* in *Figure 4*.
  ], marks: 1
)
#aqa.question(
  question-number: 8.2,
  question: [
    State the identifier of the class that has been labelled *(2)* in *Figure 4*.
  ], marks: 1
)
#aqa.question(
  question-number: 8.3,
  question: [
    State the identifier of the class that has been labelled *(6)* in *Figure 4*.
  ], marks: 1
)
#aqa.question(
  question-number: 8.4,
  question: [
    Aggregation, composition and inheritance are three different types of relationship that can exist between classes. \ \
    Which of these three types of relationship is not shown in *Figure 4*?
  ],
  marks: 1
)
#aqa.question(
  question-number: 9,
  question: [
    This question is about the `AdvanceStage` method in the `Nest` class. \ \
    Explain how the program decides which `Ant` should be removed when there is not enough food for all ants.
  ],
  marks: 4
)
#pagebreak()
== $quad$2019 Paper 1 Section C
#aqa.question(
  question-number: 7,
  question: [
    The `Simulation` class uses several different subroutines to .
  ],
  marks:none
)
#aqa.question(
  question-number: 7.1,
  question: [
    Explain what it means if a value of `0` is returned by `GetStrongestPheromoneInCell`.
  ],
  marks: 1
)
#aqa.question(
  question-number: 7.2,
  question: [
    How does the constructor for `Simulation` know that it cannot place a food within a randomly selected cell?
  ], 
  marks: 2
)
#aqa.question(
  question-number: 7.3,
  question: [
    What is the time complexity of the algorithm used in `GetNumberOfAntsInCell`?  
  ], marks: 1
)
#aqa.question(
  question-number: 7.4,
  question: [
    The method `UpdateAntsPheromoneInCell` compares the location of each `Pheromone` with the location of the `Ant` passed as a parameter. \ \
    Under what circumstances will the `UpdateAntsPheromoneInCell` method create a new Pheromone?
  ], marks: 1
)
#aqa.question(
  question-number: 7.5,
  question: [
    Explain why the `UpdateAntsPheromoneInCell` subroutine does not need to check the ownership of the `Pheromone` found in a cell. You should reference the intended behavior of `Ant`s.
  ],
  marks: 2
)
#aqa.question(
  question-number: 7.6,
  question: [
    Explain why a dynamic data structure has been used to store the `Ant`s within the `Simulation` class, rather than a static data structure.
  ], marks: 1
)
#pagebreak()
#let (a,b,c,d) = ((0,0),(-1,0.8),(0,0.8),(1,0.8))
#aqa.question(
  question-number: 9,
  question: [
    *Figure 7* shows an incomplete hierarch chart for part of the Skeleton Program. \
    #align(center)[
      *Figure 7* \
      #diagram(
        node-outset: -5pt,
        edge-stroke: 1pt,
        node(a,rect(width:100pt,height:30pt,text(size:18pt)[`(1)`])),
        node(b,rect(width:100pt,height:30pt,text(size:18pt)[`DisplayMenu`])),
        node(c,rect(width:100pt,height:30pt,text(size:18pt)[`(2)`])),
        node(d,rect(width:100pt,height:30pt,text(size:18pt)[`(3)`])),
        edge(a,b), edge(a,c), edge(a,d)
      )
    ]
  ],
  marks: none
)
#aqa.question(
  question-number: 9.1,
  question: [
    What should be written in the box labelled `(1)`?
  ], 
  marks: 1
)
#aqa.question(
  question-number: 9.2,
  question: [
    What should be written in the boxes labelled `(2)` and `(3)`?
  ], 
  marks: 2
)
#aqa.question(
  question-number: 9.3,
  question: [
    State the identifier of a method within the `Simulation` class that uses concatenation.
  ],
  marks: 1
)
#aqa.question(
  question-number: 9.4,
  question: [
    Explain the difference between a local variable and a global variable.
  ],
  marks: 1
)
#aqa.question(
  question-number: 9.5,
  question: [
    State *one* reason why it is considered to be good practice to use local variables.
  ],
  marks: 1
)
#pagebreak()
== $quad$2018 Paper 1 Section C
#aqa.question(
  question-number: 6.1,
  question: [
    State the name of an identifier for a built-in function used in the Skeleton Program that has a string parameter and returns an integer value.
  ], marks: 1
)
#aqa.question(
  question-number: 6.2,
  question: [
    State the name of an identifier for a local variable in a method in the `SetUpANestAt` method within the `Simulation` class.
  ], marks: 1
)
#aqa.question(
  question-number: 6.3,
  question: [
    The `Simulation` class implements a dynamic list to store the grid. A static array could have been used instead. \ \
    Explain why a static array is often a better choice of data structure than a dynamic list.
  ], marks: 2
)
#aqa.question(
  question-number: 6.4,
  question: [
    It could be argued that the `Cell` class should store any objects that are in that `Cell` on the `Grid`. \ \
    State one user-defined object that `Cell` would have to store in order to implement this.
  ], marks: 1
)
#pagebreak()
== $quad$2017 Paper 1 Section C
#aqa.question(
  question-number: 8,
  question: [
    The class diagram in *Figure 11* is a partial representation of the relationships between some of the classes in the *Skeleton Program*. \ \
    *Note*: In *Figure 11* a + sign denotes a public attribute/method.
    #align(center)[
      *Figure 11* \
      #diagram(
        node-stroke: 1pt,
        edge-stroke:1pt,
        node((0,0),name:<E>, shape: rect)[
          *Entity* \ 
          #align(left)[
            `# Row: integer` \
            `# Column: integer` \
            `# ID: integer` \ \
            `+ InSameLocation() ` \
            _`+ GetDetails()`_
        ]],
        node((0,1), name:<A>)[
          *Ant* \
          #align(left)[
            `# NestRow: integer` \
            `# TypeOfAnt: string`
          ]
        ],
        edge(<E.south>,<A>, marks:((inherit:"solid",size:12, fill:white,stroke:1pt),(inherit:"bar",pos:0.34,size:4)))
      )
    ]
  ], marks: none
)
#aqa.question(
  question-number: 8.1,
  question: [
    Write *Yes* or *No* in the unshaded cells in *Table 5* to identify if the given feature is present within the class diagram shown in *Figure 11*.
  ], marks: 3
)
#grid(columns:(0.2fr,1fr,0.1fr),
[],
[#align(center)[*Table 5*]
  #table(columns:(1fr,1fr),
table.cell(fill:black.transparentize(80%))[*Feature*],
table.cell(fill:black.transparentize(80%))[*Is present in Figure 11? (Yes/No)*],
table.cell(fill:black.transparentize(80%))[Inheritance],[],
table.cell(fill:black.transparentize(80%))[Aggregation],[],
table.cell(fill:black.transparentize(80%))[Protected Method],[],
table.cell(fill:black.transparentize(80%))[Virtual Method]) \ Copy the contents of the unshaded cells in *Table 5* into the table in your Electronic Answer Document.])
#aqa.question(
  question-number: 8.2,
  question: [
    State the name of an identifier for a subclass of `Ant` in the *Skeleton Program*
  ], marks: 1
)
#aqa.question(
  question-number: 8.3,
  question: [
    Explain the difference between a protected attribute and a private attribute.
  ], marks: 1
)
#aqa.question(
  question-number: 8.4,
  question: [
    Within the `Ant` class there is a attribute `TypeOfAnt` and a method `GetTypeOfAnt`. \ \
    Explain the need for the `GetTypeOfAnt` method *and* explain why this approach is favoured in object-oriented programming.
  ], marks: 2
)
#aqa.question(
  question-number: 8.5,
  question: [
    During the simulation, ants will die when their nest runs out of food. This is handled by the `AdvanceStage` method within the `Nest` class. \ \
    Explain the need to reduce `NumberOfQueens` if a `QueenAnt` dies.
  ], marks: 2
)
#aqa.question(
  question-number: 8.6,
  question: [
    Part of the class definition for `Cell` has been represented in *Figure 12*. \
    #align(center)[
      *Figure 12* \ \
      `Cell = Class(Entity)` \
      ` Protected:        ` \
      `       AmountOfFood: Integer` \
      ` Public:           ` \
      `            Function GetAmountOfFood()` \
      `       Function GetDetails()` \
      `              Procedure UpdateFoodInCell()` \
      `End Class          `
    ] \
    A new cell is to be introduced into the simulation. This cell is the `FireCell`, which represents a spreading fire on the ground. The class `FireCell` is to be a subclass of the `Cell` class. When a `FireCell` is inspected it should display all the information shown for a normal cell plus the additional information stored about a `FireCell`. \ \
    A `FireCell` has the following additional attributes:
    - `SpreadRate`: stores a value that represents the probability of a cell that is next to a `FireCell` becoming a `FireCell` as well.
    - `BurnTime`: stores a value that represents how many stages the fire has been burning for.
    \
    A `FireCell` has additional methods including:
    - `BurnedDown()`: returns `True` if the fire cell has been burning for more than `5` stages of the simulation. \ \
    Write the class definition for `FireCell`, using similar notation to that used in *Figure 12*. You are *not* expected ot make any changes to the Skeleton Program.
  ]
)