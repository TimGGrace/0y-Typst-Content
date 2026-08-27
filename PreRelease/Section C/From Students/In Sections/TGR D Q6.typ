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

== TGR D Six
#aqa.question(
  question-number: 1,
  marks: 1,
  question:[
    State the identifier of a user-defined object that stores at least one instance of a user-defined class.
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