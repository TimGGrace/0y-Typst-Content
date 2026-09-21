#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 14.1,
        marks: 11,
        solution: [
          *All marks for AO3 (programming)* \ \
          
          1. Random location in grid generated within the main iterative structure;
          2. Iterative structure checks each ant; *A.* skips Queen ants
          3. Selection structure in loop checks location
          4. Checks queen;
          5. Selection to compare number of ants in cell with 0;
          6. Random from 1 to 5;
          7. Random number never greater than number of ants in cell.
          8. Iterative structure with correct conditions;
          9. Random ant is removed;
          10. Correct number of ants are removed; *R.* Same ant can be removed multiple times.
          11. Printout stating the number of ants eaten and the location.
          
        ]),
        (
          number: 14.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*
        
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *14.1*, including prompts on screen capture matching those in code. \ Code for *14.1* must be sensible._ 
          
          Screen capture(s) showing the user running 100 stages, and the simulation terminating early.
          #image("Screenshot.png", height:12cm)
          *Expected Solution*: \
          *Changes to `Simulation.AdvanceStage`:* \
          #text(10pt)[```cs
public void AdvanceStage(int NumberOfStages)
{
    for (int Count = 1; Count <= NumberOfStages; Count++)
    {

        int birdRow = RGen.Next(1, NumberOfRows + 1);
        int birdColumn = RGen.Next(1, NumberOfColumns + 1);

            List<Ant> AntsInCell = new List<Ant>();
            foreach (Ant A in Ants)
            {
                if (A.GetRow() == birdRow && A.GetColumn() == birdColumn && A.GetTypeOfAnt() !="queen")
                {
                    AntsInCell.Add(A);
                }
            }
        int antsToEat = 0;
        if (AntsInCell.Count() > 0)
        {
            antsToEat = rnd.Next(1, 6);
            if(antsToEat>AntsInCell.Count())
            {
                antsToEat = AntsInCell.Count();
            }

            for (int A = 1; A <= antsToEat; A++)
            {
                Ant AntToEat = AntsInCell[rnd.Next(0, AntsInCell.Count())];
                Ants.Remove(AntToEat);
                AntsInCell.Remove(AntToEat);
            }

        }
        Console.WriteLine($"The bird ate {antsToEat} ants at position {birdRow},{birdColumn}");

        List<Pheromone> PheromonesToDelete = new List<Pheromone>();

        ...
          ```]
        ]
      ),
    )
  )
]