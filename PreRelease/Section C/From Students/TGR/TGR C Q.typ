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
    State the default quantity of food to be added to a cell.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    What is returned by the method `GetStrongestPheromoneInCell` if there are no pheromones within the cell?
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the purpose of the `InSameLocation` method within the `Entity` class.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Explain the operation of the `GetNumberOfAntsInCell` method.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the steps taken to decide where an `Ant` should move in a single stage.
  ]
)

== Set Two
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    Name a user-defined method that takes no arguments and returns a string.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier of a class that inherits from the `Ant` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier for a method within the `Ant` class that is overriden by a class which inherits from it.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Explain the difference between a virtual and an abstract method.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the changes that would be necessary to the `ChooseCellToMoveTo` method to allow ants to move two cells at a time if, and only if, they are following a pheromone trail.

    *You should not make any modifications to the Skeleton Program when answering this question*
  ]
)
#pagebreak()
== Set Three
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the return type of the `InSameLocation` method within the `Entity` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier of a local variable within the `GetDetails` method within the `Simulation` class which stores an integer.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the Pheromone Decay Rate for Simulation 2.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Describe the difference between public and protected methods.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the operation of the `GetIndicesOfNeighbours` method within the `Simulation` class.
  ]
)

== Set Four
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier of a method within the `Simulation` class that takes in multiple integer arguments and returns an integer.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the minimum value returned by the `GetStrongestPheromoneInCell` method.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of a local variable in the `GetNumberOfAntsInCell` method;
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Within the `AdvanceStage` method in the `Nest` class, there is a List called PheronomesToDelete. 
    
    Explain why a list has been used to store objects for later deletion.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the changes you would need to make to the Skeleton Program so that the user can choose the number of starting food for a nest, having chosen the specific simulation.

    *You should not make any modifications to the Skeleton Program when answering this question*
  ]
)
