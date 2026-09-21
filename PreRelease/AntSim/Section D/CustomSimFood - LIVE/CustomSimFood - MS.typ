#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 4,
      solution: [
        1. User is prompted for two values and those are stored appropriately.
        2. `SimulationParameters[4]` is set to the user-choice for number of nests.
        3. `SimulationParameters` has the user-choice for food quantity added to it.
        4. Selection structure within the `Simulation` class constructor correctly identifies if there is a 9th parameter, setting food to that. If there is not, 500 is used as normal.
      ]
    ),
    (
      number: 11.2,
      marks: 1,
      solution: [
        *Mark is for AO3 (evaluate)*
        
        *\*\*\* SCREEN CAPTURE \*\*\** \
        _Must match code from *11.1*. \
        Code for *11.1* must be sensible._ 

        Screen capture showing message displayed when `5` is entered followed by `4`, followed by the next message, then `24`, followed by the view of the entire simulation.
        #image("solution.png", height:15cm)
        Check that all food is a multiple of 24.
        #v(13cm)
      ]
    ),
    (
      number:11,
      marks: none,
      solution: [ ```cs case "5":
    Console.Write("Enter number of stages to advance by: ");
    int NumberOfStages = Convert.ToInt32(Console.ReadLine());
    ThisSimulation.AdvanceStage(NumberOfStages);
    Console.WriteLine($"Simulation moved on {NumberOfStages} stages{Environment.NewLine}");
    break;
```

*Simulation Class Constructor:*
```cs ...
  if (SimulationParameters.Count() == 9)
  {
      AddFoodToCell(Row, Column, SimulationParameters[8]);
  }
  else
  {
      AddFoodToCell(Row, Column, 500);
  }
}
```
]
    )
  )
)]