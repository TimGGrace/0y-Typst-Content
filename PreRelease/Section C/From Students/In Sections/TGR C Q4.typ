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

== TGR C Four
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
    Within the `AdvanceStage` method in the `Simulation` class, there is a List called PheromonesToDelete. 
    
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
