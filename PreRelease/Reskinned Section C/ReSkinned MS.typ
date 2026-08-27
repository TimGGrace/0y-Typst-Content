#import "../../Templates/ms-template.typ": *

#mark-scheme[ \
== $quad$2023 Paper 1 Section C
  #cs-ms-table(
    questions: (
      (
        number: 7.1,
        marks: 2,
        solution: [
          #grid(columns:(0.2fr,1fr,0.2fr),
        [],table(columns:2,table.cell(fill:black.lighten(80%))[*Statement*],table.cell(fill:black.lighten(80%))[*True/False*],
        table.cell(fill:black.lighten(80%))[Uses indefinite iteration],text(red)[True],
        table.cell(fill:black.lighten(80%))[Uses nested iteration],text(red)[False],
        table.cell(fill:black.lighten(80%))[Uses nested selection],text(red)[False],
        table.cell(fill:black.lighten(80%))[Uses one or more global variables],text(red)[False],
        table.cell(fill:black.lighten(80%))[Uses one or more local variables],text(red)[True],
        table.cell(fill:black.lighten(80%))[Uses one or more named constants],text(red)[False],)) \
        *A.* any suitable alternative to True/False \
        *Mark as follows:* \
        *1 mark*: any four rows correct \
        *2 marks*: all rows correct]
      ),
),)
#cs-ms-table(
  questions:(
    (
        number: 8,
        marks: 2,
        solution: [
          *Marks are for AO1 (understanding)* \
Virtual methods can be overridden by the derived class \// \
virtual methods do not have to be overridden \// \
abstract methods must be overridden by the derived class; \ \
Virtual methods have an implementation/body \// \
virtual methods contain code (with functionality) (in the base class) \// \
abstract methods do not contain an implementation/body \// \
abstract methods contain no code (with functionality) (in the base class) \// \
abstract methods only contain a declaration (in the base class); \ \
Abstract methods can only be declared in abstract classes \// \
virtual methods can be declared in abstract and non-abstract classes; \ \
*Max 2*
        ]
      ),
  )
)
#cs-ms-table(
  questions: (
    (
      number: 10.1,
      marks: 1,
      solution: [
        (The first iterative structure) loops through the possible #underline[changes] to the given Row. \ \
        *R.* Answers which indicate that it iterates through possible Row values.
      ]
    ),
    (
      number: 10.2,
      marks: 1,
      solution: [
        `NOT (RowDirection == 0 AND ColumnDirection == 0)` \ \
        *R.* `(RowDirection != 0 AND ColumnDirection != 0)`
      ]
    ),
  )
)
#pagebreak()
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 1,
      solution: [
        `GetDetails`; \
        `GetAreaDetails`; \
        `GetCellDetails`; \ \
        *Max 1* \ \
        *R.* if spelled incorrectly. \
        *R.* if any additional code \
        *I.* case
      ]
    ),
    (
      number: 11.2,
      marks: 1,
      solution: [
        `Nest` \ \
        *R.* if spelled incorrectly. \
        *R.* if any additional code \
        *I.* case
      ]
    ),
  )
)
#cs-ms-table(
  questions: (
    (
      number: 12,
      marks: 1,
      solution: [
        It indicates that no surrounding cell has any Pheromones; \ \ 
        *R.* Answers that suggest Pheromones can have a strength of `0`.
      ]
    ),
  )
)
]
#pagebreak()
#mark-scheme[ \
== $quad$2022 Paper 1 Section C
#cs-ms-table(
  questions: (
    (
      number: 6.1,
      marks: 1,
      solution: [
        Inheritance;
      ]
    ),
    (
      number: 6.2,
      marks: 1,
      solution: [
        `Ant`;
      ]
    ),
    (
      number: 6.3,
      marks: 2,
      solution: [
        *Marks are for AO1 (understanding)* \ \
        Public means it can be accessed / seen outside of the class it is in; \ \
        Protected means it can be accessed / seen in the class it is in and in any subclasses \// protected means it can be accessed / seen in the class it is in and in any classes derived / inheriting from it; 
      ]
    ),
    (
      number: 6.4,
      marks: 1,
      solution: [
        *Mark is for AO1 (knowledge)* \ \
        When a derived class / subclass has a different implementation for a method / function / subroutine to the class it inherits from / from the base class;
      ]
    )
  )
)
#cs-ms-table(
  questions: (
    (
      number: 8.1,
      marks: 1,
      solution: [
        `AddFoodToCell`;\ \
        *R.* if spelled incorrectly. \
        *R.* if any additional code \
        *I.* case        
      ]
    ),
    (
      number: 8.2,
      marks: 1,
      solution: [
        `MaxFoodSize` / `StartingFoodInCell` / `StartingFood` \ \
        *A.* any suitable identifier that indicates it is the starting value of food in a non-nest cell
      ]
    ),
    (
      number: 8.3,
      marks: 1,
      solution: [`1` or `2`;]
    ),
    (
      number: 8.4,
      marks: 1,
      solution: [Food cannot be placed on a nest, so must occur after nests have been placed;]
    )
  )
)
#cs-ms-table(
  questions: (
    (number: 9, marks: 1, solution: [4;]),
  )
)
#cs-ms-table(
  questions: (
    (number: 10, marks: 3, solution: [
      `1|2|3|4|5|9` \// `[123459]`;;; \ \
      If not 3 marks:
      *1 mark*: an expression that identifies a single digit;
      *1 mark*: an expression that identifies *only* the digits 123459;
      
  ]),
  )
)
]
#pagebreak()
#mark-scheme[ \
== $quad$2021 Paper 1 Section C
#cs-ms-table(
  questions: (
    (
      number: 9.1,
      marks: 1,
      solution: [
        `WorkerAnt` and `QueenAnt` both need access to the value;
      ]
    ),
    (
      number: 9.2,
      marks: 2,
      solution: [
        When all Ants have been killed due to lack of food; \
        But there are still Pheromones that are decaying;
      ]
    ),
    (
      number: 9.3,
      marks: 1,
      solution: [
        *Mark is for AO1 (understanding)* \ \
        A method shared (up and down the inheritance hierarchy chain) but with each class / method implementing it differently \ \// \
        A single interface is provided to entities/objects of different classes / types \ \// \
        Objects of different classes / types respond differently to the use of a common interface / the same usage \ \// \
        Allowing different classes to be used with the same interface
        \ \// \
        The ability to process objects differently depending on their class / type;
      ]
    ),
  )
)
#cs-ms-table(
  questions: (
    (
      number: 11,
      marks: 2,
      solution: [
        The function compares the ant's Row and Column to the Nest's Row and Column; \
        The Ants Row and Column are changed #underline[by one] to get closer to the Nest's Row and Column;
      ]
    ),
  )
)
]
#mark-scheme[ \
  == $quad$2020 Paper 1 Section C
  #cs-ms-table(
    questions: (
      (
        number: 6.1,
        marks: 1,
        solution: [
          No neighbours have any Pheromones; \ \ *R.* Answers that suggest Pheromones can have a strength of `0`.
        ]
      ),
    )
  )
  #cs-ms-table(
    questions: (
      (
        number: 7.1,
        marks: 1,
        solution: [
          `GetDetails`; \
          `GetAreaDetails`; \
          `GetCellDetails`; \ \
          *Max 1* \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case
        ]
      ),
      (
        number: 7.2,
        marks: 1,
        solution: [
          `Worker`; \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case 
        ]
      ),
      (
        number: 7.3,
        marks: 1,
        solution: [
          *Mark is for AO1 (understanding)* \ \
          Private attributes can only be accessed by the class/object they belong to whereas protected attributes can also be accessed by any classes that inherit from the class they belong to; \ \
          *NE.* private attribute can only be accessed by the class/object they belong to whereas protected attributes can be accessed by others classes/objects

        ]
      )
    )
  )
  #cs-ms-table(
    questions: (
      (
        number: 8.1,
        marks: 1,
        solution: [`Simulation`;]
      ),
      (
        number: 8.2,
        marks: 1,
        solution: [`Ant`;]
      ),
      (
        number: 8.3,
        marks: 1,
        solution: [`Entity`;]
      ),
      (
        number: 8.4,
        marks: 1,
        solution: [`Aggregation`;]
      ),
    )
  )
  #cs-ms-table(
    questions: (
      (
        number: 9,
        marks: 4,
        solution: [
          Once per ant to cull; \
          A random index from the Ants list is generated; \
          It compares that Ant's nest location with the current nest location; \
          If the ant is not from that nest, the index is regenerated until a valid ant is chosen; *R.* Answers which indicate this regeneration only occurs once.
        ]
      ),
    )
  )
]
#pagebreak()
#mark-scheme[ \
  == $quad$2019 Paper 1 Section C
  #cs-ms-table(
    questions: (
      (
        number: 7.1,
        marks: 1,
        solution: [
          No neighbours have any Pheromones; \ \ *R.* Answers that suggest Pheromones can have a strength of `0`.
        ]
      ),
      (
        number: 7.2,
        marks: 2,
        solution: [
          By comparing the generated row and column; \
          against every Nest;
        ]
      ),
      (
        number: 7.3,
        marks: 1,
        solution: [
          O(n) \// Linear;
        ]
      ),
      (
        number: 7.4,
        marks: 1,
        solution: [There are no pheromones belonging to that ant #underline[in the same cell]\;]
      ),
      (
        number: 7.5,
        marks: 2,
        solution: [
          As ants do not check the ownership of pheromones; \
          You only need to store the strongest pheromone in a cell;
        ]
      ),
      (
        number: 7.6,
        marks: 1,
        solution: [
          The number of ants within the list can change during the simulation;
        ]
      )
    )
  )
  #cs-ms-table(
    questions: (
      (
        number: 9.1,
        marks: 1,
        solution: [`Main`; \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case ]
      ),
      (
        number: 9.2,
        marks: 2,
        solution: [`GetCellReference`; \ `GetChoice`; \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case ]
      ),
      (
      number: 9.3,
      marks: 1,
      solution: [
        `GetDetails`; \
        `GetAreaDetails`; \
        `GetCellDetails`; \ \
        *Max 1* \ 
        *R.* if spelled incorrectly. \
        *R.* if any additional code \
        *I.* case
      ]
      ),
      (
        number: 9.4,
        marks: 1,
        solution: [
          Local variables have more limited scope; \
          Global variables exist throughout the entire program; \
          Local variables only exist in a part/block/subroutine of the program; \
          Local variables can only be accessed in a part/block/subroutine of the program; \
          Global variables can be accessed from any part of the program; \ 
          *Max 1 mark*
        ]
      ),
      (
        number: 9.5,
        marks: 1,
        solution: [
Modularisation of a program \// Allows reuse of subroutines \// Less chance of side-effects; \ \
*A.* advantages resulting from modularisation eg easier to test each subroutine
independently
        ]
      )
    )
  )
]
#mark-scheme[ \
  == $quad$2018 Paper 1 Section C
  #cs-ms-table(
    questions: (
      (
        number: 6.1,
        marks: 1,
        solution: [
          `ToInt32` \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case ]
      ),
      (
        number: 6.2,
        marks: 1,
        solution: [
          `Worker` \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case
        ]
      ),
      (
        number: 6.3,
        marks: 2,
        solution: [
          No need to store pointers; \
          so more memory efficient \// faster look-ups; \
        ]
      ),
      (
        number: 6.4,
        marks: 1,
        solution: [
          `Ant`; \ `Nest`; \ `Pheromone`; \ `WorkerAnt`; \ `QueenAnt`;\ \
          *Max 1* \ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case
        ]
      )
    )
  )
]
#pagebreak()
#mark-scheme[ \
== $quad$2017 Paper 1 Section C
  #cs-ms-table(
    questions: (
      (
        number: 8.1,
        marks: 3,
        solution: [
      #table(columns:(1fr,1fr),
  table.cell(fill:black.transparentize(80%))[*Feature*],
  table.cell(fill:black.transparentize(80%))[*Is present in Figure 11? (Yes/No)*],
table.cell(fill:black.transparentize(80%))[Inheritance],text(red)[Yes],
table.cell(fill:black.transparentize(80%))[Aggregation],text(red)[No],
table.cell(fill:black.transparentize(80%))[Protected Method],text(red)[No],
table.cell(fill:black.transparentize(80%))[Virtual Method],text(red)[Yes]) 
*A.* alternative indicators instead of Yes/No eg. Y/N \ \
1 Mark for 2 correct rows;\
2 Marks for 3 correct rows;\
3 Marks for fully correct table;
        ]
      ),
      (
        number: 8.2,
        marks: 1,
        solution: [
          `WorkerAnt` \// `QueenAnt`;\ \
          *R.* if spelled incorrectly. \
          *R.* if any additional code \
          *I.* case
        ]
      ),
      (
        number: 8.3,
        marks: 2,
        solution: [
          A protected attribute can be accessed (within its class and) by derived class instances / subclasses; \ \
          A private attribute can only be accessed within its class;

        ]
      ),
      (
        number: 8.4,
        marks: 2,
        solution: [
          `TypeOfAnt` (is a protected attribute so) can only be accessed within the `Ant` class; \ \
          means the way `TypeOfAnt` is represented can be modified without having to change any other objects that interact with `Ant` \
          *NE.* without having to change other
code \// makes it easier to reuse / inherit from the Warren class (as there is a well defined interface); \ \
*A.* this allows data/properties to be modified in a controlled way
        ]
      ),
      (
        number: 8.5,
        marks: 2,
        solution: [
          When spawning new ants, a Nest uses the stored value `NumberOfQueens` rather than counting the number of queens; \ \
          Without changing this, dead Queens would appear to produce more ants;
        ]
      )
    )
  )
  #pagebreak()
  #cs-ms-table(
    questions: (
      (
        number: 8.6,
        marks: 3,
        solution: [
          `FireCell = Class(Cell)` \
          ` Private:` \
          `   SpreadRate: Integer` \
          `   BurnTime: Integer` \
          ` Public:` \
          `   Function BurnedDown()` \
          `   Function GetDetails() (Override)` \
          `   Function GetSpreadRate()` \
          `   Function GetBurnTime()` \ \
          *Information for examiner:* \
          Accept answers that use different notations, so long as meaning is clear. \ \
          *Mark as follows:* \
          *1 mark*: for correct header including name of class and parent class \
          *1 mark*: for redefining the `GetDetails` method A. Override not stated \
          *1 mark*: for defining the two additional attributes, with appropriate data types and identified as private *R.* if other attributes included \
          *1 mark*: for defining methods needed to read the two additional attributes, and an `BurnedDown` method, all identified as being public *R.* if other methods included \ \
          *I.* missing brackets \
          *I.* additional Get/Set methods \
          *I.* constructor method \
          *A.* any suitable alternatives used instead of Function or Procedure keywords \
          *A.* any suitable alternatives for data types eg float or double instead of real \
          *R.* do not award mark for declaring new methods if any of the functions have the same name as the variables 
        ]
      ),
    )
  )
]
