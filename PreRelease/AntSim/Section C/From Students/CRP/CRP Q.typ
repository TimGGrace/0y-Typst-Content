// == Set One
// #aqa.question(
//   question-number: 1,
//   marks: 1,
//   question:[
//   ]
// )
// #aqa.question(
//   question-number: 2,
//   marks: 1,
//   question:[
//   ]
// )
// #aqa.question(
//   question-number: 3,
//   marks: 1,
//   question:[
//   ]
// )
// #aqa.question(
//   question-number: 4,
//   marks: 2,
//   question: [
//   ]
// )
// #aqa.question(
//   question-number: 5,
//   marks: 4,
//   question: [
//   ]
// )

#import "../../../../Templates/lib.typ": *

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "Pre Release Section D",
    materials: ( "a computer",),
    instructions: (""),
    date: "Summer 2026",
    time: "",
    time-allowed: "NA",
    advice: (""),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "Pre Release Questions",
    numbering-style: "compsci",
    hide-borders: true,
    
  )
)

== Set One
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier of a user-defined method which takes two integer inputs and returns a list of integers.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier of a virtual method in the `Ant` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State an identifier of a method that takes a `Cell` as its only parameter and returns an integer.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    The `Ant` class contains several protected attributes. Explain the difference between *protected* and *private* attributes.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Explain the steps in the `AdvanceStage` subroutine within the `Nest` class.
  ]
)

== Set Two
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier of a class which inherits from the `Ant` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    The `Simulation` class' constructor takes a list with identifier `SimulationParameters` as a parameter. 
    
    State an advantage of using a list rather than multiple integer variables.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    Explain the conditions that will cause the `GetIndexOfNeighbourWIthStrongestPheromone` method to return -1.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    In the `AdvanceStage` subroutine in the `Simulation` class, there is nested iteration. 
    
    State the purpose of the first two iterative structures within `AdvanceStage`.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    In the ChooseCellToMoveTo subroutine in the WorkerAnt class, describe the process that the ant uses to determine where it should move.
  ]
)

== Set Three
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the name of an identifier for a local variable in a method in the `Entity` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    The `Ant` class inherits from another class. State the name of this class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of a method within the `Ant` class that is overriden by one of its child classes.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    The `Simulation` Class makes use of encapsulation. Define encapsulation.
  ]
)