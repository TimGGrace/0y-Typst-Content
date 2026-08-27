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

== CRP Two
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
