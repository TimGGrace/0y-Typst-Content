#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 13.1,
        marks: 11,
        solution: [
          *All marks for AO3 (programming)* \ \
          Marks 1 to 3 discuss changes to the `Simulation` class.
          1. `Simulation` class stores values for total stages and oldest ant age;
          2. `AntCount` method within `Simulation` class with correct interface;
          3. `AntCount` correctly returns the number of `Ant`s stored within the `Simulation`;
          
          Marks 4 to 7 discuss changes to the `AdvanceStage` method within the `Simulation` class.
          4. AdvanceStage increments the stage counter at the beginning of a stage;
          5. Age of oldest ant is found and variable updated appropriately; *A.* performed within the `Ant` iterative structure.
          6. Selection statement comparing the number of Ants to 0;
          7. If there are no ants, correct message is displayed and no further stages are completed;

          Marks 8 to 10 discuss changes to `Main` method.
          8. Selection statement compares `Simulation`'s `AntCount` to 0;
          9. If there are no ants, correct message is displayed;
          10. If there are no ants, no further iterations occur;
          
          Mark 11 refers to the new method within the `Ant` class.
          11. Method called `GetStages` with correct interface, which returns `Stages`;
        ]),
        (number: 13.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*
        
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *13.1*, including prompts on screen capture matching those in code. \ Code for *13.1* must be sensible._ 
          
          Screen capture(s) showing the user attempting to advance `100` stages.
          Simulation states that the simulation has ended early, and states the age of the oldest ant.
          #image("solution.png", height:6.5cm)
          #v(13cm)
          *Expected Solution*: \
          *Modifications to Main:*
          ```cs  
          case "5":
            Console.Write("Enter number of stages to advance by: ");
            int NumberOfStages = Convert.ToInt32(Console.ReadLine());
            ThisSimulation.AdvanceStage(NumberOfStages);
            Console.WriteLine($"Simulation moved on {NumberOfStages} stages{Environment.NewLine}");
            break;
        }
        if(ThisSimulation.AntCount() <=0)
        {
            Console.WriteLine($"Age of the oldest ant was {ThisSimulation.AgeOfOldestAnt}");
            break;
        }
    } while (Choice != "9");
    Console.ReadLine();
}


```\ \ 
*New method in Ant Class:*
```cs
public int GetStages() {
    return Stages;
}
```#v(13cm)
*Modifications to Simulation:*
```cs 
public int AgeOfOldestAnt = 0;
 public int totalStages = 0;
 public int AntCount()
 {
     return Ants.Count();
 }
 public void AdvanceStage(int NumberOfStages)
 {
     
     for (int Count = 1; Count <= NumberOfStages; Count++)
     {
         totalStages++;
         if(Ants.Count()<=0)
         {
             Console.WriteLine($"Simulation has no ants after stage {totalStages}");
             break;
         }

    …

    foreach (Ant A in Ants)
    {
        A.AdvanceStage(Nests, Ants, Pheromones);
        if (A.getStages() > oldestAnt) 
        {
          oldestAnt = A.getStages();
        }

```
        ]
      ),
    )
  )
]