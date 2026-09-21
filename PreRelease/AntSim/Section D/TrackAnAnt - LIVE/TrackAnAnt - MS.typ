#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 14.1,
      marks: 11,
      solution: [
        1. Option 6 correctly displayed within DisplayMenu *and* method is called if user enters 6;

        *Marks 2 - 11 are for the TrackAnt method*
        2. User is asked for a value, which is then stored in a variable;
        3. Indefinite iteration until valid Ant ID is entered;
        4. After validating Ant ID, user is asked for a number of stages and the response is stored in a variable;
        5. Definite iteration to confirm Ant ID is valid; *A.* alternative method for verifying ant ID
        6. Boolean value to store whether the ant is alive or dead;
        7. Iterative structure that runs once for the desired number of iterations;
        8. Iterative structure to find the Ant, by AntID;
        9. Selection structure to compare Ant ID with chosen Ant ID within the iterative structure;
        10. Correct display out in all cases; *A.* additional outputs after ant death.
        11. Iterative structure correctly terminates if the ant has died;
        
      ]
    ),
    (
      number: 14.2,
      marks: 1,
      solution: [
        *Mark is for AO3 (evaluate)*
        
        *\*\*\* SCREEN CAPTURE \*\*\** \
        _Must match code from *14.1*. \
        Code for *14.1* must be sensible._ 

        Screen capture showing Ant ID 30 being rejected, followed by Ant 3 being shown until death. *A. valid tracking of Ant 3 for 50 stages. This is rare*
        #image("Screenshot 1.png")
        #image("Screenshot 2.png")
        #v(13cm)
      ]
    ),
    (
      number:14,
      marks: none,
      solution: [
        *TrackAnt method:*
        ```cs  public void TrackAnt()
 {
     int a = 0;
     bool validID = false;
     while(!validID)
     {
         Console.WriteLine("Enter an ID of an ant to track");
         a = int.Parse(Console.ReadLine());
         foreach(Ant ant in Ants)
         {
             if(a==ant.GetID())
             {
                 validID = true;
             }
         }
     }
     Console.WriteLine("Enter a number of stages to advance");
     int choice = int.Parse(Console.ReadLine());
     bool antDead = false;
     for(int i = 0; i < choice; i++)
     {
         AdvanceStage(1);
         if(antDead == false)
         {
             bool antAlive = false;

             foreach (Ant ant in Ants)
             {
                 if (ant.GetID() == a)
                 {
                     antAlive = true;
                     Console.WriteLine($"Ant {ant.GetID()} is in position ({ant.GetRow()},{ant.GetColumn()})");
                     Console.WriteLine(ant.GetDetails());
                 }
             }
             if (antAlive == false)
             {
                 Console.WriteLine($"Ant {a} died");
                 antDead = true;
             }
         }
     }
 }

        ```
        #v(3cm)
        *Modified Main:*\
        ```cs 
        ...
        case "6":
            ThisSimulation.TrackAnt();
            break;
    }
} while (Choice != "9");
```

*Modified DisplayMenu:*\
```cs static void DisplayMenu()
{
    Console.WriteLine();
    Console.WriteLine("1. Display overall details");
    Console.WriteLine("2. Display area details");
    Console.WriteLine("3. Inspect cell");
    Console.WriteLine("4. Advance one stage");
    Console.WriteLine("5. Advance X stages");
    Console.WriteLine("6. Track 1 ant over X stages");
    Console.WriteLine("9. Quit");
    Console.WriteLine();
    Console.Write("> ");
}
```

        ]

    )
  )
)]