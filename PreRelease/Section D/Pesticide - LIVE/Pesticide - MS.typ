#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 12.1,
      marks: 7,
      solution: [
        *All marks for AO3 (programming)*
        
        1. Modified menu with suitable message for option `6` and additional case for handling an input of `6`;
        2. User is required to enter two rows and two column, \ `Pesticide` is called with these values; *A.* equivalent
        3. Method within `Simulation` suitable interface;
        4. Iterative structure that goes through each Ant;
        5. Selection structure within the iteration that compares the Ant's position to the area given;
        6. Ants within area added to a list for removal;
        7. Ants selected are removed *after* the previous iterative structure; \ *A.* equivalent via modification of loop variable.
        *Max 6* if code contains errors \
        
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

        Screen capture showing no `Ant` is left in the Nest  `(2, 4)`
      ]
    ),
    (
      number: 12,
      marks: none,
      solution: [
        *Typical Solution:* \
        *Main Program modification:*
        ```cs 
        static void Main()
        {
           ...
            do
            {
                DisplayMenu();
                Choice = GetChoice();
                switch (Choice)
                {
                  ...
      
                    case "6":
                      int StartR = 0, StartC = 0, EndR = 0, EndC = 0;
                      GetCellReference(ref StartR, ref StartC);
                      GetCellReference(ref EndR, ref EndC);
                      ThisSimulation.Pesticide(StartR, StartC, EndR, EndC);
                      break;
                }
            } while (Choice != "9");
            Console.ReadLine();
        }
        
        static void DisplayMenu()
        {
            Console.WriteLine();
            Console.WriteLine("1. Display overall details");
            Console.WriteLine("2. Display area details");
            Console.WriteLine("3. Inspect cell");
            Console.WriteLine("4. Advance one stage");
            Console.WriteLine("5. Advance X stages");
            Console.WriteLine("6. Apply Pesticide");
            Console.WriteLine("9. Quit");
            Console.WriteLine();
            Console.Write("> ");
        }```

        *Pesticide Method*
        ```cs
public void Pesticide(int startRow, int startCol, int endRow, int endCol)
{
    List<Ant> AntsToCull = new List<Ant>();
    foreach (Ant a in Ants)
    {
        if (a.GetRow() >= startRow && a.GetRow() <= endRow 
        && a.GetColumn() >= startCol && a.GetColumn() <= endCol)
        {
            AntsToCull.Add(a);
        }
    }
    foreach (Ant a in AntsToCull)
    {
        Ants.Remove(a);
    }
}
        ```
      ]
    )
  )
)
]