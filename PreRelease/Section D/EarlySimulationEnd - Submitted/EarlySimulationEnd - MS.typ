#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 14.1,
        marks: 11,
        solution: [
          *All marks for AO3 (programming)* \ \
          Marks 1 and 2 discuss the new `GetAntCount` method in the `Simulation` class.
          1. Method with correct interface;
          2. Correct number of Ants returned; *A.* Counting ants from the Ants list, or any alternative method;

          Marks 3 to 5 discuss changes to the `AdvanceStage` method within the `Simulation` class;
          3. Variable stored within `Simulation` to track the total number of stages passed;
          4. Stage counting variable initialised at `0`; *R.* if increased to 1 at the beginning of the first AdvanceStage.
          5. Selection structure at the beginning of an iteration that compares the number of ants to 0;
          6. If the number of ants is 0, the function returns; *A.* other methods of skipping remaining code, eg. `continue`
          7. In all other cases, variable to store number of stages is incremented by 1;

          Marks 8 to 11 discuss changes to the `Main` subroutine.
          8. Selection structure within menu selection case 5 that compares number of ants in simulation to 0;
          9. If this number is 0, regular printing in case 5 does not occur;
          10. Selection statement outside of menu selection, within iterative loop, that compares the number of ants remaining with 0. *R.* if within menu selection structure;
          11. Sensible print out and termination of iterative structure within the selection structure;
        ]),
        (
          number: 14.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*
        
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *14.1*, including prompts on screen capture matching those in code. \ Code for *14.1* must be sensible._ 
          
          Screen capture(s) showing the user running 100 stages, and the simulation terminating early.
          
          #v(13cm)
          *Expected Solution*: \
          *`GetAntCount` method:* \
          #text(10pt)[```cs
public int GetAntCount()
{
    return Ants.Count();
}
          ```]
          *Changes to `Simulation.AdvanceStage`:* \
          #text(10pt)[```cs
public void AdvanceStage(int NumberOfStages)
{
    for (int Count = 1; Count <= NumberOfStages; Count++)
    {
        if (GetAntCount() == 0) return;
        totalStageCount++;

        List<Pheromone> PheromonesToDelete = new List<Pheromone>();
        foreach (Pheromone P in Pheromones)
        ...
          ```]

          *Changes to `Main`:* \
          #text(10pt)[```cs
          ...
                  case "5":
            Console.Write("Enter number of stages to advance by: ");
            int NumberOfStages = Convert.ToInt32(Console.ReadLine());
            ThisSimulation.AdvanceStage(NumberOfStages);
            if (ThisSimulation.GetAntCount() != 0)
                Console.WriteLine($"Simulation moved on {NumberOfStages} stages{Environment.NewLine}");
            break;
    }
    if (ThisSimulation.GetAntCount() == 0)
    {
        Console.WriteLine($"Simulation terminated early at stage {ThisSimulation.totalStageCount}. No remaining Ants.");
        break;
    }
} while (Choice != "9");
Console.ReadLine();
...
          ```]
        ]
      ),
    )
  )
]