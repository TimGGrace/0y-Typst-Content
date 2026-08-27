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
    State the identifier of a method within the `Simulation` class which takes no parameters and returns a string.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    The constructor for the `Simulation` class takes a list of integers for its parameter.

    State the index within this list used to indicate the quantity of food stored in each `Nest` at the beginning of the simulation.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the time complexity of the `GetIndiciesOfNeighbours` method.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Within the `AdvanceStage` method in the `Simulation` class, `Pheromones` with `0` strength are added to the list `PheromonesToDelete`, rather than being deleted immediately.

    State two issues that could occur when deleting an element from a list whilst iterating through that list.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Explain the purpose of the `Entity` class and give an example of how it is utilised in the `Cell` class.
  ]
)
#pagebreak()
== Set Two
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier for a user-defined method within the `Simulation` class that accepts a single `Cell` as its only parameter, and returns an integer.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    Explain the purpose of `GetIndex` method within the `Simulation` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the number of `Cell`s within the grid in Simulation `3`.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    State the purpose for the first selection statement within the `AdvanceStage` method within the `Nest` class.
    
    Explain why this selection statement is not necessary.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    State the changes that would need to be made in the Skeleton Program to add a new type of Ant which:
    - before it moves, destroys any nest it comes in contact with only if it is not their nest.
    - moves one square randomly each turn,
    - ignores pheromones,
    - cannot pick up food.
    
    *You should not make any changes to the Skeleton Program when answering this question.*
  ]
)
#pagebreak()
== Set Three
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier for a local variable within the `SetUpANestAt` method in the `Simulation` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier for a user-defined method within the `Simulation` class that takes 4 integers as its parameters and returns a string.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of a user-defined method within the `Ant` class that is overriden by at least one of its children.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    The program uses the concept of encapsulation within its class structure.
    
    Define encapsulation.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the operation of the `GetIndexOfNeighbourWithStrongestPheromone` method.
  ]
)

== Set Four
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the *smallest* value that the method `ChooseRandomNeighbour` could return.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the identifier for a local variable within `ChooseCellToMoveTo` method in the `WorkerAnt` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of a user-defined method within the `Simulation` class which takes in two integers as parameters and returns an list of integers.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Describe the function of the selection structure within the `GetNumberOfPheromonesInCell` method.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the chances you would need to make to the program to allow the user to choose the starting amount of food in each nests after the simulation has been chosen.
    
    *You should not make any changes to the Skeleton Program when answering this question.*
  ]
)

== Set Five
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier for a user-defined method that takes three integers as parameters in the `Simulation` class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the name of a user-defined method that uses string concatenation in the class `Simulation` class.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of the parent class for `Cell`.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Explain the purpose of the first selection structure within the `ChooseCellToMoveTo` method within the `Ant` class.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    Describe the process within the `Simulation` class's constructor for generating a `Nest` *after* the first `Nest` has been created.
  ]
)
#pagebreak()
== Set Six
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier of a user-defined object that stores at least one instance of a user-defiend class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    State the smallest value that the `ChooseRandomNeighbour` method could return.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    State the identifier of a method within the `Entity` class that is overriden within the `Nest` class.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    Within the `WorkerAnt` class's `ChooseCellToMoveTo` method, the following check is performed.
    #aqa.center[`IndexOfNeighbourWithStrongestPheromone == -1`]
    Describe the condition necessary for this statement to be *true*, and state how the `Ant` will then move.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    This question is about the `AdvanceStage` method in the `Simulation` class.

    If an `Ant` is not carrying food (though is capable of carrying food), and is in a cell with food, it will attempt to pick up some food. It does this by repeatedly generating a quantity of food to collect until a valid quantity of food is generated. It will then pick up that much food.

    The check for valid food quantities could be made more efficient by removing a logical statement.

    Determine which logical statement could be removed without altering the logic of the check as a whole, and explain why.
  ]
)
#pagebreak()
== Set Seven
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier for a user-defined parent class.
  ]
)
#aqa.question(
  question-number: 2,
  marks: 1,
  question:[
    Write down the maximum number of ants that could be culled in a single nest in a stage.
  ]
)
#aqa.question(
  question-number: 3,
  marks: 1,
  question:[
    Write down the amount of food a `QueenAnt` consumes per stage.
  ]
)
#aqa.question(
  question-number: 4,
  marks: 2,
  question: [
    *Figure 1* shows a visualisation of part of a `Grid` in an active simulation.
    #aqa.center[
      *Figure 1*
      #table(columns:range(3).map(_=>11em),inset:10pt,
      [`(2, 2)`\ `500 food`],[`(2, 3)`],[`(2, 4)`\ `NEST`],
      [`(3, 2)`],[`(3, 3)`\ `ANT`],[`(3, 4)`],
      [`(4, 2)`\ `Pheromones: 2`],[`(4, 3)`],[`(4, 4)`\ `NEST`])
    ]
    The following information is given about `ANT`:
    - The `ANT` is carrying `20` units of food.
    - The `ANT`'s nest is located at `(2, 4)`.

    State the location of the cell that the ant will move to, and explain why.
  ]
)
#aqa.question(
  question-number: 5,
  marks: 4,
  question: [
    If, during the regular operation of the simulation, a `Nest` has no food and only `QueenAnt`s, it will not attempt to cull them, despite there being no food.

    Describe the changes you would need to make to the Skeleton Program to ensure that this is corrected.

    *You should not make any changes to the Skeleton Program when answering this question.*
  ]
)
