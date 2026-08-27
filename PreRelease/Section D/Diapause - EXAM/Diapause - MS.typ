#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 12.1,
        marks: 7,
        solution: [
          *All marks for AO3 (programming)* \ \
          *Marks 1 and 2 refer to modifications to the main program* 
          1. New main menu option with sensible message; *A.* suitable alternative message
          2. Main selection structure updated to call ThisSimulation.Diapause appropriately;

          *Marks 3 to 5 refer to modifications to the Simulation class*
          3. Method added to `Simulation` with the correct interface; *I.* case and minor typos
          4. Iterative structure repeats once for each `Ant` in `Ants`;
          5. Call to `GoHome` method for each ant; *A.* Call is only made for WorkerAnts

          *Marks 6 and 7 refer to modifications to the Ant class*
          6. `GoHome` method with right interface in `Ant` *R.* just for WorkerAnt *A.* in WorkerAnt and QueenAnt
          7. Ant Row and Column set to NestRow and NestColumn appropriately.
        ]),
        (
          number: 14.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*
        
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *12.1*, including prompts on screen capture matching those in code. \ Code for *12.1* must be sensible._ 
          
          Screen capture(s) showing ants away from the nest and *all* ants later in the nest.
          #image("Screenshot 1.png", height:12cm)
          #image("Screenshot 2.png", height:12cm)
          *Expected Solution*: \
          *Changes to `DisplayMenu`:* \
          #text(10pt)[```cs
static void DisplayMenu()
{
    Console.WriteLine();
    Console.WriteLine("1. Display overall details");
    Console.WriteLine("2. Display area details");
    Console.WriteLine("3. Inspect cell");
    Console.WriteLine("4. Advance one stage");
    Console.WriteLine("5. Advance X stages");
    Console.WriteLine("6. Diapause");
    Console.WriteLine("9. Quit");
    Console.WriteLine();
    Console.Write("> ");
}
          ```]

          *Changes to `Main`* \
          #text(10pt)[```cs
            ...          
            case "6":
                ThisSimulation.Diapause();
                break;
            ...
          ```]
          #v(3cm)
          *Diapause Method in Simulation class* \
          #text(10pt)[```cs
    public void Diapause()
    {
        foreach(Ant A in Ants)
        {
            A.GoHome();
        }
    }

          ```]

          *GoHome Method in Ant class* \
          #text(10pt)[```cs
public void GoHome()
{
    Row = NestRow;
    Column = NestColumn;
}

          ```]
        ]
      ),
    )
  )
]