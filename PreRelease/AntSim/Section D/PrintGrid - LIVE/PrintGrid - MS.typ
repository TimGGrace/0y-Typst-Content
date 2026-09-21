#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 12.1,
      marks: 7,
      solution: [
        Marks 1 and 2 are for modifications to the main program.
        1. Modified `DisplayMenu` method to provide correct message, and `Main` selection structure modified to accept `6`.
        2. Should the user enter `6`, the `GridDisplay` method is called. *R.* additional effects.

        Marks 3 to 7 are for the new `GridDisplay` method.
        3. Method with the correct interface.
        4. Iterative structure that loops through each row/column;
        5. Iterative structure that loops through ever grid position;
        6. Iterative structure to detect at least one priority item;
        7. Selection structure to handle prioritisation of items; *A.* equivalent, eg. skipping remaining loop-code.
      ]
    ),
    (
      number: 12.2,
      marks: 1,
      solution: [
        *Mark is for AO3 (evaluate)*
        
        *\*\*\* SCREEN CAPTURE \*\*\** \
        _Must match code from *12.1*. \
        Code for *12.1* must be sensible._ 

        Screen capture showing simulation 3 being loaded, 5 stages advanced, then the printed grid after the user enters 6.
        #image("solution.png", height:14cm)
        
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
*Modified Menu*
```cs static void DisplayMenu()
{
    Console.WriteLine();
    Console.WriteLine("1. Display overall details");
    Console.WriteLine("2. Display area details");
    Console.WriteLine("3. Inspect cell");
    Console.WriteLine("4. Advance one stage");
    Console.WriteLine("5. Advance X stages");
    Console.WriteLine("6. Grid Display");
    Console.WriteLine("9. Quit");
    Console.WriteLine();
    Console.Write("> ");
}
```
#v(13cm)
*Simulation Class Constructor:*
```cs ...
public void GridDisplay()
{
    for (int row = 0; row < NumberOfRows; row++)
    {
        for (int column = 0; column < NumberOfColumns; column++)
        {
            Cell currentCell = Grid[GetIndex(row+1, column+1)];

            Nest N = GetNestInCell(currentCell);
            if (N != null)
            {
                Console.Write('N');
                continue;
            }

            bool printedAnt = false;
            foreach (Ant a in Ants)
            {
                if (currentCell.InSameLocation(a))
                {
                    Console.Write('A');
                    printedAnt = true;
                    break;
                }
            }
            if (printedAnt) continue;

            if (currentCell.GetAmountOfFood() > 0)
            {
                Console.Write('F');
                continue;
            }

            bool printedPheromone = false;
            foreach (Pheromone p in Pheromones)
            {
                if (currentCell.InSameLocation(p))
                {
                    Console.Write('P');
                    printedPheromone = true;
                    break;
                }
            }
            if (printedPheromone) continue;

            Console.Write('.');
        }
        Console.WriteLine();
    }
    Console.WriteLine();
}
```
]
    )
  )
)]