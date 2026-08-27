#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 13.1,
        marks: 11,
        solution: [
          *All marks for AO3 (programming)* \ \
          Marks 1 to 6 discuss changes to the `RottingCell` class.
          1. `RottingCell` class which inherits from `Cell`;
          2. Constructor for `RottingCell` with correct interface;
          3. Constructor for `RottingCell` correctly sets `Row`, `Column` and `Decay`; *A.* alternative names for `Decay`.
          4. `RottingCell` contains an override to `AdvanceStage`;
          5. `AdvanceStage` within `RottingCell` correctly adjusts the food in the cell;
          6. `RottingCell` contains an override to `GetDetails` with appropriate printout; *I.* present/missing call to `base.GetDetails`

          Marks 7 to 10 discuss changes to the `Simulation` constructor.
          7. `Cell` containing food is identified;
          8. Randomly selects a `Cell` that contains food;
          9. New `RottingCell` created, with the same quantity of food as the selected `Cell`; *R.* cell may have different quantities of food (eg. hard-coded 500)
          10. The selected `Cell` within `Grid` is replaced with the `RottingCell`; *R.* `RottingCell` is placed at any other index than the selected `Cell`'s.

          Mark 11 refers to the method `AdvanceStage` within the `Simulation` class.
          11. Iterative structure calls `AdvanceStage` for each cell; *R.* only calls `AdvanceStage` for `RottingCell`s
        ]),
        (number: 13.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*
        
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *13.1*, including prompts on screen capture matching those in code. \ Code for *13.1* must be sensible._ 
          
          Screen capture(s) showing all food cells within the simulation, and after one stage, the food cell has lost an appropriate quantity of food.
          #image("screenshot 1.png")
          #image("screenshot 2.png")
          #image("screenshot 3.png", height:50%)
          *Expected Solution*: \
          *new RottingCell class:*
          ```cs class RottingCell : Cell
{
    int Decay;
    public RottingCell(int StartRow, int StartColumn, int Decay) : base(StartRow, StartColumn)
    {
        this.Decay = Decay;
    }
    public override void AdvanceStage(List<Nest> Nests, List<Ant> Ants, List<Pheromone> Pheromones)
    {
        UpdateFoodInCell(-Decay);
    }
    public override string GetDetails()
    {
        return $"{base.GetDetails()}This cell decays food by {Decay} each stage.{Environment.NewLine}";
    }
}
```
#v(13cm)
*Modifications to Simulation Constructor:*
```cs ...
List<int> FoodCells = new List<int>();
for(int i = 0; i < Grid.Count();i++)
{
    if (Grid[i].GetAmountOfFood()>0)
    {
        FoodCells.Add(i);
    }
}
int c = FoodCells[RGen.Next(0,FoodCells.Count())];
int f = Grid[c].GetAmountOfFood();
Grid[c] = new RottingCell(Grid[c].GetRow(), Grid[c].GetColumn(), 10);
AddFoodToCell(Grid[c].GetRow(), Grid[c].GetColumn(),f);
``` \ \
*Modifications to Simulation AdvanceStage:*
```cs ...
foreach(Cell c in Grid)
{
    c.AdvanceStage(Nests, Ants, Pheromones);
}

``` \ \
*Alternative Simulation Constructor:*
```cs ...
int pos = 0;
do {
  pos = RGen.Next(0, Grid.Count());
} while (Grid[pos].GetAmountOfFood() == 0);

Cell toReplace = Grid[pos];

Grid[pos] = new RottingCell(toReplace.GetRow(), 
                            toReplace.GetColumn(), 
                            10);

Grid[pos].AddFoodToCell(toReplace.GetRow(), 
                        toReplace.GetColumn(), 
                        toReplace.GetAmountOfFood());
```
        ]
      ),
    )
  )
]