#import "../../../Templates/Template.typ": *

#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#Comp
Load up AntSim and complete:
- Inheritance chart,
- UML diagrams for each class.

== Let's walk through advancing a stage in Simulation
#notes
1. For loop that controls how many stages are advanced
2. For loop to iterate through each pheromone advancing a stage.
3. For loop to remove all pheromones that need deleting
4. For loop to advance each Ant a stage
5. For loop to advance each Nest a stage

== 1. For loop that controls how many stages are advanced
#notes
Number of stages passed through as a parameter.

== 2. For loop to iterate through each pheromone advancing a stage.
#notes
`Nests`, `Ants` and `Pheromones` passed through as parameters, although none are used. 

The strength is reduced by `PheremoneDecay` and then zeroed if this makes it negative.

In `Simulation` Pheromones with zero strength are added to the `PheromonesToDelete` list

== 3. For loop to remove all pheromones that need deleting
#notes
Each pheromone in the list `PheromonesToDelete` is deleted from the `Pheromones` list

== 4. For loop to advance each Ant a stage
#notes
#text(22pt)[- Each ant is advanced a stage
  - This increments Stages
- The cell this ant is on is found
- If: the ant has food and is in its nest then the food is transferred 
- Else if: the cell has food and the ant has none then the ant takes some
- Else:
-   If the ant has food then update the pheromone in the cell
-   Then: ant chooses where to move to and then moves if it is a worker ant]

== 5. For loop to advance each Nest a stage
#notes
#only(1)[
- If there are no ants in the nest then return
- Iterate through each ant and if they are in the nest then count them. Each queen takes 10 food, otherwise 2 foods.
- Reduce the food by the count
- Then…
]
#only(2)[
  #text(22pt)[- If the food level is zero and there are ants then increment `AntsToCull`
- If the food level is less than the number of ants then increment `AntsToCull`
- If the food level is less than 5 \* number of ants then increment `AntsToCull`
  - For loop to kill the correct number of ants
- Else: 
  - For each queen chance to spawn a new ant. Chance to be a queen or worker. 

*NOTE:* AntsInNestCount doesn’t count QueenAnts.]]

#MWBQ(title:"Section C Quiz",
([*Describe* a difference between an abstract method and virtual method
],[Virtual methods can be (but do not have to be) overridden by the derived class

Virtual methods (may) have an implementation

Abstract methods can only be declared in abstract class
]),
([
  This question is about the Main subroutine.

Explain the purpose of the first selection structure.

],[
  To choose the simulation with the required parameters. 
]),(
  [
   This question is about the Main subroutine.

Explain the purpose of the iteration structure.
 
  ],
  [
    It repeats to allow the user to continue making choices

  ]
), (
  [
    This question is about class Cell.

Give the identifier of a subroutine that returns an int.

  ],
  [
    `GetAmountOfFood`
  ]
),
(
  [
    This question is about class Ant.

    Give the identifier of a subroutine that has two parameters.
],
  [
    `ChooseCellToMoveTo`
  ]
),(
  [Explain the difference between an attribute that has a public specifier and an attribute that has a protected specifier. 
],[
  Public means it can be accessed outside of the class it is in

Protected means it can only be accessed in the class it is in and in any subclasses

]
), (
  [How many classes in the Skeleton Program inherit from the `Ant` class?],[2]
),
(
  [In object oriented programming, describe what is meant by polymorphism?],[A method shared but with each class implementing it differently]
),
([This question refers to class Simulation.

State the identifier of a local variable within AdvanceStage.
],[
  `PheromonesToDelete` \
`CurrentCell` \
`FoodObtained` \

]), (
  [This question refers to the class Simulation.

Explain what it means if a value of -1 is returned by
GetIndexOfNeighbourWithStrongestPheromone
],[There are no neighbouring Cells with a Pheromones in it. 
])


)

== Now you get to make your own \ guide to the game
#GClass
On classroom there is “L229 - Guide to AntSim” that has been started with the subheadings you might like to fill in

Try to do your best to explain how each of these sections works. And any others you think appropriate. 

== Changes to Code
#Comp
Let’s start with some basic validation…

Use Ctrl+F and search for ReadLine.

Everywhere that the user enters something add some basic validation to ensure that the user enters something sensible.
